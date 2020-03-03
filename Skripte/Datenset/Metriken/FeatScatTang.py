# Script to calculate scat and tang metrics on feature level.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2019.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset")
mycursor = target_db.cursor()

# List of involved software projects 
softwares = ["busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

# Calculate scat and tang metrics for each feature in each release
for software in softwares:
	
	query1 = "select release_number, feature, count(commit_hash) as scat from dataset." + software + " where feature != \"none\" group by release_number, feature"
	query2 = "select release_number, count(distinct feature) from dataset." + software + " group by release_number"
	
	mycursor.execute(query1)
	result_set = mycursor.fetchall()
	
	mycursor.execute(query2)
	result_set1 = mycursor.fetchall()
	
	valueList = []
	scatList = []
	relList = []
	countList = []
	
	for row in result_set:
		release = row[0]
		feature = row[1]
		scat = row[2]
		
		value = release + ":::" + feature
		valueList.append(value)
		scatList.append(scat)
		
	for row in result_set1:
		release = row[0]
		count = row[1]
		
		relList.append(release)
		countList.append(count)

	query3 = "SELECT * FROM " + software + "_feat_metrics"
	query4 = "INSERT INTO " + software + "_feat_metrics_new (name, release_number, feature, comm, adev, ddev, exp, oexp, scat, tang) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
	
	mycursor.execute(query3)
	result_set2 = mycursor.fetchall()
	
	counter = 0
	
	for elem in result_set2:
		release = elem[1]
		feature = elem[2]	
		val = release + ":::" + feature
		
		try:
			index = valueList.index(val)
			scat = str(int(scatList[index]))
		
			ind = relList.index(release)
			tang = str(int(countList[ind]))
		
			val = (elem[0], elem[1], elem[2], elem[3], elem[4], elem[5], elem[6], elem[7], scat, tang)
			mycursor.execute(query4, val)
			target_db.commit()
			counter = counter + 1
			print("Sth happening for " + software + ": " + str(counter))
		
		except:
			continue