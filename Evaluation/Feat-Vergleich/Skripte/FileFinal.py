# Script to create initial final dataset.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2019.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset_evaluation_feat_message")
mycursor = target_db.cursor()

# List of involved software projects 
softwares = ["blender", "busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

# Execute for each software project and enter into new table
for software in softwares:
	
	query1 = "SELECT * FROM " + software + "_metrics"
	
	mycursor.execute(query1)
	result_set = mycursor.fetchall()
	
	counter = 0
	
	for row in result_set:
		release = row[1]
		filename = row[2]
		revi = row[3]
		refa = row[4]
		bugf = row[5]
		auth = row[6]
		addl = row[7]
		addm = row[8]
		adda = row[9]
		reml = row[10]
		remm = row[11]
		rema = row[12]
		cchl = row[13]
		cchm = row[14]
		ccha = row[15]
		maxc = row[16]
		avgc = row[17]
		aage = row[18]
		wage = row[19]

		query2 = "SELECT corrective, bug_introducing FROM " + software + " WHERE release_number = \"" + release + "\" and filename = \"" + filename + "\""
		mycursor.execute(query2)
		result_set2 = mycursor.fetchall()
		
		for elem in result_set2:
			corrective = elem[0]
			bug_introducing = elem[1]
			
			if corrective == "false" and bug_introducing == "false":
				label = "clean"
			elif corrective == "false" and bug_introducing == "true":
				label = "defective"
			elif corrective == "true" and bug_introducing == "false":
				label = "clean"
			elif corrective == "true" and bug_introducing == "true":
				label = "defective"
				
			query3 = "INSERT INTO " + software + "_final (name, release_number, filename, revi, refa, bugf, auth, addl, addm, adda, reml, remm, rema, cchl, cchm, ccha, maxc, avgc, aage, wage, label) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

			val = (software, release, filename, revi, refa, bugf, auth, addl, addm, adda, reml, remm, rema, cchl, cchm, ccha, maxc, avgc, aage, wage, label)

			mycursor.execute(query3, val)
			target_db.commit()
			counter = counter + 1
			print("Sth happening for " + software + ": " + str(counter))