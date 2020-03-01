# Script to calculate changeset specific metrics.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2020.

import collections
import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset_evaluation")
mycursor = target_db.cursor()

softwares = ["busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]
#softwares = ["blender1", "blender2", "blender3", "blender4"]

# Calculate for each software project and enter results in new table
for software in softwares:

	query1 = "SELECT distinct release_number FROM " + software + "_metrics"
	query2 = "SELECT release_number, commit_hash, count(filename) FROM " + software + " group by release_number, commit_hash"
	
	mycursor.execute(query1)
	result_set1 = mycursor.fetchall()
	
	mycursor.execute(query2)
	result_set2 = mycursor.fetchall()
	
	key_list = []
	value_list = []
	
	rel_list = []
	maxc_values = []
	avgc_values = []
	
	for elem in result_set2:
		key = elem[0] + ":::" + elem[1]
		key_list.append(key)
		value_list.append(elem[2])
	
	for elem in result_set1:
		key_list2 = []
		file_list = []
		release = elem[0]
		
		query3 = "SELECT release_number, commit_hash, filename FROM " + software + " where release_number= \"" + release + "\" group by release_number, commit_hash, filename order by filename;"
		mycursor.execute(query3)
		result_set3 = mycursor.fetchall()
		
		for elem in result_set3:
			rel = elem[0]
			hash = elem[1]
			filename = elem[2]
			
			key = rel + ":::" + hash
			key_list2.append(key)
			file_list.append(filename)
			
		clean_file = collections.OrderedDict.fromkeys(file_list).keys()
			
		for file in clean_file:
			maxc_list = []
			avgc_list = []
			indices = [i for i, x in enumerate(file_list) if x == file]
			counter = []
			for index in indices:
				key = key_list2[index]
				ind = key_list.index(key)
				value = value_list[ind]
				counter.append(value)
			maxc = max(counter)
			avg = sum(counter) / len(counter)
			avgc = int(round(avg,0))
			
			key = release + ":::" + file
			rel_list.append(key)
			maxc_values.append(maxc)
			avgc_values.append(avgc)
			
	query4 = "SELECT * FROM " + software + "_metrics"
	
	mycursor.execute(query4)
	result_set4 = mycursor.fetchall()
		
	for elem in result_set4:
		rel = elem[1]
		file = elem[2]
		key = rel + ":::" + file
		
		try:
			index = rel_list.index(key)
			maxc = maxc_values[index]
			avgc = avgc_values[index]
			
			val = (elem[0], elem[1], elem[2], elem[3], elem[4], elem[5], elem[6], elem[7], elem[8], elem[9], elem[10], elem[11], elem[12], elem[13], elem[14], elem[15], maxc, avgc)
			query5 = "INSERT INTO " + software + "_metrics_new (name, release_number, filename, revi, refa, bugf, auth, addl, addm, adda, reml, remm, rema, cchl, cchm, ccha, maxc, avgc) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
			mycursor.execute(query5, val)
			target_db.commit()
			print("Sth happened for: " + software)
		
		except:
			print("ERRORCHEN")
			continue