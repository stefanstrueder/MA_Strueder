# Script to calculate DDEV metric on file level.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2019.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset")
mycursor = target_db.cursor()

# List of involved software projects 
softwares = ["blender", "busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

# Calculate ddev metric for each file in each release
for software in softwares:
	
	query1 = "SELECT DISTINCT filename FROM " + software + "_file_metrics"
	query2 = "INSERT INTO " + software + "_file_metrics_new (name, release_number, filename, comm, adev, ddev) VALUES (%s, %s, %s, %s, %s, %s)"
	
	mycursor.execute(query1)
	result_set = mycursor.fetchall()
	
	for row in result_set:
		filename = row[0]
		query3 = "SELECT * FROM " + software + "_file_metrics WHERE filename = \"" + filename + "\""
		mycursor.execute(query3)
		result_set = mycursor.fetchall()
		
		ddev = 0
		
		for elem in result_set:
			ddev = ddev + int(elem[4])
			val = (elem[0], elem[1], elem[2], elem[3], elem[4], ddev)
			mycursor.execute(query2, val)
			target_db.commit()
			
		
		
		