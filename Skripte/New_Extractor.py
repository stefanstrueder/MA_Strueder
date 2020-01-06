# Script to extract features from diffs.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# Usage of library re to use regular expressions.
# By Stefan Strueder, 2019.

import mysql.connector
import re

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset")
mycursor = target_db.cursor()

# Queries to get all rows from table and to insert into new table
query1 = "SELECT name, release_number, commit_hash, commit_author, commit_msg, filename, nloc, cycomplexity, lines_added, lines_removed, change_type, diff, corrective, bug_introducing FROM ENTER_NAME GROUP BY name, release_number, commit_hash, commit_author, commit_msg, filename, nloc, cycomplexity, lines_added, lines_removed, change_type, diff, corrective, bug_introducing;"
query2 = "INSERT INTO ENTER_NAME (name, release_number, commit_hash, commit_author, commit_msg, filename, nloc, cycomplexity, lines_added, lines_removed, change_type, diff, corrective, bug_introducing, feature) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

# Execute query and get all rows
mycursor.execute(query1)
result_set = mycursor.fetchall()

# Basic counter
counter = 0

# Search in diff for #ifdef and #ifndef and insert features into new table, splitting is included
for row in result_set:

	diff = row[11]
	diff = diff.lower()
	regex1 = "\s*((#\s*ifdef\s+.*)|(#\s*ifndef\s+.*))"
	regex2 = "(#\s*ifdef\s)|(#\s*ifndef\s)"
	match = re.findall(regex1, diff)
	
	if match:
		match = list(dict.fromkeys(match))
		for entry in match:
			entry = list(dict.fromkeys(entry))
			for e in entry:
				if e == "":
					continue
				else:
					test = re.split(regex2, e)
					if test[1] != None and test[2] == None:
						print(test[3])
						feature = test[3]
						val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], row[13], feature)
						mycursor.execute(query2, val)
						target_db.commit()
					elif test[2] != None and test[1] == None:
						feature = "not " + test[3]
						print("not " + test[3])
						val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], row[13], feature)
						mycursor.execute(query2, val)
						target_db.commit()
	else:
		val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], row[13], "none")
		mycursor.execute(query2, val)
		target_db.commit()
		print("none")
		
