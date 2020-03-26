# Script to label bug introducing commits.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2020.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset_message")
mycursor = target_db.cursor()

softwares = ["blender", "busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

for software in softwares:

	# Queries to get all rows from table and to insert into new table
	query1 = "SELECT * FROM " + software + "_szz"

	# Execute query and get all rows
	mycursor.execute(query1)
	result_set = mycursor.fetchall()

	szzlist = []

	counter = 0

	for row in result_set:
		filename = row[3]
		bugs = list(row[4].replace("{", "").replace("}", "").replace("'", "").replace(" ", "").split(","))
		
		for elem in bugs:
			szzlist.append(filename + ":::" + elem)
			
	query2 = "SELECT * FROM blender4"
	mycursor.execute(query2)
	result_set1 = mycursor.fetchall()

	for row in result_set1:
		name = row[5]
		hash = row[2]
		
		concat = name + ":::" + hash
		query3 = "INSERT INTO blender4_new (name, release_number, commit_hash, commit_author, commit_msg, filename, nloc, cycomplexity, lines_added, lines_removed, change_type, diff, corrective, bug_introducing, feature) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
		
		try:
			if concat in szzlist:
				val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], "true", row[14])
				mycursor.execute(query3, val)
				target_db.commit()
				counter = counter + 1
				print("True detected: " + str(counter))
			else:
				val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], "false", row[14])
				mycursor.execute(query3, val)
				target_db.commit()
				counter = counter + 1
				print("False detected: " + str(counter))
		except:
			if concat in szzlist:
				val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], "true", "infinity")
				mycursor.execute(query3, val)
				target_db.commit()
				counter = counter + 1
				print("True with ERROR detected: " + str(counter))
			else:
				val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], "false", "infinity")
				mycursor.execute(query3, val)
				target_db.commit()
				counter = counter + 1
				print("False with ERROR detected: " + str(counter))