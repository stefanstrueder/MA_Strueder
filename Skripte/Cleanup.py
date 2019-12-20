# Script to clean feature names from unwanted characters.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2019.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset")
mycursor = target_db.cursor()

# Queries to get all rows from table and to insert into new table
query1 = "SELECT * FROM ENTER_NAME"
query2 = "INSERT INTO ENTER_NAME (name, release_number, commit_hash, commit_author, commit_msg, filename, nloc, cycomplexity, lines_added, lines_removed, change_type, diff, status, feature) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

# Execute query and get all rows
mycursor.execute(query1)
result_set = mycursor.fetchall()

# Basic counter
counter = 0

# Clean each feature and insert results into new table.
for row in result_set:
	feature = str(row[13])
	feature = feature.replace(")", "").replace(";", "").replace("\"", "").replace("\\n", "").replace("'", "").replace("’","").replace(".","").replace(",","").replace("(","").replace("\s*$|\#if","")
	val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], feature)
	mycursor.execute(query2, val)
	target_db.commit()
	counter = counter + 1
	print("Sth is happening: " + str(counter))