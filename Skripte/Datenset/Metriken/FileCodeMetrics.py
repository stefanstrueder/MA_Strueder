# Script to calculate code metrics on file level.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2019.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset_message")
mycursor = target_db.cursor()

# List of involved software projects 
softwares = ["busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

# Execute code metrics for each file in each release
for software in softwares:
	
	query1 = "SELECT release_number, filename FROM dataset." + software + "_file_metrics"
	
	mycursor.execute(query1)
	result_set = mycursor.fetchall()
	
	length = len(result_set)
	valueList = []
	nlocList = []
	cyList = []
	addedList = []
	removedList = []
	
	for row in result_set:
		release = row[0]
		filename = row[1]
	
		query2 = "SELECT nloc, cycomplexity, lines_added, lines_removed FROM dataset." + software + " WHERE release_number = \"" + release + "\" AND filename = \"" + filename + "\""		
		mycursor.execute(query2)
		result_set2 = mycursor.fetchall()
		
		counter = 0
		nloc = 0
		cycomplexity = 0
		added = 0
		removed = 0
		
		for elem in result_set2:
			
			if elem[0] == "None":
				value1 = 0
			else:
				value1 = int(elem[0])
			
			if elem[1] == "None":
				value1 = 0
			else:
				value2 = int(elem[1])

			value3 = int(elem[2])
			value4 = int(elem[3])
			
			nloc = nloc + value1
			cycomplexity = cycomplexity + value2
			added = added + value3
			removed = removed + value4
			counter = counter + 1
			
		nloc = int(nloc / counter)
		cycomplexity = int(cycomplexity / counter)
		added = int(added / counter)
		removed = int(removed / counter)
		
		value = release + ":::" + filename
		
		valueList.append(value)
		nlocList.append(nloc)
		cyList.append(cycomplexity)
		addedList.append(added)
		removedList.append(removed)
		length = length - 1
		print("Still to do: " + str(length) + ". For: " + software + ".")
		
	query3 = "SELECT * FROM dataset." + software + "_file_metrics"
	query4 = "INSERT INTO " + software + "_file_metrics_new (name, release_number, filename, comm, adev, ddev, exp, oexp, scat, tang, nloc, cyco, addl, reml) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

	mycursor.execute(query3)
	result_set3 = mycursor.fetchall()
	
	counter = 0
	
	for elem in result_set3:	
		release = elem[1]
		filename = elem[2]	
		val = release + ":::" + filename
	
		try:
	
			index = valueList.index(val)
			nloc = str(int(nlocList[index]))
			cycomplexity = str(int(cyList[index]))
			added = str(int(addedList[index]))
			removed = str(int(removedList[index]))
		
			val = (elem[0], elem[1], elem[2], elem[3], elem[4], elem[5], elem[6], elem[7], elem[8], elem[9], nloc, cycomplexity, added, removed)
			mycursor.execute(query4, val)
			target_db.commit()
			counter = counter + 1
			print("Sth happening for " + software + ": " + str(counter))
			
		except:
			continue