# Script to gather commit data from Git repositories based to tag-structure.
# Gathered data will be stored in MySQL database.
# Usage of external libraries MySQL Connector and PyDriller.
# By Stefan Strueder, 2019.

from pydriller import RepositoryMining
import mysql.connector
import time

# Initialize connection to MySQL database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset")
mycursor = target_db.cursor()

# Metadata of software
software = "ENTER_NAME"
release = "ENTER_NAME"

# SQL query to insert gathered data into db
sql = "INSERT INTO " + software + " (name, release_number, commit_hash, commit_author, commit_msg, filename, nloc, cycomplexity, lines_added, lines_removed, change_type, diff) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

# Tag-range to define release (based on tags from Git repo)
from_tag = "ENTER_NAME"
to_tag = "ENTER_NAME"

# Basic counter
counter = 1

# Gather every commit in master branch in tag-range without merges
for c in RepositoryMining("ENTER_NAME", from_tag = from_tag, to_tag = to_tag, only_no_merge = True, only_in_branch = "master").traverse_commits():
	for m in c.modifications:
		val = (software, release, c.hash, c.author.name, str(c.msg).replace("\n", " "), m.filename, str(m.nloc), str(m.complexity), str(m.added), str(m.removed), m.change_type.name, str(m.diff))
		mycursor.execute(sql, val)
		target_db.commit()
		print("Commit number " + str(counter) + " inserted. Time: " + time.strftime("%H:%M:%S"))
		counter = counter + 1
		
print("Finished. Counter: " + str(counter - 1) + ". For release: " + from_tag + ".")