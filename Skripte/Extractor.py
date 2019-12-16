# Script to extract features from diffs.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2019.

import mysql.connector
import re

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset")
mycursor = target_db.cursor()

# Queries to get all rows from table and to insert into new table
query1 = "SELECT * FROM ENTER_HERE"
query2 = "INSERT INTO ENTER_HERE (name, release_number, commit_hash, commit_author, commit_msg, filename, nloc, cycomplexity, lines_added, lines_removed, change_type, diff, status, feature) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

# Execute query and get all rows
mycursor.execute(query1)
result_set = mycursor.fetchall()
count = mycursor.rowcount

# Basic counter
counter = 0

# Search in diff for #ifdef and insert features into new table
for row in result_set:
	
	diff = row[11]
	diff = diff.lower()
	match = re.findall(r'#\s*ifdef (\S+)', diff)
	
	if match:
		match = list(dict.fromkeys(match))
		features = " ".join(match)
		val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], features)
		mycursor.execute(query2, val)
		target_db.commit()
		counter = counter + 1
		print("Found: " + features)
	else:
		val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], "none")
		mycursor.execute(query2, val)
		target_db.commit()
		counter = counter + 1
		print("Found nothing.")
		
print("Finished after " + str(counter) + " steps.")