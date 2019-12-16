# Script to splitt chained features into indivudual rows.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2019.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset")
mycursor = target_db.cursor()

# List of involved software projects 
softwares = ["blender", "busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

# Execute for each project
for software in softwares:
	
	# Queries to calculate metrics + to insert results into metrics tables
	query1 = "SELECT release_number, feature, count(distinct commit_hash) AS comm, count(distinct commit_author) AS adev FROM " + software + " WHERE feature != \"none\" GROUP BY release_number, feature"
	query2 = "INSERT INTO " + software + "_metrics (name, release_number, feature, comm, adev) VALUES (%s, %s, %s, %s, %s)"

	# Execute query
	mycursor.execute(query1)
	result_set = mycursor.fetchall()
	
	# Basic counter
	error_counter = 0

	# Store results in metrics tables
	for row in result_set:
		try:
			val = (software, row[0], row[1], row[2], row[3])
			mycursor.execute(query2, val)
			target_db.commit()
		except:
			val = (software, row[0], "ERROR", row[2], row[3])
			mycursor.execute(query2, val)
			error_counter = error_counter + 1
			target_db.commit()
	
	print("software error counter: "+ str(error_counter) + ". Please solve problem manually.")
