# Script to extract and mark bug introducing commits.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2019.
# DEPRECATED -> see New_BugFinder.py

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset")
mycursor = target_db.cursor()

# Enter name of software project
software = "ENTER_NAME"

# Queries to get all rows from table and to insert into new table
query1 = "SELECT * FROM " + software + "_szz"

# Execute query and get all rows
mycursor.execute(query1)
result_set = mycursor.fetchall()

# Basic ocunter
counter = 0

# Mark for each line from szz table the corresponding commits in base table
for row in result_set:
		filename = row[3]
		bugs = list(row[4].replace("{", "").replace("}", "").replace("'", "").replace(" ", "").split(","))
		
		for bug in bugs:
			query2 = "UPDATE " + software + " SET bug_introducing = %s WHERE filename = %s AND commit_hash = %s"
			val = ("true", filename, bug)
			mycursor.execute(query2, val)
			target_db.commit()
			counter = counter + 1
			print("Done: " + str(counter))

# Set all non-bug-introducing commits to "false"			
query3 = "UPDATE " + software + " SET bug_introducing = %s WHERE bug_introducing = %s"
val = ("false", "tbd")
mycursor.execute(query3, val)
target_db.commit()