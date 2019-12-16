# Script to splitt chained features into indivudual rows.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2019.
# UPDATE TO BE DONE!

from pydriller import RepositoryMining
import mysql.connector
import re
import time

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset")
mycursor = target_db.cursor()

# Metadata of software
database = "ENTER_HERE"
software = "ENTER_HERE"
release = "ENTER_HERE"

# SQL query to insert mined data into db
sql = "INSERT INTO " + database + " (name, release_number, commit_hash, commit_author, commit_msg, filename, nloc, cycomplexity, lines_added, lines_removed, change_type, diff, status, feature) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

# Tag-range to define release (based on tags from git repo)
from_tag = "ENTER_HERE"
to_tag = "ENTER_HERE"

# Basic counter
counter = 1

# Mine every commit in master branch in tag-range without merges
for c in RepositoryMining("ENTER_HERE", from_tag = from_tag, to_tag = to_tag, only_no_merge = True, only_in_branch = "master").traverse_commits():
	for m in c.modifications:
		
		msg = str(c.msg).replace("\n", " ").lower()
		if "fix" in msg or "bug" in msg or "error" in msg or "fail" in msg:
			corrective = "true"
		else:
			corrective = "false"
			
		diff = m.diff.lower()
		match = re.findall(r'#\s*ifdef (\S+)', diff)
		
		if match:
			match = list(dict.fromkeys(match))
			features = " , ".join(match)
		else:
			features = "none"
	
		val = (software, release, c.hash, c.author.name, msg, m.filename, str(m.nloc), str(m.complexity), str(m.added), str(m.removed), m.change_type.name, str(m.diff), corrective, features)
		mycursor.execute(sql, val)
		target_db.commit()
		print("Commit number " + str(counter) + " inserted. Time: " + time.strftime("%H:%M:%S"))
		counter = counter + 1
		
print("Finished. Counter: " + str(counter - 1) + ". For release: " + from_tag + ".")