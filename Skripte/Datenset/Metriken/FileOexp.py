# Script to calculate OEXP metric on file level.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2019.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset_message")
mycursor = target_db.cursor()

# List of involved software projects 
softwares = ["busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

# Calculate oexp metric for each file in each release
for software in softwares:
	
	query1 = "SELECT release_number, filename, MAX(commit_author) FROM dataset." + software + " GROUP BY release_number, filename"
	
	mycursor.execute(query1)
	result_set = mycursor.fetchall()
	
	valueList = []
	oexpList = []
	
	for row in result_set:
		release = row[0]
		filename = row[1]
		author = row[2]
		
		query2 = "SELECT lines_added, lines_removed FROM dataset." + software + " WHERE release_number = \"" + release + "\" AND filename = \"" + filename + "\" and commit_author = \"" + author + "\""
		
		mycursor.execute(query2)
		result_set1 = mycursor.fetchall()
		
		oexp = 0
		
		for elem in result_set1:
			exp = int(elem[0]) + int(elem[1])
			oexp = exp + oexp
		
		valueList.append(release + ":::" + filename)
		oexpList.append(str(oexp))
		print("appended: " + str(len(oexpList)) + " " + str(oexp) + " " + software)
	
	query3 = "SELECT * FROM " + software + "_file_metrics"
	query4 = "INSERT INTO " + software + "_file_metrics_new (name, release_number, filename, comm, adev, ddev, exp, oexp) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)"
	
	mycursor.execute(query3)
	result_set2 = mycursor.fetchall()
	
	for e in result_set2:
		v = e[1] + ":::" + e[2]

		index = valueList.index(v)
		value = str(int(oexpList[index]))
		
		val = (software, e[1], e[2], e[3], e[4], e[5], e[6], value)
		mycursor.execute(query4, val)
		target_db.commit()