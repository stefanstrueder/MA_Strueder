# Script to calculate EXP metric on file level.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2019.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset_message")
mycursor = target_db.cursor()

# List of involved software projects 
softwares = ["busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

# Calculate exp metric for each file in each release
for software in softwares:
	
	query1 = "SELECT DISTINCT release_number FROM " + software
	
	mycursor.execute(query1)
	result_set1 = mycursor.fetchall()
	
	releaseList = []
	
	for row in result_set1:
		releaseList.append(row[0])
	
	query3 = "SELECT release_number, filename, commit_author, lines_added, lines_removed FROM dataset." + software + " WHERE filename = %s AND release_number = %s GROUP BY release_number, filename, commit_author"
	
	valueList = []
	meanList = []
	
	for release in releaseList:
		
		query2 = "SELECT DISTINCT filename FROM " + software + " WHERE release_number = \"" + release + "\""
		
		mycursor.execute(query2)
		result_set = mycursor.fetchall()
		
		filenameList = []
		
		for elem in result_set:
			filenameList.append(elem[0])

		for filename in filenameList:
			
			val = (filename, release)
			mycursor.execute(query3, val)
			result_set2 = mycursor.fetchall()
	
			if len(result_set2) == 0:
				continue
			else:
				val = 1
				counter = 0
				for elem in result_set2:
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
				value = release + ":::" + filename
				valueList.append(value)
				meanList.append(mean)
				print("appended: " + str(len(meanList)) + " " + value)


	query4 = "SELECT * FROM " + software + "_file_metrics"
	query5 = "INSERT INTO " + software + "_file_metrics_new (name, release_number, filename, comm, adev, ddev, exp) VALUES (%s, %s, %s, %s, %s, %s, %s)"
	
	mycursor.execute(query4)
	result_set3 = mycursor.fetchall()
	
	for e in result_set3:
		v = e[1] + ":::" + e[2]

		index = valueList.index(v)
		mean = str(int(meanList[index]))
		
		val = (software, e[1], e[2], e[3], e[4], e[5], mean)
		mycursor.execute(query5, val)
		target_db.commit()