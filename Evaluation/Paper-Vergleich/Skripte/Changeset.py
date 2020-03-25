# Script to calculate changeset specific metrics.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2020.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset_evaluation_message")
mycursor = target_db.cursor()

softwares = ["blender", "busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

# Calculate for each software and enter results in new table
for software in softwares:
	query1 = "SELECT release_number, filename FROM " + software + "_metrics"
	
	mycursor.execute(query1)
	result_set1 = mycursor.fetchall()
	
	length = len(result_set1)
	
	key_list = []
	maxc_list = []
	avgc_list = []
	
	for elem in result_set1:
		rel = elem[0]
		file = elem[1]
		
		query2 = "SELECT release_number, commit_hash, filename FROM " + software + " where release_number = \"" + rel + "\" and filename = \"" + file + "\" group by release_number, commit_hash, filename"
		mycursor.execute(query2)
		result_set2 = mycursor.fetchall()
		
		count_list = []
		
		for elem in result_set2:
			hash = elem[1]
			query3 = "select count(commit_hash) from " + software + " where commit_hash = \"" + hash + "\""
			mycursor.execute(query3)
			result_set3 = mycursor.fetchall()
			
			for elem in result_set3:
				count_list.append(elem[0])
		
		maxc = max(count_list)
		avg = sum(count_list) / len(count_list)
		avgc = int(round(avg,0))
		key = rel + ":::" + file
		
		key_list.append(key)
		maxc_list.append(maxc)
		avgc_list.append(avgc)
		length = length - 1
		print("sth done for " + software + ": " + str(length))
		
	query4 = "SELECT * FROM " + software + "_metrics"
	
	mycursor.execute(query4)
	result_set4 = mycursor.fetchall()
		
	for elem in result_set4:
		rel = elem[1]
		file = elem[2]
		
		key = rel + ":::" + file
		
		index = key_list.index(key)
		maxc = maxc_list[index]
		avgc = avgc_list[index]
		
		val = (elem[0], elem[1], elem[2], elem[3], elem[4], elem[5], elem[6], elem[7], elem[8], elem[9], elem[10], elem[11], elem[12], elem[13], elem[14], elem[15], maxc, avgc)
		query5 = "INSERT INTO " + software + "_metrics_new (name, release_number, filename, revi, refa, bugf, auth, addl, addm, adda, reml, remm, rema, cchl, cchm, ccha, maxc, avgc) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
		mycursor.execute(query5, val)
		target_db.commit()
		print("Sth happened for: " + software)
		
