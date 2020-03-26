# Script to calculate comm and adev feature metrics based on data from tables.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2019.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset_message")
mycursor = target_db.cursor()

# List of involved software projects 
softwares = ["blender", "busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

# Calculate comm and adev metrics for each feature in each release
for software in softwares:
	
	query1 = "SELECT release_number, feature, count(distinct commit_hash) AS comm, count(distinct commit_author) AS adev FROM " + software + " WHERE feature != \"none\" GROUP BY release_number, feature"
	query2 = "INSERT INTO " + software + "_feat_metrics (name, release_number, feature, comm, adev) VALUES (%s, %s, %s, %s, %s)"

	mycursor.execute(query1)
	result_set = mycursor.fetchall()

	error_counter = 0

	for row in result_set:
		try:
			val = (software, row[0], row[1], row[2], row[3])
			mycursor.execute(query2, val)
			target_db.commit()
		except:
			val = (software, row[0], "infinity", row[2], row[3])
			mycursor.execute(query2, val)
			error_counter = error_counter + 1
			target_db.commit()
	
	print("software error counter: "+ str(error_counter) + ". Please solve problem manually.")
