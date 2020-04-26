# Script to calculate process metrics.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2020.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "ENTER_HERE", database = "ENTER_HERE")
mycursor = target_db.cursor()

softwares = ["blender", "busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

# Calculate metrics for each software project and enter into new table
for software in softwares:
	query1 = "SELECT release_number, filename, sum(lines_added) as addl, max(lines_added) as addm, round(avg(lines_added),0) as adda from " + software + " group by release_number, filename"
	query2 = "SELECT release_number, filename, sum(lines_removed) as reml, max(lines_removed) as remm, round(avg(lines_removed),0) as rema from " + software + " group by release_number, filename"
	query3 = "SELECT release_number, filename, sum(lines_added - lines_removed) as cchl, max(lines_added - lines_removed) as cchm, round(avg(lines_added - lines_removed),0) as ccha from " + software + " group by release_number, filename"
	
	mycursor.execute(query1)
	result_set1 = mycursor.fetchall()
	
	mycursor.execute(query2)
	result_set2 = mycursor.fetchall()
	
	mycursor.execute(query3)
	result_set3 = mycursor.fetchall()
	
	addl_list = []
	addm_list = []
	adda_list = []
	add_meta_list = []
	reml_list = []
	remm_list = []
	rema_list = []
	rem_meta_list = []
	cchl_list = []
	cchm_list = []
	ccha_list = []
	cch_meta_list = []

	for elem in result_set1:
		rel = elem[0]
		file = elem[1]
		addl = elem[2]
		addm = elem[3]
		adda = elem[4]
		key = rel + ":::" + file
		
		addl_list.append(addl)
		addm_list.append(addm)
		adda_list.append(adda)
		add_meta_list.append(key)
		
	for elem in result_set2:
		rel = elem[0]
		file = elem[1]
		reml = elem[2]
		remm = elem[3]
		rema = elem[4]
		key = rel + ":::" + file
		
		reml_list.append(reml)
		remm_list.append(remm)
		rema_list.append(rema)
		rem_meta_list.append(key)
		
	for elem in result_set3:
		rel = elem[0]
		file = elem[1]
		cchl = elem[2]
		cchm = elem[3]
		ccha = elem[4]
		key = rel + ":::" + file
		
		cchl_list.append(cchl)
		cchm_list.append(cchm)
		ccha_list.append(ccha)
		cch_meta_list.append(key)
		
	query4 = "SELECT * FROM " + software + "_metrics"
	
	mycursor.execute(query4)
	result_set4 = mycursor.fetchall()
	
	counter = len(result_set4)
		
	for elem in result_set4:
		rel = elem[1]
		file = elem[2]
		revi = elem[3]
		refa = elem[4]
		bugf = elem[5]
		auth = elem[6]
		key = rel + ":::" + file
		counter = counter - 1
		
		try:
			index_add = add_meta_list.index(key)
			index_rem = rem_meta_list.index(key)
			index_cch = cch_meta_list.index(key)
			
			addl = str(int(addl_list[index_add]))
			addm = str(int(addm_list[index_add]))
			adda = str(int(adda_list[index_add]))
			reml = str(int(reml_list[index_rem]))
			remm = str(int(remm_list[index_rem]))
			rema = str(int(rema_list[index_rem]))
			cchl = str(int(cchl_list[index_cch]))
			cchm = str(int(cchm_list[index_cch]))
			ccha = str(int(ccha_list[index_cch]))
			
			val = (elem[0], rel, file, revi, refa, bugf, auth, addl, addm, adda, reml, remm, rema, cchl, cchm, ccha)
			query5 = "INSERT INTO " + software + "_metrics_new (name, release_number, filename, revi, refa, bugf, auth, addl, addm, adda, reml, remm, rema, cchl, cchm, ccha) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
			mycursor.execute(query5, val)
			target_db.commit()
			print("Sth happened for: " + software + ": " + str(counter))
			
		except:
			print("ERROR!")
			continue
