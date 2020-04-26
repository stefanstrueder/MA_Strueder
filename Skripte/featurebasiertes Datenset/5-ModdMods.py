# Script to calculate modd and mods metrics on feature level.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2019.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "ENTER_HERE", database = "ENTER_HERE")
mycursor = target_db.cursor()

# List of involved software projects 
softwares = ["busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

# Calculate modd and mods metrics for each feature in each release
for software in softwares:
	
	query1 = "select release_number, feature, count(commit_hash) as modd from " + software + " where feature != \"none\" group by release_number, feature"
	query2 = "select release_number, count(distinct feature) from " + software + " group by release_number"
	
	mycursor.execute(query1)
	result_set = mycursor.fetchall()
	
	mycursor.execute(query2)
	result_set1 = mycursor.fetchall()
	
	valueList = []
	moddList = []
	relList = []
	countList = []
	
	for row in result_set:
		release = row[0]
		feature = row[1]
		modd = row[2]
		
		value = release + ":::" + feature
		valueList.append(value)
		moddList.append(modd)
		
	for row in result_set1:
		release = row[0]
		count = row[1]
		
		relList.append(release)
		countList.append(count)

	query3 = "SELECT * FROM " + software + "_feat_metrics"
	query4 = "INSERT INTO " + software + "_feat_metrics_new (name, release_number, feature, comm, adev, ddev, exp, oexp, modd, mods) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
	
	mycursor.execute(query3)
	result_set2 = mycursor.fetchall()
	
	counter = 0
	
	for elem in result_set2:
		release = elem[1]
		feature = elem[2]	
		val = release + ":::" + feature
		
		try:
			index = valueList.index(val)
			modd = str(int(moddList[index]))
		
			ind = relList.index(release)
			mods = str(int(countList[ind]))
		
			val = (elem[0], elem[1], elem[2], elem[3], elem[4], elem[5], elem[6], elem[7], modd, mods)
			mycursor.execute(query4, val)
			target_db.commit()
			counter = counter + 1
			print("Sth happening for " + software + ": " + str(counter))
		
		except:
			continue