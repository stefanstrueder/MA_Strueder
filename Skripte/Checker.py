import mysql.connector
import re

#function to search "phrase" in a "text"
#def searcher(phrase, text):
    #return re.search(r"\b{}\b".format(phrase), text, re.IGNORECASE) is not None

#initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "Bifi3131@", database = "dataset")
mycursor = target_db.cursor()

#queries to get all rows from table and to insert into new table
query1 = "SELECT * from gnumeric"
query2 = "INSERT INTO gnumeric_new (name, release_number, commit_hash, commit_author, commit_msg, filename, nloc, cycomplexity, lines_added, lines_removed, change_type, diff, status) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

#execute query1 and get all rows
mycursor.execute(query1)
result_set = mycursor.fetchall()
count = mycursor.rowcount

#search in commit_msg for fix, bug, error or fail, insert into new table
for row in result_set:
	txt = row[4]

	if "fix" in txt or "bug" in txt or "error" in txt or "fail" in txt:
	#if (searcher("fix", txt) or searcher("bug", txt) or searcher("error", txt) or searcher("fail", txt)):
		val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], "true")
		mycursor.execute(query2, val)
		target_db.commit()
		count = count - 1
		print("True detected. Still to do: " + str(count))
	else:
		val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], "false")
		mycursor.execute(query2, val)
		target_db.commit()
		count = count - 1
		print("False detected. Still to do: " + str(count))
		
print("Finished.")