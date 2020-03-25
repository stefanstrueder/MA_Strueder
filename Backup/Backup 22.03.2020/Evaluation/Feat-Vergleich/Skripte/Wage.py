# Script to calculate wage metric.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2020.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset_evaluation_feat")
mycursor = target_db.cursor()

softwares = ["blender", "busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

# Calculcate metric for each software project and enter results in new table
for software in softwares:
	query1 = "SELECT * FROM " + software + "_metrics"
	
	mycursor.execute(query1)
	result_set1 = mycursor.fetchall()
	
	for elem in result_set1:
		addl = float(elem[7])
		aage = float(elem[18])
		
		if addl == 0:
			addl = 1
			
		if aage == 0:
			aage = 1
		
		wage = round(((aage * addl) / addl), 2)
	
		val = (elem[0], elem[1], elem[2], elem[3], elem[4], elem[5], elem[6], elem[7], elem[8], elem[9], elem[10], elem[11], elem[12], elem[13], elem[14], elem[15], elem[16], elem[17], elem[18], wage)
		query2 = "INSERT INTO " + software + "_metrics_new (name, release_number, filename, revi, refa, bugf, auth, addl, addm, adda, reml, remm, rema, cchl, cchm, ccha, maxc, avgc, aage, wage) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
		mycursor.execute(query2, val)
		target_db.commit()
		print("Sth happened for: " + software)