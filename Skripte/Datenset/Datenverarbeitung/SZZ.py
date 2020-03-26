# Script to perfor szz algorithm.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2019.

from pydriller.git_repository import GitRepository
import mysql.connector
import ntpath

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset_message")
mycursor = target_db.cursor()

# Queries to get all rows from table and to insert into new table
query1 = "SELECT distinct commit_hash FROM blender4 where corrective = \"true\""
query2 = "INSERT INTO blender_szz (name, commit_hash, filepath, filename, bug_introducing) VALUES (%s, %s, %s, %s, %s)"

# Execute query and get all rows
mycursor.execute(query1)
result_set = mycursor.fetchall()

gr = GitRepository("ENTER_HERE")

counter = 0

for row in result_set:
	try:
		buggy_commits = gr.get_commits_last_modified_lines(gr.get_commit(row[0]))
		if len(buggy_commits) == 0:
			continue
		else:
			items = buggy_commits.items()
			for item in items:
				filename = item[0]
				filename = ntpath.basename(filename)
				val = ("blender", row[0], item[0], filename, str(item[1]))
				mycursor.execute(query2, val)
				target_db.commit()
				#print(str(item[0] + " >>> " + str(item[1])))
				counter = counter + 1
				print("Sth happening. " + str(counter) + " for: blender4")
	except:
		print("FEHLER!")
		continue