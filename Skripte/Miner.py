from pydriller import RepositoryMining
import mysql.connector
import time

#initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "******", database = "dataset")
mycursor = target_db.cursor()

#metadata of software
software = "gnumeric"
release = "1_12_30"

#sql query to insert mined data into db
sql = "INSERT INTO " + software + " (name, release_number, commit_hash, commit_author, commit_msg, filename, nloc, cycomplexity, lines_added, lines_removed, change_type, diff) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

#tag-range to define release (based on tags from git repo)
from_tag = "GNUMERIC_1_12_30"
to_tag = "GNUMERIC_1_12_40"

#basic counter
counter = 1

#mine every commit in master branch in tag-range without merges
for c in RepositoryMining("https://gitlab.gnome.org/GNOME/gnumeric.git", from_tag = from_tag, to_tag = to_tag, only_no_merge = True, only_in_branch = "master").traverse_commits():
	for m in c.modifications:
		val = (software, release, c.hash, c.author.name, str(c.msg).replace("\n", " "), m.filename, str(m.nloc), str(m.complexity), str(m.added), str(m.removed), m.change_type.name, str(m.diff).replace("\n", " "))
		#print("hash {} author {} msg {} filename {} nloc {} cc {} added {} removed {} type {}".format(c.hash, c.author.name, str(c.msg).replace("\n", " "), m.filename, m.nloc, m.complexity, m.added, m.removed, m.change_type))
		mycursor.execute(sql, val)
		target_db.commit()
		print("Commit number " + str(counter) + " inserted. Time: " + time.strftime("%H:%M:%S"))
		counter = counter + 1
		
print("Finished. Counter: " + str(counter - 1) + ". For release: " + from_tag + ".")