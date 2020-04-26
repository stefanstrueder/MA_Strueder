# Script to check if commit message contains keywords which indicate bugfixing commits.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# Usage of library re to use regular expressions.
# By Stefan Strueder, 2019.

import mysql.connector
import re

# Function to find word in a string using regexps
def findWord(word):
    return re.compile(r'\b({0})\b'.format(word), flags=re.IGNORECASE).search

#Iinitialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "ENTER_HERE", database = "ENTER_HERE")
mycursor = target_db.cursor()

# Name of software project"
software = "ENTER_HERE"

# Queries to get all rows from table and to insert into new table
query1 = "SELECT * FROM " + software
query2 = "INSERT INTO " + software + "_new (name, release_number, commit_hash, commit_author, commit_msg, filename, nloc, cycomplexity, lines_added, lines_removed, change_type, diff, corrective, bug_introducing, feature) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

# Execute query and fetch all rows
mycursor.execute(query1)
result_set = mycursor.fetchall()
count = mycursor.rowcount

# Search in commit_msg for fix, bug, error fail, ..., then insert results into new table
for row in result_set:
	
	txt = row[4]
	txt = txt.lower()

	if findWord("fix")(txt) or findWord("bug")(txt) or findWord("error")(txt) or findWord("fail")(txt) or findWord("fixes")(txt) or findWord("fixed")(txt) or findWord("bugfix")(txt) or findWord("bugs")(txt):
		try:
			val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], "true", "tbd", row[13])
			mycursor.execute(query2, val)
			target_db.commit()
			count = count - 1
			print("True detected. Still to do: " + str(count))
		except:
			val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], "true", "tbd", "infinity")
			mycursor.execute(query2, val)
			target_db.commit()
			count = count - 1
			print("True detected. Still to do: " + str(count))
			
	else:
		try:
			val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], "false", "tbd", row[13])
			mycursor.execute(query2, val)
			target_db.commit()
			count = count - 1
			print("False detected. Still to do: " + str(count))
		except:
			val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], "false", "tbd", "infinity")
			mycursor.execute(query2, val)
			target_db.commit()
			count = count - 1
			print("False detected. Still to do: " + str(count))

print("Finished.")