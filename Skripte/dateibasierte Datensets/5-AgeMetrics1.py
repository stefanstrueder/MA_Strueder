# Script to calculate age specific metrics.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2020.

from datetime import datetime
import collections
import mysql.connector
import re

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "ENTER_HERE", database = "ENTER_HERE")
mycursor = target_db.cursor()

# Details of software
software = "ENTER_HERE"
release = "ENTER_HERE"
t = datetime(YYYY, MM, DD, HH, MM, SS)

# Execute SQL query
query1 = "SELECT release_number, commit_hash, filename, date FROM " + software + " where release_number = \"" + release + "\" group by release_number, commit_hash, filename, date"
mycursor.execute(query1)
result_set1 = mycursor.fetchall()

# Initialize empty lists
value_list =[]
file_list = []
key_list = []
result_list = []

# Create list of all dates
for elem in result_set1:
	file_list.append(elem[2])
	raw_date = elem[3].split(" ")
	year = raw_date[0]
	time = raw_date[1]
	split_time = re.split(r"\+|-", time)
	time = split_time[0]
	value_list.append(str(year) + " " + str(time))
	
clean_file = collections.OrderedDict.fromkeys(file_list).keys()

# Search for specific dates	
for file in clean_file:
	indices = [i for i, x in enumerate(file_list) if x == file]
	date_list = []
	for index in indices:
		date = value_list[index]
		raw_date = date.split(" ")
		year = raw_date[0].split("-")
		time = raw_date[1].split(":")
		p = datetime(int(year[0]), int(year[1]), int(year[2]), int(time[0]), int(time[1]), int(time[2]))
		delta = p - t
		weeks = round((delta.days / 7), 2)
		date_list.append(weeks)
	
	avg = sum(date_list) / len(date_list)
	aage = round(avg, 2)
	
	key = release + ":::" + file
	key_list.append(key)
	result_list.append(aage)
	
query2 = "SELECT * FROM blender_metrics where release_number = \"" + release + "\""
	
mycursor.execute(query2)
result_set2 = mycursor.fetchall()

# Enter results in new table		
for elem in result_set2:
	rel = elem[1]
	file = elem[2]
	key = rel + ":::" + file
		
	try:
		index = key_list.index(key)
		aage = result_list[index]
			
		val = (elem[0], elem[1], elem[2], elem[3], elem[4], elem[5], elem[6], elem[7], elem[8], elem[9], elem[10], elem[11], elem[12], elem[13], elem[14], elem[15], elem[16], elem[17], aage)
		query3 = "INSERT INTO blender_metrics_new (name, release_number, filename, revi, refa, bugf, auth, addl, addm, adda, reml, remm, rema, cchl, cchm, ccha, maxc, avgc, aage) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
		mycursor.execute(query3, val)
		target_db.commit()
		print("Sth happened for: " + software)
		
	except:
		print("ERRORCHEN")
		continue