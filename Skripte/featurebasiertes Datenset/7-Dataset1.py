# First script to create final tables from each software on feature level.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2020.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "ENTER_HERE", database = "ENTER_HERE")
mycursor = target_db.cursor()

# List of involved software projects 
softwares = ["blender", "busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

# Create final table for each software and determine labels
for software in softwares:
	
	query1 = "SELECT * FROM " + software + "_feat_metrics"
	
	mycursor.execute(query1)
	result_set = mycursor.fetchall()
	
	counter = 0
	
	for row in result_set:
		release = row[1]
		feature = row[2]
		comm = row[3]
		adev = row[4]
		ddev = row[5]
		exp = row[6]
		oexp = row[7]
		modd = row[8]
		mods = row[9]
		nloc = row[10]
		cyco = row[11]
		addl = row[12]
		reml = row[13]
		
		query2 = "SELECT corrective, bug_introducing FROM " + software + " WHERE release_number = \"" + release + "\" and feature = \"" + feature + "\""
		mycursor.execute(query2)
		result_set2 = mycursor.fetchall()
		
		for elem in result_set2:
			corrective = elem[0]
			bug_introducing = elem[1]
			
			if corrective == "false" and bug_introducing == "false":
				label = "clean"
			elif corrective == "false" and bug_introducing == "true":
				label = "defective"
			elif corrective == "true" and bug_introducing == "false":
				label = "clean"
			elif corrective == "true" and bug_introducing == "true":
				label = "defective"
				
			query3 = "INSERT INTO " + software + "_feat_final (name, release_number, feature, comm, adev, ddev, exp, oexp, modd, mods, nloc, cyco, addl, reml, label) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
			val = (software, release, feature, comm, adev, ddev, exp, oexp, modd, mods, nloc, cyco, addl, reml, label)

			mycursor.execute(query3, val)
			target_db.commit()
			counter = counter + 1
			print("Sth happening for " + software + ": " + str(counter))