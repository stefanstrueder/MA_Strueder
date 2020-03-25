# Script to create final table.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2020.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset_evaluation_feat_message")
mycursor = target_db.cursor()

# List of involved software projects 
softwares = ["blender", "busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

# Extract metrics and enter in final table
for software in softwares:
	
	query1 = "SELECT * FROM " + software + "_final"
	
	mycursor.execute(query1)
	result_set = mycursor.fetchall()
	
	counter = 0
	
	for elem in result_set:
		revi = elem[3]
		refa = elem[4]
		bugf = elem[5]
		auth = elem[6]
		addl = elem[7]
		addm = elem[8]
		adda = elem[9]
		reml = elem[10]
		remm = elem[11]
		rema = elem[12]
		cchl = elem[13]
		cchm = elem[14]
		ccha = elem[15]
		maxc = elem[16]
		avgc = elem[17]
		aage = elem[18]
		wage = elem[19]
		label = elem[20]

		query2 = "INSERT INTO final (revi, refa, bugf, auth, addl, addm, adda, reml, remm, rema, cchl, cchm, ccha, maxc, avgc, aage, wage, label) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
		val = (revi, refa, bugf, auth, addl, addm, adda, reml, remm, rema, cchl, cchm, ccha, maxc, avgc, aage, wage, label)

		mycursor.execute(query2, val)
		target_db.commit()
		counter = counter + 1
		print("Sth happening for " + software + ": " + str(counter))