# Script to identify bug-fixing commits.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2020.

from pydriller import RepositoryMining
import re
import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****")
mycursor = target_db.cursor()

softwares = ["blender1", "blender2", "blender3", "blender4", "busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

# Function to find word in a string using regexps
def findWord(word):
    return re.compile(r'\b({0})\b'.format(word), flags=re.IGNORECASE).search

# Execute identification for each software
for software in softwares:
	query1 = "SELECT * FROM dataset_message." + software
	query2 = "INSERT INTO dataset_message." + software + "_new (name, release_number, commit_hash, commit_author, commit_msg, filename, nloc, cycomplexity, lines_added, lines_removed, change_type, diff, corrective, bug_introducing, feature) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

	mycursor.execute(query1)
	result_set = mycursor.fetchall()

	count = mycursor.rowcount
	
	for row in result_set:
		msg = row[4]
		first_line = msg.partition("\n")[0]
		
		if findWord("fix")(first_line) or findWord("bug")(first_line) or findWord("error")(first_line) or findWord("fail")(first_line) or findWord("fixes")(first_line) or findWord("fixed")(first_line) or findWord("bugfix")(first_line) or findWord("bugs")(first_line):
			try:
				val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], "true", row[13], row[14])
				mycursor.execute(query2, val)
				target_db.commit()
				count = count - 1
				print("True detected. Still to do: " + str(count) + " for software: " + software)
			except:
				val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], "true", row[13], "infinity")
				mycursor.execute(query2, val)
				target_db.commit()
				count = count - 1
				print("True detected. Still to do: " + str(count) + " for software: " + software)
				
		else:
			try:
				val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], "false", row[13], row[14])
				mycursor.execute(query2, val)
				target_db.commit()
				count = count - 1
				print("False detected. Still to do: " + str(count) + " for software: " + software)
			except:
				val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], "false", row[14], "infinity")
				mycursor.execute(query2, val)
				target_db.commit()
				count = count - 1
				print("False detected. Still to do: " + str(count) + " for software: " + software)
	
	print("Finished for software: " + software)
