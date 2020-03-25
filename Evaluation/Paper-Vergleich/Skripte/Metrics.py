# Script to calculate code-based metrics.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2020.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset_evaluation_message")
mycursor = target_db.cursor()

softwares = ["blender", "busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

# Calculate metrics for each software project and enter results in new table
for software in softwares:
	query1 = "SELECT release_number, filename, count(distinct commit_hash) AS revi, count(distinct commit_author) as auth from " + software + " group by release_number, filename"
	query2 = "SELECT release_number, filename, count(distinct commit_hash) AS refa from " + software + " where refactor = \"true\" group by release_number, filename"
	query3 = "SELECT release_number, filename, count(distinct commit_hash) AS bugf from " + software + " where corrective = \"true\" group by release_number, filename"
	
	mycursor.execute(query1)
	result_set1 = mycursor.fetchall()
	
	mycursor.execute(query2)
	result_set2 = mycursor.fetchall()
	
	mycursor.execute(query3)
	result_set3 = mycursor.fetchall()
	
	rs2 = []
	rs3 = []
	rs2_values = []
	rs3_values = []
	
	for elem in result_set2:
		first = elem[0]
		second = elem[1]
		third = elem[2]
		
		refa = str(first) + ":::" + str(second)
		rs2.append(refa)
		rs2_values.append(third)
		
	for elem in result_set3:
		first = elem[0]
		second = elem[1]
		third = elem[2]
		
		bugf = str(first) + ":::" + str(second)
		rs3.append(bugf)
		rs3_values.append(third)
		
	for elem in result_set1:
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
		
		val = (software, rel, file, revi, refa, bugf, auth)
		query4 = "INSERT INTO " + software + "_metrics (name, release_number, filename, revi, refa, bugf, auth) VALUES (%s, %s, %s, %s, %s, %s, %s)"
		mycursor.execute(query4, val)
		target_db.commit()
		print("Sth happened for: " + software)

		