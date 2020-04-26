# Script to add file names to SZZ tables.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2019.

import mysql.connector
import ntpath

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "ENTER_HERE", database = "ENTER_HERE")
mycursor = target_db.cursor()

software = "ENTER_HERE"

# Queries to get all rows from table and to insert into new table
query1 = "SELECT * FROM " + software + "_szz"
query2 = "INSERT INTO " + software + "_szz_new (name, commit_hash, filepath, filename, bug_introducing) VALUES (%s, %s, %s, %s, %s)"

# Execute query and get all rows
mycursor.execute(query1)
result_set = mycursor.fetchall()

for row in result_set:
	filename = row[2]
	filename = ntpath.basename(filename)
	val = (row[0], row[1], row[2], filename, row[3])
	mycursor.execute(query2, val)
	target_db.commit()
	print("Sth is happening.")