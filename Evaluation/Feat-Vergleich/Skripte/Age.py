# Script to calculate age specific metrics.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2020.

from datetime import datetime
import collections
import mysql.connector
import re

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****")
mycursor = target_db.cursor()

softwares = ["blender", "busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

for software in softwares:
	query1 = "SELECT release_number, filename, aage FROM dataset_evaluation." + software + "_metrics"
	
	mycursor.execute(query1)
	result_set1 = mycursor.fetchall()
	
	key_list = []
	value_list = []
	
	for elem in result_set1:
		key = elem[0] + ":::" + elem[1]
		key_list.append(key)
		value_list.append(elem[2])
		
	query2 = "SELECT * FROM dataset_evaluation_feat." + software + "_metrics"
	
	mycursor.execute(query2)
	result_set2 = mycursor.fetchall()
	
	for elem in result_set2:
		rel = elem[1]
		file = elem[2]
		key = rel + ":::" + file
		
		try:
			index = key_list.index(key)
			aage = value_list[index]
				
			val = (elem[0], elem[1], elem[2], elem[3], elem[4], elem[5], elem[6], elem[7], elem[8], elem[9], elem[10], elem[11], elem[12], elem[13], elem[14], elem[15], elem[16], elem[17], aage)
			query3 = "INSERT INTO dataset_evaluation_feat." + software + "_metrics_new (name, release_number, filename, revi, refa, bugf, auth, addl, addm, adda, reml, remm, rema, cchl, cchm, ccha, maxc, avgc, aage) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
			mycursor.execute(query3, val)
			target_db.commit()
			print("Sth happened for: " + software)
			
		except:
			print("ERRORCHEN")
			continue