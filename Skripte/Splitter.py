# Script to split chained features into indivudual rows.
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
counter = mycursor.rowcount

# Basic counter
counter_new = 0

# Perform splitting and insert resulting data in new database
for row in result_set:
	feature_line = str(row[13])
	features = feature_line.split(" , ")
	for elem in features:
		val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], elem)
		mycursor.execute(query2, val)
		target_db.commit()
		counter_new = counter_new + 1
		print("done number: " + str(counter_new))
		
print(counter_new)