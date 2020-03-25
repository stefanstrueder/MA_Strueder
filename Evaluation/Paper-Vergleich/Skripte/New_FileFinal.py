# Script to create initial final dataset.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2019.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset_evaluation_message")
mycursor = target_db.cursor()

# List of involved software projects 
softwares = ["blender", "busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

# Execute for each software project and enter into new table
for software in softwares:
	
	query1 = "SELECT release_number, filename FROM " + software + "_final group by release_number, filename;"
	
	mycursor.execute(query1)
	result_set = mycursor.fetchall()
	
	counter = 0
	
	for row in result_set:
		release = row[0]
		filename = row[1]
		
		query2 = "SELECT * FROM " + software + "_final where release_number = \"" + release + "\" AND filename = \"" + filename + "\"" 
		mycursor.execute(query2)
		result_set2 = mycursor.fetchall()
		
		revi_mean = 0
		refa_mean = 0
		bugf_mean = 0
		auth_mean = 0
		addl_mean = 0
		addm_mean = 0
		adda_mean = 0
		reml_mean = 0
		remm_mean = 0
		rema_mean = 0
		cchl_mean = 0
		cchm_mean = 0
		ccha_mean = 0
		maxc_mean = 0
		avgc_mean = 0
		aage_mean = 0
		wage_mean = 0

		label_list = []
		count = 0
		
		for elem in result_set2:
			revi = int(elem[3])
			refa = int(elem[4])
			bugf = int(elem[5])
			auth = int(elem[6])
			addl = int(elem[7])
			addm = int(elem[8])
			adda = int(elem[9])
			reml = int(elem[10])
			remm = int(elem[11])
			rema = int(elem[12])
			cchl = int(elem[13])
			cchm = int(elem[14])
			ccha = int(elem[15])
			maxc = int(elem[16])
			avgc = int(elem[17])
			aage = float(elem[18])
			wage = float(elem[19])
			
			revi_mean = revi_mean + revi
			refa_mean = refa_mean + refa
			bugf_mean = bugf_mean + bugf
			auth_mean = auth_mean + auth
			addl_mean = addl_mean + addl
			addm_mean = addm_mean + addm
			adda_mean = adda_mean + adda
			reml_mean = reml_mean + reml
			remm_mean = remm_mean + remm
			rema_mean = rema_mean + rema
			cchl_mean = cchl_mean + cchl
			cchm_mean = cchm_mean + cchm
			ccha_mean = ccha_mean + ccha
			maxc_mean = maxc_mean + maxc
			avgc_mean = avgc_mean + avgc
			aage_mean = aage_mean + aage
			wage_mean = wage_mean + wage
			count = count + 1
			label_list.append(elem[20])
			
		revi_mean = int(revi_mean / count)
		refa_mean = int(refa_mean / count)
		bugf_mean = int(bugf_mean / count)
		auth_mean = int(auth_mean / count)
		addl_mean = int(addl_mean / count)
		addm_mean = int(addm_mean / count)		
		adda_mean = int(adda_mean / count)
		reml_mean = int(reml_mean / count)
		remm_mean = int(remm_mean / count)
		rema_mean = int(rema_mean / count)
		cchl_mean = int(cchl_mean / count)
		cchm_mean = int(cchm_mean / count)
		ccha_mean = int(ccha_mean / count)
		maxc_mean = int(maxc_mean / count)
		avgc_mean = int(avgc_mean / count)
		aage_mean = round(float(aage_mean / count),2)
		wage_mean = round(float(wage_mean / count),2)
		
		if label_list[-1] == "defective":
			label = "defective"
		else:
			label = "clean"

		query3 = "INSERT INTO " + software + "_final_new_new (name, release_number, filename, revi, refa, bugf, auth, addl, addm, adda, reml, remm, rema, cchl, cchm, ccha, maxc, avgc, aage, wage, label) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
		val = (software, release, filename, revi_mean, refa_mean, bugf_mean, auth_mean, addl_mean, addm_mean, adda_mean, reml_mean, remm_mean, rema_mean, cchl_mean, cchm_mean, ccha_mean, maxc_mean, avgc_mean, aage_mean, wage_mean, label)
		
		mycursor.execute(query3, val)
		target_db.commit()
		counter = counter + 1
		print("Sth happening for " + software + ": " + str(counter))