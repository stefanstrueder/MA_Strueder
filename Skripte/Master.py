# Script to create data sets for prediction.
# Resulting data sets will be generated as .arff files.
# Usage of external libraries MySQL Connector and Pydriller.
# By Stefan Strueder, 2020.

from datetime import datetime
from pydriller import RepositoryMining
import arff
import collections
import mysql.connector
import re

#########################
##### CONFIGURATION #####
#########################

# MySQL-Database information #
host = "ENTER_HERE"
user = "ENTER_HERE"
password = "ENTER_HERE"
database = "ENTER_HERE"

# Data extraction #
software = "ENTER_HERE"
access = "ENTER_HERE" # "local" or "extern"
path = "ENTER_HERE" # path to git directory
repo = "ENTER_HERE" # URL to git repository
release = "ENTER_HERE" # Selected release number
from_tag = "ENTER_HERE" # From release-tag
to_tag = "ENTER_HERE" # Until release-tag

# Metrics calculation #
t = datetime(YYYY, MM, DD, HH, MM, SS) # First date + time of first commit of release (YYYY, MM, DD, HH, MM, SS)

# Aggregation for feature-based metrics #
# Chose between "mean", "median", "min", "max" and "sum"
comm_selection = "ENTER_HERE"
adev_selection = "ENTER_HERE"
ddev_selection = "ENTER_HERE"
exp_selection = "ENTER_HERE"
oexp_selection = "ENTER_HERE"
modd_selection = "ENTER_HERE"
mods_selection = "ENTER_HERE"
nloc_selection = "ENTER_HERE"
cyco_selection = "ENTER_HERE"
addl_selection = "ENTER_HERE"
reml_selection = "ENTER_HERE"

#########################
#########################
#########################

#########################
### HELPER  FUNCTIONS ###
#########################

# Function to find word in a string using regexps
def findWord(word):
    return re.compile(r'\b({0})\b'.format(word), flags=re.IGNORECASE).search
	
def Average(lst): 
    return round(sum(lst) / len(lst), 0)

#########################
#########################
#########################

#########################
######### MAIN ##########
#########################

print("This script extracts commit metadata for " + software + " and its release " + release + ".")
print("The creation of the three data sets takes some time depending on the amount of data for the selected release.")
print("First step: Data extraction.")

# Create database #
target_db = mysql.connector.connect(host = host, user = user, passwd = password)
mycursor = target_db.cursor()
mycursor.execute("DROP DATABASE " + database)
mycursor.execute("CREATE DATABASE " + database)
mycursor.execute("CREATE TABLE " + database + "." + software + " (release_number varchar(255), commit_hash longtext, commit_author varchar(255), filename varchar(255), nloc varchar(255), cycomplexity varchar(255), lines_added varchar(255), lines_removed varchar(255), date varchar(255), refactor varchar(255), corrective varchar(255), feature longtext)")

# Extract data with PyDriller #
counter = 0

if access == "local":
	decision = path
elif access == "extern":
	decision = repo
	
sql1 = "INSERT INTO " + database + "." + software + " (release_number, commit_hash, commit_author, filename, nloc, cycomplexity, lines_added, lines_removed, date, refactor, corrective, feature) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
	
try:
	for c in RepositoryMining(decision, from_tag = from_tag, to_tag = to_tag, only_no_merge = True, only_in_branch = "master").traverse_commits():
		for m in c.modifications:
		
			msg = str(c.msg).lower()
			first_line = msg.partition("\n")[0]
			if findWord("refactor")(first_line):
				refactor = "true"
			else:
				refactor = "false"
				
			if findWord("fix")(first_line) or findWord("bug")(first_line) or findWord("error")(first_line) or findWord("fail")(first_line) or findWord("fixes")(first_line) or findWord("fixed")(first_line) or findWord("bugfix")(first_line) or findWord("bugs")(first_line):
				corrective = "true"
			else:
				corrective = "false"
		
			diff = str(m.diff)
			diff = diff.lower()
			regex1 = "\s*((#\s*ifdef\s+.*)|(#\s*ifndef\s+.*))"
			regex2 = "(#\s*ifdef\s)|(#\s*ifndef\s)"
			match = re.findall(regex1, diff)
			
			if match:
				match = list(dict.fromkeys(match))
				for entry in match:
					entry = list(dict.fromkeys(entry))
					for e in entry:
						if e == "":
							continue
						else:
							test = re.split(regex2, e)
							if test[1] != None and test[2] == None:
								feature = test[3]			
								val = (release, c.hash, c.author.name, m.filename, str(m.nloc), str(m.complexity), str(m.added), str(m.removed), str(c.committer_date), refactor, corrective, feature)
								mycursor.execute(sql1, val)
								target_db.commit()
							elif test[2] != None and test[1] == None:
								feature = "not " + test[3]		
								val = (release, c.hash, c.author.name, m.filename, str(m.nloc), str(m.complexity), str(m.added), str(m.removed), str(c.committer_date), refactor, corrective, feature)
								mycursor.execute(sql1, val)
								target_db.commit()
			else:
				feature = "none"
				val = (release, c.hash, c.author.name, m.filename, str(m.nloc), str(m.complexity), str(m.added), str(m.removed), str(c.committer_date), refactor, corrective, "none")
				mycursor.execute(sql1, val)
				target_db.commit()
			
			print("     ... Commit number " + str(counter) + " inserted.")
			counter = counter + 1
except:
	print("")

sql2 = "DELETE FROM " + database + "." + software + " where feature like \"%\_h\" or feature like \"%\_h\_%\""
mycursor.execute(sql2)
target_db.commit()
print("     ... Finished: Data extraction.")	
print("Second step: Creation of the feature-based data set.")
print("     ... Calculation of metrics.")

# Feature-based metrics #
sql3 = "CREATE TABLE " + database + "." + software + "_feature_dataset (release_number varchar(255), feature varchar(255), comm varchar(255), adev varchar(255), ddev varchar(255), exp varchar(255), oexp varchar(255), modd varchar(255), mods varchar(255), nloc varchar(255), cyco varchar(255), addl varchar(255), reml varchar(255))"
sql4 = "CREATE TABLE " + database + "." + software + "_feature_dataset_new (release_number varchar(255), feature varchar(255), comm varchar(255), adev varchar(255), ddev varchar(255), exp varchar(255), oexp varchar(255), modd varchar(255), mods varchar(255), nloc varchar(255), cyco varchar(255), addl varchar(255), reml varchar(255))"
sql5 = "INSERT INTO " + database + "." + software + "_feature_dataset (release_number, feature, comm, adev, ddev, exp, oexp, modd, mods, nloc, cyco, addl, reml) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
sql6 = "INSERT INTO " + database + "." + software + "_feature_dataset_new (release_number, feature, comm, adev, ddev, exp, oexp, modd, mods, nloc, cyco, addl, reml) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

# COMM, ADEV
mycursor.execute(sql3)
sql7 = "SELECT release_number, feature, count(distinct commit_hash) AS comm, count(distinct commit_author) AS adev FROM " + database + "." + software + " WHERE feature != \"none\" GROUP BY release_number, feature"

mycursor.execute(sql7)
result_set1 = mycursor.fetchall()

for row in result_set1:
	val = (row[0], row[1], row[2], row[3], "tbd", "tbd", "tbd", "tbd", "tbd", "tbd", "tbd", "tbd", "tbd")
	mycursor.execute(sql5, val)
	target_db.commit()

print("     ... Finished calculating COMM and ADEV metrics.")	

# DDEV
mycursor.execute(sql4)
sql8 = "SELECT DISTINCT feature FROM " + database + "." + software + "_feature_dataset"
mycursor.execute(sql8)
result_set2 = mycursor.fetchall()

for row in result_set2:
	feature = row[0]
	sql9 = "SELECT * FROM " + database + "." + software + "_feature_dataset WHERE feature = \"" + feature + "\""
	mycursor.execute(sql9)
	result_set3 = mycursor.fetchall()
	
	ddev = 0
	
	for elem in result_set3:
		ddev = ddev + int(elem[3])
		val = (elem[0], elem[1], elem[2], elem[3], ddev, "tbd", "tbd", "tbd", "tbd", "tbd", "tbd", "tbd", "tbd")
		mycursor.execute(sql6, val)
		target_db.commit()
		
print("     ... Finished calculating DDEV metric.")	

# EXP
sql10 = "DROP TABLE " + database + "." + software + "_feature_dataset"
sql11 = "RENAME TABLE " + database + "." + software + "_feature_dataset_new to " + database + "." + software + "_feature_dataset"
mycursor.execute(sql10)
mycursor.execute(sql11)
mycursor.execute(sql4)

sql12 = "SELECT DISTINCT release_number FROM " + database + "." + software
mycursor.execute(sql12)
result_set4 = mycursor.fetchall()
releaseList = []

for row in result_set4:
	releaseList.append(row[0])

sql13 = "SELECT release_number, feature, commit_author, lines_added, lines_removed FROM " + database + "." + software + " WHERE feature = %s AND release_number = %s GROUP BY release_number, feature, commit_author"

valueList = []
meanList = []

for release in releaseList:
	
	sql14 = "SELECT DISTINCT feature FROM " + database + "." + software + " WHERE feature != \"none\" AND release_number = \"" + release + "\""
	
	mycursor.execute(sql14)
	result_set5 = mycursor.fetchall()
	
	featureList = []
	
	for elem in result_set5:
		featureList.append(elem[0])

	for feature in featureList:
		
		val = (feature, release)
		mycursor.execute(sql13, val)
		result_set6 = mycursor.fetchall()

		if len(result_set6) == 0:
			continue
		else:
			val = 1
			counter = 0
			for elem in result_set6:
				add = int(elem[3])
				rem = int(elem[4])
				if add == 0:
					add = 1
				if rem == 0:
					rem = 1
				prod = add * rem
				val = val * prod
				counter = counter + 1
			mean = val**(1/float(counter))
			value = release + ":::" + feature
			valueList.append(value)
			meanList.append(mean)

sql15 = "SELECT * FROM " + database + "." + software + "_feature_dataset"

mycursor.execute(sql15)
result_set7 = mycursor.fetchall()

for e in result_set7:
	v = e[0] + ":::" + e[1]

	index = valueList.index(v)
	mean = str(int(meanList[index]))
	val = (e[0], e[1], e[2], e[3], e[4], mean, "tbd", "tbd", "tbd", "tbd", "tbd", "tbd", "tbd")
	mycursor.execute(sql6, val)
	target_db.commit()
	
print("     ... Finished calculating EXP metric.")	

# OEXP
mycursor.execute(sql10)
mycursor.execute(sql11)
mycursor.execute(sql4)

sql16 = "SELECT release_number, feature, MAX(commit_author) FROM " + database + "." + software + " WHERE feature != \"none\" GROUP BY release_number, feature"
	
mycursor.execute(sql16)
result_set8 = mycursor.fetchall()

valueList = []
oexpList = []

for row in result_set8:
	release = row[0]
	feature = row[1]
	author = row[2]
	
	sql17 = "SELECT lines_added, lines_removed FROM " + database + "." + software + " WHERE release_number = \"" + release + "\" AND feature = \"" + feature + "\" and commit_author = \"" + author + "\""
	
	mycursor.execute(sql17)
	result_set9 = mycursor.fetchall()
	
	oexp = 0
	
	for elem in result_set9:
		exp = int(elem[0]) + int(elem[1])
		oexp = exp + oexp
	
	valueList.append(release + ":::" + feature)
	oexpList.append(str(oexp))
	
sql18 = "SELECT * FROM " + database + "." + software + "_feature_dataset"

mycursor.execute(sql18)
result_set10 = mycursor.fetchall()

for e in result_set10:
	v = e[0] + ":::" + e[1]

	index = valueList.index(v)
	value = str(int(oexpList[index]))
	
	val = (e[0], e[1], e[2], e[3], e[4], e[5], value, "tbd", "tbd", "tbd", "tbd", "tbd", "tbd")
	mycursor.execute(sql6, val)
	target_db.commit()
	
print("     ... Finished calculating OEXP metric.")	

# MODD, MODS
mycursor.execute(sql10)
mycursor.execute(sql11)
mycursor.execute(sql4)

sql19 = "select release_number, feature, count(commit_hash) as scat from " + database + "." + software + " where feature != \"none\" group by release_number, feature"
sql20 = "select release_number, count(distinct feature) from " + database + "." + software + " group by release_number"

mycursor.execute(sql19)
result_set11 = mycursor.fetchall()

mycursor.execute(sql20)
result_set12 = mycursor.fetchall()

valueList = []
scatList = []
relList = []
countList = []

for row in result_set11:
	release = row[0]
	feature = row[1]
	scat = row[2]
	
	value = release + ":::" + feature
	valueList.append(value)
	scatList.append(scat)
	
for row in result_set12:
	release = row[0]
	count = row[1]
	
	relList.append(release)
	countList.append(count)

mycursor.execute(sql18)
result_set13 = mycursor.fetchall()

counter = 0

for elem in result_set13:
	release = elem[0]
	feature = elem[1]	
	val = release + ":::" + feature

	index = valueList.index(val)
	scat = str(int(scatList[index]))
	ind = relList.index(release)
	tang = str(int(countList[ind]))
	val = (elem[0], elem[1], elem[2], elem[3], elem[4], elem[5], elem[6], scat, tang, "tbd", "tbd", "tbd", "tbd")
	mycursor.execute(sql6, val)
	target_db.commit()
	counter = counter + 1
		
print("     ... Finished calculating MODD and MODS metrics.")	

# NLOC, CYCO, ADDL, REML
mycursor.execute(sql10)
mycursor.execute(sql11)
mycursor.execute(sql4)

sql21 = "SELECT release_number, feature FROM " + database + "." + software + "_feature_dataset"
	
mycursor.execute(sql21)
result_set14 = mycursor.fetchall()

valueList = []
nlocList = []
cyList = []
addedList = []
removedList = []

for row in result_set14:
	release = row[0]
	feature = row[1]

	sql22 = "SELECT nloc, cycomplexity, lines_added, lines_removed FROM dataset." + software + " WHERE release_number = \"" + release + "\" AND feature = \"" + feature + "\""		
	mycursor.execute(sql22)
	result_set15 = mycursor.fetchall()
	
	counter = 0
	nloc = 0
	cycomplexity = 0
	added = 0
	removed = 0
	
	for elem in result_set15:
		
		if elem[0] == "None":
			value1 = 0
		else:
			value1 = int(elem[0])
		
		if elem[1] == "None":
			value1 = 0
		else:
			value2 = int(elem[1])

		value3 = int(elem[2])
		value4 = int(elem[3])
		
		nloc = nloc + value1
		cycomplexity = cycomplexity + value2
		added = added + value3
		removed = removed + value4
		counter = counter + 1
		
	nloc = int(nloc / counter)
	cycomplexity = int(cycomplexity / counter)
	added = int(added / counter)
	removed = int(removed / counter)
	
	value = release + ":::" + feature
	
	valueList.append(value)
	nlocList.append(nloc)
	cyList.append(cycomplexity)
	addedList.append(added)
	removedList.append(removed)

mycursor.execute(sql18)
result_set16 = mycursor.fetchall()

for elem in result_set16:	
	release = elem[0]
	feature = elem[1]	
	val = release + ":::" + feature

	try:
		index = valueList.index(val)
		nloc = str(int(nlocList[index]))
		cycomplexity = str(int(cyList[index]))
		added = str(int(addedList[index]))
		removed = str(int(removedList[index]))
		val = (elem[0], elem[1], elem[2], elem[3], elem[4], elem[5], elem[6], elem[7], elem[8], nloc, cycomplexity, added, removed)
		mycursor.execute(sql6, val)
		target_db.commit()
		
	except:
		continue
	
print("     ... Finished calculating NLOC, CYCO, ADDL and REML metrics.")
print("     ... Finalization of data set.")

# Creation of data set
mycursor.execute(sql10)
mycursor.execute(sql11)
mycursor.execute(sql4)

sql23 = "SELECT * FROM " + database + "." + software + "_feature_dataset"
mycursor.execute(sql23)
result_set17 = mycursor.fetchall()

for row in result_set17:
	release = row[0]
	feature = row[1]
	comm = row[2]
	adev = row[3]
	ddev = row[4]
	exp = row[5]
	oexp = row[6]
	modd = row[7]
	mods = row[8]
	nloc = row[9]
	cyco = row[10]
	addl = row[11]
	reml = row[12]
	
	sql24 = "SELECT commit_author FROM " + database + "." + software + " WHERE release_number = \"" + release + "\" and feature = \"" + feature + "\""
	mycursor.execute(sql24)
	result_set18 = mycursor.fetchall()
	
	for elem in result_set18:
		val = (release, feature, comm, adev, ddev, exp, oexp, modd, mods, nloc, cyco, addl, reml)
		mycursor.execute(sql6, val)
		target_db.commit()

print("     ... Finished first of four steps of final creation of feature-based data set.")

mycursor.execute(sql10)
mycursor.execute(sql11)
mycursor.execute(sql4)

sql25 = "SELECT release_number, feature FROM " + database + "." + software + "_feature_dataset group by release_number, feature"
	
mycursor.execute(sql25)
result_set19 = mycursor.fetchall()

for row in result_set19:
	release = row[0]
	feature = row[1]
	
	sql26 = "SELECT * FROM " + database + "." + software + "_feature_dataset where release_number = \"" + release + "\" AND feature = \"" + feature + "\"" 
	mycursor.execute(sql26)
	result_set20 = mycursor.fetchall()
	
	comm_mean = 0
	adev_mean = 0
	ddev_mean = 0
	exp_mean = 0
	oexp_mean = 0
	modd_mean = 0
	mods_mean = 0
	nloc_mean = 0
	cyco_mean = 0
	addl_mean = 0
	reml_mean = 0
	count = 0
	
	for elem in result_set20:
		comm = int(elem[2])
		adev = int(elem[3])
		ddev = int(elem[4])
		exp = int(elem[5])
		oexp = int(elem[6])
		modd = int(elem[7])
		mods = int(elem[8])
		nloc = int(elem[9])
		cyco = int(elem[10])
		addl = int(elem[11])
		reml = int(elem[12])
		
		comm_mean = comm_mean + comm
		adev_mean = adev_mean + adev
		ddev_mean = ddev_mean + ddev
		exp_mean = exp_mean + exp
		oexp_mean = oexp_mean + oexp
		modd_mean = modd_mean + modd
		mods_mean = mods_mean + mods
		nloc_mean = nloc_mean + nloc
		cyco_mean = cyco_mean + cyco
		addl_mean = addl_mean + addl
		reml_mean = reml_mean + reml
		count = count + 1
		
	comm_mean = int(comm_mean / count)
	adev_mean = int(adev_mean / count)
	ddev_mean = int(ddev_mean / count)
	exp_mean = int(exp_mean / count)
	oexp_mean = int(oexp_mean / count)
	modd_mean = int(modd_mean / count)		
	mods_mean = int(mods_mean / count)
	nloc_mean = int(nloc_mean / count)
	cyco_mean = int(cyco_mean / count)
	addl_mean = int(addl_mean / count)
	reml_mean = int(reml_mean / count)
	
	val = (release, feature, comm_mean, adev_mean, ddev_mean, exp_mean, oexp_mean, modd_mean, mods_mean, nloc_mean, cyco_mean, addl_mean, reml_mean)
	mycursor.execute(sql6, val)
	target_db.commit()
	
print("     ... Finished second of four steps of final creation of feature-based data set.")

mycursor.execute(sql10)
mycursor.execute(sql11)

print("     ... Finished third of four steps of final creation of feature-based data set.")

sql27 = "SELECT * FROM " + database + "." + software + "_feature_dataset" 
mycursor.execute(sql27)
result_set21 = mycursor.fetchall()

comm_list = []
adev_list = []
ddev_list = []
exp_list = []
oexp_list = []
modd_list = []
mods_list = []
nloc_list = []
cyco_list = []
addl_list = []
reml_list = []
mark_list = []

for elem in result_set21:
	comm_list.append(int(elem[2]))
	adev_list.append(int(elem[3]))
	ddev_list.append(int(elem[4]))
	exp_list.append(int(elem[5]))
	oexp_list.append(int(elem[6]))
	modd_list.append(int(elem[7]))
	mods_list.append(int(elem[8]))
	nloc_list.append(int(elem[9]))
	cyco_list.append(int(elem[10]))
	addl_list.append(int(elem[11]))
	reml_list.append(int(elem[12]))
	mark_list.append("?")

filename = software + "_feature_dataset.arff"
file = open(filename, "w")

file.write("@relation " + software + "_feature_dataset")
file.write("\n")
file.write("\n")
file.write("@attribute comm numeric")
file.write("\n")
file.write("@attribute adev numeric")
file.write("\n")
file.write("@attribute ddev numeric")
file.write("\n")
file.write("@attribute exp numeric")
file.write("\n")
file.write("@attribute oexp numeric")
file.write("\n")
file.write("@attribute modd numeric")
file.write("\n")
file.write("@attribute mods numeric")
file.write("\n")
file.write("@attribute nloc numeric")
file.write("\n")
file.write("@attribute cyco numeric")
file.write("\n")
file.write("@attribute addl numeric")
file.write("\n")
file.write("@attribute reml numeric")
file.write("\n")
file.write("@attribute label {defective,clean}")
file.write("\n")
file.write("\n")
file.write("@data")
file.write("\n")

counter = len(mark_list)

for i in range(counter):
	line = (str(comm_list[i]) + "," + str(adev_list[i]) + "," + str(ddev_list[i]) + "," + str(exp_list[i]) + "," + str(oexp_list[i]) + "," + str(modd_list[i]) + "," + str(mods_list[i]) + "," + str(nloc_list[i]) + "," + str(cyco_list[i]) + "," + str(addl_list[i]) + "," + str(reml_list[i]) + "," + mark_list[i])
	file.write(line)
	file.write("\n")
	
print("     ... Finished last step of final creation of feature-based data set.")
print("Third step: Creation of the simple file-based data set.")
print("     ... Calculation of metrics.")
	
# File-based metrics #
sql28 = "CREATE TABLE " + database + "." + software + "_file_dataset (release_number varchar(255), filename varchar(255), revi varchar(255), refa varchar(255), bugf varchar(255), auth varchar(255), addl varchar(255), addm varchar(255), adda varchar(255), reml varchar(255), remm varchar(255), rema varchar(255), cchl varchar(255), cchm varchar(255), ccha varchar(255), maxc varchar(255), avgc varchar(255), aage varchar(255), wage varchar(255))"
sql29 = "CREATE TABLE " + database + "." + software + "_file_dataset_new (release_number varchar(255), filename varchar(255), revi varchar(255), refa varchar(255), bugf varchar(255), auth varchar(255), addl varchar(255), addm varchar(255), adda varchar(255), reml varchar(255), remm varchar(255), rema varchar(255), cchl varchar(255), cchm varchar(255), ccha varchar(255), maxc varchar(255), avgc varchar(255), aage varchar(255), wage varchar(255))"
sql30 = "INSERT INTO " + database + "." + software + "_file_dataset (release_number, filename, revi, refa, bugf, auth, addl, addm, adda, reml, remm, rema, cchl, cchm, ccha, maxc, avgc, aage, wage) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
sql31 = "INSERT INTO " + database + "." + software + "_file_dataset_new (release_number, filename, revi, refa, bugf, auth, addl, addm, adda, reml, remm, rema, cchl, cchm, ccha, maxc, avgc, aage, wage) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

# REVI, REFA, BUGF, AUTH
mycursor.execute(sql28)

sql32 = "SELECT release_number, filename, count(distinct commit_hash) AS revi, count(distinct commit_author) as auth from " + database + "." + software + " group by release_number, filename"
sql33 = "SELECT release_number, filename, count(distinct commit_hash) AS refa from " + database + "." + software + " where refactor = \"true\" group by release_number, filename"
sql34 = "SELECT release_number, filename, count(distinct commit_hash) AS bugf from " + database + "." + software + " where corrective = \"true\" group by release_number, filename"

mycursor.execute(sql32)
result_set22 = mycursor.fetchall()

mycursor.execute(sql33)
result_set23 = mycursor.fetchall()

mycursor.execute(sql34)
result_set24 = mycursor.fetchall()

rs2 = []
rs3 = []
rs2_values = []
rs3_values = []

for elem in result_set23:
	first = elem[0]
	second = elem[1]
	third = elem[2]
	
	refa = str(first) + ":::" + str(second)
	rs2.append(refa)
	rs2_values.append(third)
	
for elem in result_set24:
	first = elem[0]
	second = elem[1]
	third = elem[2]
	
	bugf = str(first) + ":::" + str(second)
	rs3.append(bugf)
	rs3_values.append(third)
	
for elem in result_set22:
	rel = elem[0]
	file = elem[1]
	revi = elem[2]
	auth = elem[3]
	key = str(rel) + ":::" + str(file)
	
	try:
		index = rs2.index(key)
		refa = str(rs2_values[index])
	except:
		refa = "0"
		
	try:
		index = rs3.index(key)
		bugf = str(rs3_values[index])
	except:
		bugf = "0"

	val = (rel, file, revi, refa, bugf, auth, "tbd", "tbd", "tbd", "tbd", "tbd", "tbd", "tbd", "tbd", "tbd", "tbd", "tbd", "tbd", "tbd")
	mycursor.execute(sql30, val)
	target_db.commit()

print("     ... Finished calculating REVI, REFA, BUGF and AUTH metrics.")

# ADDL, ADDM, ADDA, REML, REMM, REMA, CCHL, CCHM, CCHA
mycursor.execute(sql29)

sql35 = "SELECT release_number, filename, sum(lines_added) as addl, max(lines_added) as addm, round(avg(lines_added),0) as adda from " + database + "." + software + " group by release_number, filename"
sql36 = "SELECT release_number, filename, sum(lines_removed) as reml, max(lines_removed) as remm, round(avg(lines_removed),0) as rema from " + database + "." + software + " group by release_number, filename"
sql37 = "SELECT release_number, filename, sum(lines_added - lines_removed) as cchl, max(lines_added - lines_removed) as cchm, round(avg(lines_added - lines_removed),0) as ccha from " + database + "." + software + " group by release_number, filename"

mycursor.execute(sql35)
result_set25 = mycursor.fetchall()

mycursor.execute(sql36)
result_set26 = mycursor.fetchall()

mycursor.execute(sql37)
result_set27 = mycursor.fetchall()

addl_list = []
addm_list = []
adda_list = []
add_meta_list = []
reml_list = []
remm_list = []
rema_list = []
rem_meta_list = []
cchl_list = []
cchm_list = []
ccha_list = []
cch_meta_list = []


for elem in result_set25:
	rel = elem[0]
	file = elem[1]
	addl = elem[2]
	addm = elem[3]
	adda = elem[4]
	key = rel + ":::" + file
	
	addl_list.append(addl)
	addm_list.append(addm)
	adda_list.append(adda)
	add_meta_list.append(key)
	
for elem in result_set26:
	rel = elem[0]
	file = elem[1]
	reml = elem[2]
	remm = elem[3]
	rema = elem[4]
	key = rel + ":::" + file
	
	reml_list.append(reml)
	remm_list.append(remm)
	rema_list.append(rema)
	rem_meta_list.append(key)
	
for elem in result_set27:
	rel = elem[0]
	file = elem[1]
	cchl = elem[2]
	cchm = elem[3]
	ccha = elem[4]
	key = rel + ":::" + file
	
	cchl_list.append(cchl)
	cchm_list.append(cchm)
	ccha_list.append(ccha)
	cch_meta_list.append(key)
	
sql38 = "SELECT * FROM " + database + "." + software + "_file_dataset"
mycursor.execute(sql38)
result_set28 = mycursor.fetchall()
	
for elem in result_set28:
	rel = elem[0]
	file = elem[1]
	revi = elem[2]
	refa = elem[3]
	bugf = elem[4]
	auth = elem[5]
	key = rel + ":::" + file
	
	try:
		index_add = add_meta_list.index(key)
		index_rem = rem_meta_list.index(key)
		index_cch = cch_meta_list.index(key)
		
		addl = str(int(addl_list[index_add]))
		addm = str(int(addm_list[index_add]))
		adda = str(int(adda_list[index_add]))
		reml = str(int(reml_list[index_rem]))
		remm = str(int(remm_list[index_rem]))
		rema = str(int(rema_list[index_rem]))
		cchl = str(int(cchl_list[index_cch]))
		cchm = str(int(cchm_list[index_cch]))
		ccha = str(int(ccha_list[index_cch]))
		
		val = (rel, file, revi, refa, bugf, auth, addl, addm, adda, reml, remm, rema, cchl, cchm, ccha, "tbd", "tbd", "tbd", "tbd")
		mycursor.execute(sql31, val)
		target_db.commit()
		
	except:
		continue
		
print("     ... Finished calculating ADDL, ADDM, ADDA, REML, REMM, REMA, CCHL, CCHM and CCHA metrics.")

# MAXC, AVGC
sql39 = "DROP TABLE " + database + "." + software + "_file_dataset"
sql40 = "RENAME TABLE " + database + "." + software + "_file_dataset_new to " + database + "." + software + "_file_dataset"
mycursor.execute(sql39)
mycursor.execute(sql40)
mycursor.execute(sql29)

sql41 = "SELECT distinct release_number FROM " + database + "." + software + "_file_dataset"
sql42 = "SELECT release_number, commit_hash, count(filename) FROM " + database + "." + software + " group by release_number, commit_hash"

mycursor.execute(sql41)
result_set29 = mycursor.fetchall()

mycursor.execute(sql42)
result_set30 = mycursor.fetchall()

key_list = []
value_list = []

rel_list = []
maxc_values = []
avgc_values = []

for elem in result_set30:
	key = elem[0] + ":::" + elem[1]
	key_list.append(key)
	value_list.append(elem[2])

for elem in result_set29:
	key_list2 = []
	file_list = []
	release = elem[0]
	
	sql43 = "SELECT release_number, commit_hash, filename FROM " + database + "." + software + " where release_number= \"" + release + "\" group by release_number, commit_hash, filename order by filename;"
	mycursor.execute(sql43)
	result_set31 = mycursor.fetchall()
	
	for elem in result_set31:
		rel = elem[0]
		hash = elem[1]
		filename = elem[2]
		
		key = rel + ":::" + hash
		key_list2.append(key)
		file_list.append(filename)
		
	clean_file = collections.OrderedDict.fromkeys(file_list).keys()
		
	for file in clean_file:
		maxc_list = []
		avgc_list = []
		indices = [i for i, x in enumerate(file_list) if x == file]
		counter = []
		for index in indices:
			key = key_list2[index]
			ind = key_list.index(key)
			value = value_list[ind]
			counter.append(value)
		maxc = max(counter)
		avg = sum(counter) / len(counter)
		avgc = int(round(avg,0))
		
		key = release + ":::" + file
		rel_list.append(key)
		maxc_values.append(maxc)
		avgc_values.append(avgc)
		
sql44 = "SELECT * FROM " + database + "." + software + "_file_dataset"

mycursor.execute(sql44)
result_set32 = mycursor.fetchall()
	
for elem in result_set32:
	rel = elem[0]
	file = elem[1]
	key = rel + ":::" + file
	
	try:
		index = rel_list.index(key)
		maxc = maxc_values[index]
		avgc = avgc_values[index]
		val = (elem[0], elem[1], elem[2], elem[3], elem[4], elem[5], elem[6], elem[7], elem[8], elem[9], elem[10], elem[11], elem[12], elem[13], elem[14], maxc, avgc, "tbd", "tbd")
		mycursor.execute(sql31, val)
		target_db.commit()
	
	except:
		continue

print("     ... Finished calculating MAXC and AVGC metrics.")		

# AAGE
mycursor.execute(sql39)
mycursor.execute(sql40)
mycursor.execute(sql29)

sql45 = "SELECT release_number, commit_hash, filename, date FROM " + database + "." + software + " where release_number = \"" + release + "\" group by release_number, commit_hash, filename, date"
mycursor.execute(sql45)
result_set33 = mycursor.fetchall()

value_list =[]
file_list = []
key_list = []
result_list = []

for elem in result_set33:
	file_list.append(elem[2])
	raw_date = elem[3].split(" ")
	year = raw_date[0]
	time = raw_date[1]
	split_time = re.split(r"\+|-", time)
	time = split_time[0]
	value_list.append(str(year) + " " + str(time))
	
clean_file = collections.OrderedDict.fromkeys(file_list).keys()

for file in clean_file:
	indices = [i for i, x in enumerate(file_list) if x == file]
	date_list = []
	for index in indices:
		date = value_list[index]
		raw_date = date.split(" ")
		year = raw_date[0].split("-")
		time = raw_date[1].split(":")
		p = datetime(int(year[0]), int(year[1]), int(year[2]), int(time[0]), int(time[1]), int(time[2]))
		delta = p - t
		weeks = round((delta.days / 7), 2)
		date_list.append(weeks)
	
	avg = sum(date_list) / len(date_list)
	aage = round(avg, 2)
	
	key = release + ":::" + file
	key_list.append(key)
	result_list.append(aage)
	
sql46 = "SELECT * FROM " + database + "." + software + "_file_dataset where release_number = \"" + release + "\""
	
mycursor.execute(sql46)
result_set34 = mycursor.fetchall()
	
for elem in result_set34:
	rel = elem[0]
	file = elem[1]
	key = rel + ":::" + file
		
	try:
		index = key_list.index(key)
		aage = result_list[index]
			
		val = (elem[0], elem[1], elem[2], elem[3], elem[4], elem[5], elem[6], elem[7], elem[8], elem[9], elem[10], elem[11], elem[12], elem[13], elem[14], elem[15], elem[16], aage, "tbd")
		mycursor.execute(sql31, val)
		target_db.commit()
		
	except:
		continue
		
print("     ... Finished calculating AAGE metrics.")		

# WAGE
mycursor.execute(sql39)
mycursor.execute(sql40)
mycursor.execute(sql29)

sql47 = "SELECT * FROM " + database + "." + software + "_file_dataset"
mycursor.execute(sql47)
result_set35 = mycursor.fetchall()

for elem in result_set35:
	addl = float(elem[6])
	aage = float(elem[17])
	
	if addl == 0:
		addl = 1
		
	if aage == 0:
		aage = 1
	
	wage = round(((aage * addl) / addl), 2)

	val = (elem[0], elem[1], elem[2], elem[3], elem[4], elem[5], elem[6], elem[7], elem[8], elem[9], elem[10], elem[11], elem[12], elem[13], elem[14], elem[15], elem[16], elem[17], wage)
	mycursor.execute(sql31, val)
	target_db.commit()
		
print("     ... Finished calculating WAGE metrics.")
print("     ... Finalization of data set.")

# Creation of data set
mycursor.execute(sql39)
mycursor.execute(sql40)
mycursor.execute(sql29)

sql48 = "SELECT * FROM " + database + "." + software + "_file_dataset"
mycursor.execute(sql48)
result_set36 = mycursor.fetchall()

for row in result_set36:
	release = row[0]
	filename = row[1]
	revi = row[2]
	refa = row[3]
	bugf = row[4]
	auth = row[5]
	addl = row[6]
	addm = row[7]
	adda = row[8]
	reml = row[9]
	remm = row[10]
	rema = row[11]
	cchl = row[12]
	cchm = row[13]
	ccha = row[14]
	maxc = row[15]
	avgc = row[16]
	aage = row[17]
	wage = row[18]

	sql49 = "SELECT commit_author FROM " + database + "." + software + " WHERE release_number = \"" + release + "\" and filename = \"" + filename + "\""
	mycursor.execute(sql49)
	result_set37 = mycursor.fetchall()
	
	for elem in result_set37:			
		val = (release, filename, revi, refa, bugf, auth, addl, addm, adda, reml, remm, rema, cchl, cchm, ccha, maxc, avgc, aage, wage)
		mycursor.execute(sql31, val)
		target_db.commit()

print("     Finished first of four steps of final creation of file-based data set.")		

mycursor.execute(sql39)
mycursor.execute(sql40)
mycursor.execute(sql29)
sql50 = "SELECT release_number, filename FROM " + database + "." + software + "_file_dataset group by release_number, filename;"
	
mycursor.execute(sql50)
result_set38 = mycursor.fetchall()

for row in result_set38:
	release = row[0]
	filename = row[1]
	
	sql51 = "SELECT * FROM " + database + "." + software + "_file_dataset where release_number = \"" + release + "\" AND filename = \"" + filename + "\"" 
	mycursor.execute(sql51)
	result_set39 = mycursor.fetchall()
	
	revi_mean = 0
	refa_mean = 0
	bugf_mean = 0
	auth_mean = 0
	addl_mean = 0
	addm_mean = 0
	adda_mean = 0
	reml_mean = 0
	remm_mean = 0
	rema_mean = 0
	cchl_mean = 0
	cchm_mean = 0
	ccha_mean = 0
	maxc_mean = 0
	avgc_mean = 0
	aage_mean = 0
	wage_mean = 0
	count = 0
	
	for elem in result_set39:
		revi = int(elem[2])
		refa = int(elem[3])
		bugf = int(elem[4])
		auth = int(elem[5])
		addl = int(elem[6])
		addm = int(elem[7])
		adda = int(elem[8])
		reml = int(elem[9])
		remm = int(elem[10])
		rema = int(elem[11])
		cchl = int(elem[12])
		cchm = int(elem[13])
		ccha = int(elem[14])
		maxc = int(elem[15])
		avgc = int(elem[16])
		aage = float(elem[17])
		wage = float(elem[18])
		
		revi_mean = revi_mean + revi
		refa_mean = refa_mean + refa
		bugf_mean = bugf_mean + bugf
		auth_mean = auth_mean + auth
		addl_mean = addl_mean + addl
		addm_mean = addm_mean + addm
		adda_mean = adda_mean + adda
		reml_mean = reml_mean + reml
		remm_mean = remm_mean + remm
		rema_mean = rema_mean + rema
		cchl_mean = cchl_mean + cchl
		cchm_mean = cchm_mean + cchm
		ccha_mean = ccha_mean + ccha
		maxc_mean = maxc_mean + maxc
		avgc_mean = avgc_mean + avgc
		aage_mean = aage_mean + aage
		wage_mean = wage_mean + wage
		count = count + 1
		
	revi_mean = int(revi_mean / count)
	refa_mean = int(refa_mean / count)
	bugf_mean = int(bugf_mean / count)
	auth_mean = int(auth_mean / count)
	addl_mean = int(addl_mean / count)
	addm_mean = int(addm_mean / count)		
	adda_mean = int(adda_mean / count)
	reml_mean = int(reml_mean / count)
	remm_mean = int(remm_mean / count)
	rema_mean = int(rema_mean / count)
	cchl_mean = int(cchl_mean / count)
	cchm_mean = int(cchm_mean / count)
	ccha_mean = int(ccha_mean / count)
	maxc_mean = int(maxc_mean / count)
	avgc_mean = int(avgc_mean / count)
	aage_mean = round(float(aage_mean / count),2)
	wage_mean = round(float(wage_mean / count),2)

	val = (release, filename, revi_mean, refa_mean, bugf_mean, auth_mean, addl_mean, addm_mean, adda_mean, reml_mean, remm_mean, rema_mean, cchl_mean, cchm_mean, ccha_mean, maxc_mean, avgc_mean, aage_mean, wage_mean)
	mycursor.execute(sql31, val)
	target_db.commit()

print("     Finished second of four steps of final creation of file-based data set.")		

mycursor.execute(sql39)
mycursor.execute(sql40)
	
print("     Finished third of four steps of final creation of file-based data set.")		

sql52 = "SELECT * FROM " + database + "." + software + "_file_dataset" 
mycursor.execute(sql52)
result_set40 = mycursor.fetchall()

revi_list = []
refa_list = []
bugf_list = []
auth_list = []
addl_list = []
addm_list = []
adda_list = []
reml_list = []
remm_list = []
rema_list = []
cchl_list = []
cchm_list = []
ccha_list = []
maxc_list = []
avgc_list = []
aage_list = []
wage_list = []
mark_list = []

for elem in result_set40:
	revi_list.append(int(elem[2]))
	refa_list.append(int(elem[3]))
	bugf_list.append(int(elem[4]))
	auth_list.append(int(elem[5]))
	addl_list.append(int(elem[6]))
	addm_list.append(int(elem[7]))
	adda_list.append(int(elem[8]))
	reml_list.append(int(elem[9]))
	remm_list.append(int(elem[10]))
	rema_list.append(int(elem[11]))
	cchl_list.append(int(elem[12]))
	cchm_list.append(int(elem[13]))
	ccha_list.append(int(elem[14]))
	maxc_list.append(int(elem[15]))
	avgc_list.append(int(elem[16]))
	aage_list.append(float(elem[17]))
	wage_list.append(float(elem[18]))
	mark_list.append("?")

filename = software + "_file_dataset.arff"
file = open(filename, "w")

file.write("@relation " + software + "_file_dataset")
file.write("\n")
file.write("\n")
file.write("@attribute revi numeric")
file.write("\n")
file.write("@attribute refa numeric")
file.write("\n")
file.write("@attribute bugf numeric")
file.write("\n")
file.write("@attribute auth numeric")
file.write("\n")
file.write("@attribute addl numeric")
file.write("\n")
file.write("@attribute addm numeric")
file.write("\n")
file.write("@attribute adda numeric")
file.write("\n")
file.write("@attribute reml numeric")
file.write("\n")
file.write("@attribute remm numeric")
file.write("\n")
file.write("@attribute rema numeric")
file.write("\n")
file.write("@attribute cchl numeric")
file.write("\n")
file.write("@attribute cchm numeric")
file.write("\n")
file.write("@attribute ccha numeric")
file.write("\n")
file.write("@attribute maxc numeric")
file.write("\n")
file.write("@attribute avgc numeric")
file.write("\n")
file.write("@attribute aage numeric")
file.write("\n")
file.write("@attribute wage numeric")
file.write("\n")
file.write("@attribute label {defective,clean}")
file.write("\n")
file.write("\n")
file.write("@data")
file.write("\n")

counter = len(mark_list)

for i in range(counter):
	line = (str(revi_list[i]) + "," + str(refa_list[i]) + "," + str(bugf_list[i]) + "," + str(auth_list[i]) + "," + str(addl_list[i]) + "," + str(addm_list[i]) + "," + str(adda_list[i]) + "," + str(reml_list[i]) + "," + str(remm_list[i]) + "," + str(rema_list[i]) + "," + str(cchl_list[i]) + "," + str(cchm_list[i]) + "," + str(ccha_list[i]) + "," + str(maxc_list[i]) + "," + str(avgc_list[i]) + "," + str(aage_list[i]) + "," + str(wage_list[i]) + "," + mark_list[i])
	file.write(line)
	file.write("\n")
	
print("     Finished last step of final creation of file-based data set.")	
print("Fourth step: Creation of the extended file-based data set.")
print("     ... Finalization of data set.")	

# Extended file-based dataset #
sql53 = "CREATE TABLE " + database + "." + software + "_extended_file_dataset (comm varchar(255), adev varchar(255), ddev varchar(255), exp varchar(255), oexp varchar(255), modd varchar(255), mods varchar(255), nloc varchar(255), cyco varchar(255), faddl varchar(255), freml varchar(255), revi varchar(255), refa varchar(255), bugf varchar(255), auth varchar(255), addl varchar(255), addm varchar(255), adda varchar(255), reml varchar(255), remm varchar(255), rema varchar(255), cchl varchar(255), cchm varchar(255), ccha varchar(255), maxc varchar(255), avgc varchar(255), aage varchar(255), wage varchar(255))"
sql54 = "INSERT INTO " + database + "." + software + "_extended_file_dataset (comm, adev, ddev, exp, oexp, modd, mods, nloc, cyco, faddl, freml, revi, refa, bugf, auth, addl, addm, adda, reml, remm, rema, cchl, cchm, ccha, maxc, avgc, aage, wage) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

mycursor.execute(sql53)

sql55 = "SELECT * FROM " + database + "." + software + "_feature_dataset"
mycursor.execute(sql55)
result_set41 = mycursor.fetchall()

key_list = []
value_list = []

for elem in result_set41:
	key = elem[0] + ":::" + elem[1]
	values = elem[2] + ":::" + elem[3] + ":::" + elem[4] + ":::" + elem[5] + ":::" + elem[6] + ":::" + elem[7] + ":::" + elem[8] + ":::" + elem[9] + ":::" + elem[10] + ":::" + elem[11]+ ":::" + elem[12]
	
	key_list.append(key)
	value_list.append(values)
	
sql56 = "SELECT * FROM " + database + "." + software + "_file_dataset"

mycursor.execute(sql56)
result_set42 = mycursor.fetchall()
counter = len(result_set42)

for elem in result_set42:
	rel = elem[0]
	file = elem[1]
	revi = elem[2]
	refa = elem[3]
	bugf = elem[4]
	auth = elem[5]
	eaddl = elem[6]
	addm = elem[7]
	adda = elem[8]
	ereml = elem[9]
	remm = elem[10]
	rema = elem[11]
	cchl = elem[12]
	cchm = elem[13]
	ccha = elem[14]
	maxc = elem[15]
	avgc = elem[16]
	aage = elem[17]
	wage = elem[18]
	
	sql57 = "SELECT feature FROM " + database + "." + software + " WHERE filename = \"" + file + "\" AND release_number = \"" + rel + "\""
	mycursor.execute(sql57)
	result_set43 = mycursor.fetchall()
	
	comm_list = []
	adev_list = []
	ddev_list = []
	exp_list = []
	oexp_list = []
	modd_list = []
	mods_list = []
	nloc_list = []
	cyco_list = []
	addl_list = []
	reml_list = []
	
	for elem in result_set43:
		if elem[0] == "none":
			comm = 0
			adev = 0
			ddev = 0
			exp = 0
			oexp = 0
			modd = 0
			mods = 0
			nloc = 0
			cyco = 0
			addl = 0
			reml = 0
			comm_list.append(comm)
			adev_list.append(adev)
			ddev_list.append(ddev)
			exp_list.append(exp)
			oexp_list.append(oexp)
			modd_list.append(modd)
			mods_list.append(mods)
			nloc_list.append(nloc)
			cyco_list.append(cyco)
			addl_list.append(addl)
			reml_list.append(reml)
		else:
			try:
				feature = elem[0]
				key = rel + ":::" + feature
				index = key_list.index(key)
				values = value_list[index]
				comm, adev, ddev, exp, oexp, modd, mods, nloc, cyco, addl, reml = values.split(":::")
				comm_list.append(int(comm))
				adev_list.append(int(adev))
				ddev_list.append(int(ddev))
				exp_list.append(int(exp))
				oexp_list.append(int(oexp))
				modd_list.append(int(modd))
				mods_list.append(int(mods))
				nloc_list.append(int(nloc))
				cyco_list.append(int(cyco))
				addl_list.append(int(addl))
				reml_list.append(int(reml))
			except:
				comm = 0
				adev = 0
				ddev = 0
				exp = 0
				oexp = 0
				modd = 0
				mods = 0
				nloc = 0
				cyco = 0
				addl = 0
				reml = 0
				comm_list.append(comm)
				adev_list.append(adev)
				ddev_list.append(ddev)
				exp_list.append(exp)
				oexp_list.append(oexp)
				modd_list.append(modd)
				mods_list.append(mods)
				nloc_list.append(nloc)
				cyco_list.append(cyco)
				addl_list.append(addl)
				reml_list.append(reml)
			
	if comm_selection == "mean":
		comm_result = Average(comm_list)
	elif comm_selection == "median":
		comm_result = median(comm_list)
	elif comm_selection == "max":
		comm_result = max(comm_list)
	elif comm_selection == "min":
		comm_result = min(comm_list)
	elif comm_selection == "sum":
		comm_result = sum(comm_list)
		
	if adev_selection == "mean":
		adev_result = Average(adev_list)
	elif adev_selection == "median":
		adev_result = median(adev_list)
	elif adev_selection == "max":
		adev_result = max(adev_list)
	elif adev_selection == "min":
		adev_result = min(adev_list)
	elif adev_selection == "sum":
		adev_result = sum(adev_list)
		
	if ddev_selection == "mean":
		ddev_result = Average(ddev_list)
	elif ddev_selection == "median":
		ddev_result = median(ddev_list)
	elif ddev_selection == "max":
		ddev_result = max(ddev_list)
	elif ddev_selection == "min":
		ddev_result = min(ddev_list)
	elif ddev_selection == "sum":
		ddev_result = sum(ddev_list)
		
	if exp_selection == "mean":
		exp_result = Average(exp_list)
	elif exp_selection == "median":
		exp_result = median(exp_list)
	elif exp_selection == "max":
		exp_result = max(exp_list)
	elif exp_selection == "min":
		exp_result = min(exp_list)
	elif exp_selection == "sum":
		exp_result = sum(exp_list)
		
	if oexp_selection == "mean":
		oexp_result = Average(oexp_list)
	elif oexp_selection == "median":
		oexp_result = median(oexp_list)
	elif oexp_selection == "max":
		oexp_result = max(oexp_list)
	elif oexp_selection == "min":
		oexp_result = min(oexp_list)
	elif oexp_selection == "sum":
		oexp_result = sum(oexp_list)
		
	if modd_selection == "mean":
		modd_result = Average(modd_list)
	elif modd_selection == "median":
		modd_result = median(modd_list)
	elif modd_selection == "max":
		modd_result = max(modd_list)
	elif modd_selection == "min":
		modd_result = min(modd_list)
	elif modd_selection == "sum":
		modd_result = sum(modd_list)
		
	if mods_selection == "mean":
		mods_result = Average(mods_list)
	elif mods_selection == "median":
		mods_result = median(mods_list)
	elif mods_selection == "max":
		mods_result = max(mods_list)
	elif mods_selection == "min":
		mods_result = min(mods_list)
	elif mods_selection == "sum":
		mods_result = sum(mods_list)

	if nloc_selection == "mean":
		nloc_result = Average(nloc_list)
	elif nloc_selection == "median":
		nloc_result = median(nloc_list)
	elif nloc_selection == "max":
		nloc_result = max(nloc_list)
	elif nloc_selection == "min":
		nloc_result = min(nloc_list)
	elif nloc_selection == "sum":
		nloc_result = sum(nloc_list)
		
	if cyco_selection == "mean":
		cyco_result = Average(cyco_list)
	elif cyco_selection == "median":
		cyco_result = median(cyco_list)
	elif cyco_selection == "max":
		cyco_result = max(cyco_list)
	elif cyco_selection == "min":
		cyco_result = min(cyco_list)
	elif cyco_selection == "sum":
		cyco_result = sum(cyco_list)
		
	if addl_selection == "mean":
		addl_result = Average(addl_list)
	elif addl_selection == "median":
		addl_result = median(addl_list)
	elif addl_selection == "max":
		addl_result = max(addl_list)
	elif addl_selection == "min":
		addl_result = min(addl_list)
	elif addl_selection == "sum":
		addl_result = sum(addl_list)
		
	if reml_selection == "mean":
		reml_result = Average(reml_list)
	elif reml_selection == "median":
		reml_result = median(reml_list)
	elif reml_selection == "max":
		reml_result = max(reml_list)
	elif reml_selection == "min":
		reml_result = min(reml_list)
	elif reml_selection == "sum":
		reml_result = sum(reml_list)
	
	val = (int(comm_result), int(adev_result), int(ddev_result), int(exp_result), int(oexp_result), int(modd_result), int(mods_result), int(nloc_result), int(cyco_result), int(addl_result), int(reml_result), revi, refa, bugf, auth, eaddl, addm, adda, ereml, remm, rema, cchl, cchm, ccha, maxc, avgc, aage, wage)

	mycursor.execute(sql54, val)
	target_db.commit()
	
sql58 = "SELECT * FROM " + database + "." + software + "_extended_file_dataset" 
mycursor.execute(sql58)
result_set44 = mycursor.fetchall()

comm_list = []
adev_list = []
ddev_list = []
exp_list = []
oexp_list = []
modd_list = []
mods_list = []
nloc_list = []
cyco_list = []
faddl_list = []
freml_list = []
revi_list = []
refa_list = []
bugf_list = []
auth_list = []
addl_list = []
addm_list = []
adda_list = []
reml_list = []
remm_list = []
rema_list = []
cchl_list = []
cchm_list = []
ccha_list = []
maxc_list = []
avgc_list = []
aage_list = []
wage_list = []
mark_list = []

for elem in result_set44:
	comm_list.append(int(elem[0]))
	adev_list.append(int(elem[1]))
	ddev_list.append(int(elem[2]))
	exp_list.append(int(elem[3]))
	oexp_list.append(int(elem[4]))
	modd_list.append(int(elem[5]))
	mods_list.append(int(elem[6]))
	nloc_list.append(int(elem[7]))
	cyco_list.append(int(elem[8]))
	faddl_list.append(int(elem[9]))
	freml_list.append(int(elem[10]))
	revi_list.append(int(elem[11]))
	refa_list.append(int(elem[12]))
	bugf_list.append(int(elem[13]))
	auth_list.append(int(elem[14]))
	addl_list.append(int(elem[15]))
	addm_list.append(int(elem[16]))
	adda_list.append(int(elem[17]))
	reml_list.append(int(elem[18]))
	remm_list.append(int(elem[19]))
	rema_list.append(int(elem[20]))
	cchl_list.append(int(elem[21]))
	cchm_list.append(int(elem[22]))
	ccha_list.append(int(elem[23]))
	maxc_list.append(int(elem[24]))
	avgc_list.append(int(elem[25]))
	aage_list.append(float(elem[26]))
	wage_list.append(float(elem[27]))
	mark_list.append("?")

filename = software + "_extended_file_dataset.arff"
file = open(filename, "w")

file.write("@relation " + software + "_file_dataset")
file.write("\n")
file.write("\n")
file.write("@attribute comm numeric")
file.write("\n")
file.write("@attribute adev numeric")
file.write("\n")
file.write("@attribute ddev numeric")
file.write("\n")
file.write("@attribute exp numeric")
file.write("\n")
file.write("@attribute oexp numeric")
file.write("\n")
file.write("@attribute modd numeric")
file.write("\n")
file.write("@attribute mods numeric")
file.write("\n")
file.write("@attribute nloc numeric")
file.write("\n")
file.write("@attribute cyco numeric")
file.write("\n")
file.write("@attribute faddl numeric")
file.write("\n")
file.write("@attribute freml numeric")
file.write("\n")
file.write("@attribute revi numeric")
file.write("\n")
file.write("@attribute refa numeric")
file.write("\n")
file.write("@attribute bugf numeric")
file.write("\n")
file.write("@attribute auth numeric")
file.write("\n")
file.write("@attribute addl numeric")
file.write("\n")
file.write("@attribute addm numeric")
file.write("\n")
file.write("@attribute adda numeric")
file.write("\n")
file.write("@attribute reml numeric")
file.write("\n")
file.write("@attribute remm numeric")
file.write("\n")
file.write("@attribute rema numeric")
file.write("\n")
file.write("@attribute cchl numeric")
file.write("\n")
file.write("@attribute cchm numeric")
file.write("\n")
file.write("@attribute ccha numeric")
file.write("\n")
file.write("@attribute maxc numeric")
file.write("\n")
file.write("@attribute avgc numeric")
file.write("\n")
file.write("@attribute aage numeric")
file.write("\n")
file.write("@attribute wage numeric")
file.write("\n")
file.write("@attribute label {defective,clean}")
file.write("\n")
file.write("\n")
file.write("@data")
file.write("\n")

counter = len(mark_list)

for i in range(counter):
	line = (str(comm_list[i]) + "," + str(adev_list[i]) + "," + str(ddev_list[i]) + "," + str(exp_list[i]) + "," + str(oexp_list[i]) + "," + str(modd_list[i]) + "," + str(mods_list[i]) + "," + str(nloc_list[i]) + "," + str(cyco_list[i]) + "," + str(faddl_list[i]) + "," + str(freml_list[i]) + "," + str(revi_list[i]) + "," + str(refa_list[i]) + "," + str(bugf_list[i]) + "," + str(auth_list[i]) + "," + str(addl_list[i]) + "," + str(addm_list[i]) + "," + str(adda_list[i]) + "," + str(reml_list[i]) + "," + str(remm_list[i]) + "," + str(rema_list[i]) + "," + str(cchl_list[i]) + "," + str(cchm_list[i]) + "," + str(ccha_list[i]) + "," + str(maxc_list[i]) + "," + str(avgc_list[i]) + "," + str(aage_list[i]) + "," + str(wage_list[i]) + "," + mark_list[i])
	file.write(line)
	file.write("\n")
	
print("     ... Finished creation of extended file-based data set.")	

mycursor.execute("ALTER TABLE " + database + "." + software + "_file_dataset DROP COLUMN release_number")
mycursor.execute("ALTER TABLE " + database + "." + software + "_file_dataset DROP COLUMN filename")
mycursor.execute("ALTER TABLE " + database + "." + software + "_feature_dataset DROP COLUMN release_number")
mycursor.execute("ALTER TABLE " + database + "." + software + "_feature_dataset DROP COLUMN feature")

print("Finished creation of all three data sets. Please use generated .arff files in WEKA as test data set.")

#########################
#########################
#########################