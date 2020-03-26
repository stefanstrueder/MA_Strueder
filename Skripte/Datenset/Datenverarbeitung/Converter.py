# Script to crawl for dates of each commit.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# Usage of external library PyDriller.
# By Stefan Strueder, 2020.

from pydriller import RepositoryMining
import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****")
mycursor = target_db.cursor()

softwares = ["blender", "busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

# Crawl for each software project and enter results in new table
for software in softwares:
	query1 = "SELECT distinct(commit_hash) FROM dataset_without_h." + software

	mycursor.execute(query1)
	result_set = mycursor.fetchall()

	counter = 0
	
	hash_list = []
	msg_list = []
	id_list = []
	
	for row in result_set:
		hash = str(row[0])
		id_list.append(hash)

	for commit in RepositoryMining("xfig", only_commits = id_list).traverse_commits():
		msg = commit.msg
		hash_list.append(commit.hash)
		msg_list.append(msg.lower())
		counter = counter + 1
		print("Sth happening: " + str(counter) + " " + software)
		
	query2 = "SELECT * from dataset_without_h." + software
	
	mycursor.execute(query2)
	result_set2 = mycursor.fetchall()
	length = len(result_set2)
	
	for elem in result_set2:
		id = elem[2]
		
		index = hash_list.index(id)
		msg = msg_list[index]
	
		query3 = "INSERT INTO dataset_message." + software + " (name, release_number, commit_hash, commit_author, commit_msg, filename, nloc, cycomplexity, lines_added, lines_removed, change_type, diff, corrective, bug_introducing, feature) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

		val = (elem[0], elem[1], elem[2], elem[3], msg, elem[5], elem[6], elem[7], elem[8], elem[9], elem[10], elem[11], elem[12], elem[13], elem[14])
		mycursor.execute(query3, val)
		target_db.commit()
		length = length - 1
		print("Entering " + id + " " + software + " " + str(length))