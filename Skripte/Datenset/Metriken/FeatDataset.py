# Script to create dataset table from each software on feature level.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2020.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset_message")
mycursor = target_db.cursor()

# List of involved software projects 
softwares = ["blender", "busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

# Insert metrics and label into new table
for software in softwares:
	
	query1 = "SELECT comm, adev, ddev, exp, oexp, modd, mods, nloc, cyco, addl, reml, label FROM dataset." + software + "_feat_final;"
	
	mycursor.execute(query1)
	result_set = mycursor.fetchall()
	
	counter = 0
	
	for elem in result_set:
		comm = elem[0]
		adev = elem[0]
		ddev = elem[2]
		exp = elem[3]
		oexp = elem[4]
		modd = elem[5]
		mods = elem[6]
		nloc = elem[7]
		cyco = elem[8]
		addl = elem[9]
		reml = elem[10]
		label = elem[11]
		
		query3 = "INSERT INTO feat_final (comm, adev, ddev, exp, oexp, modd, mods, nloc, cyco, addl, reml, label) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
		val = (comm, adev, ddev, exp, oexp, modd, mods, nloc, cyco, addl, reml, label)

		mycursor.execute(query3, val)
		target_db.commit()
		counter = counter + 1
		print("Sth happening for " + software + ": " + str(counter))