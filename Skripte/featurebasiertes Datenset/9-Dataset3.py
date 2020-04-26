# Script create training data set.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2019.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "ENTER_HERE", database = "ENTER_HERE")
mycursor = target_db.cursor()

# List of involved software projects 
softwares = ["blender", "busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim"]

# Execute for each software project and relevant releases
for software in softwares:
	
	if software == "blender":
		query1 = "SELECT * FROM " + software + "_feat_final WHERE release_number != \"2.78\" and release_number != \"2.79\" and release_number != \"2.80\""
	elif software == "busybox":
		query1 = "SELECT * FROM " + software + "_feat_final WHERE release_number != \"1_26_0\" and release_number != \"1_27_0\" and release_number != \"1_29_0\" and release_number != \"1_30_0\""
	elif software == "emacs":
		query1 = "SELECT * FROM " + software + "_feat_final WHERE release_number != \"26.1\" and release_number != \"26.2\""
	elif software == "gimp":
		query1 = "SELECT * FROM " + software + "_feat_final WHERE release_number != \"2_10_6\" and release_number != \"2_10_8\" and release_number != \"2_10_10\" and release_number != \"2_10_12\""
	elif software == "gnumeric":
		query1 = "SELECT * FROM " + software + "_feat_final WHERE release_number != \"1_12_20\" and release_number != \"1_12_30\""
	elif software == "gnuplot":
		query1 = "SELECT * FROM " + software + "_feat_final WHERE release_number != \"5.0.0\""
	elif software == "irssi":
		query1 = "SELECT * FROM " + software + "_feat_final WHERE release_number != \"1.0.5\" and release_number != \"1.0.6\""
	elif software == "libxml2":
		query1 = "SELECT * FROM " + software + "_feat_final WHERE release_number != \"2.9.8\" and release_number != \"2.9.9\""
	elif software == "lighttpd":
		query1 = "SELECT * FROM " + software + "_feat_final WHERE release_number != \"1.4.30\" and release_number != \"1.4.40\""
	elif software == "mpsolve":
		query1 = "SELECT * FROM " + software + "_feat_final WHERE release_number != \"3.1.6\" and release_number != \"3.1.7\""
	elif software == "parrot":
		query1 = "SELECT * FROM " + software + "_feat_final WHERE release_number != \"6_0_0\" and release_number != \"7_0_0\""
	elif software == "vim":
		query1 = "SELECT * FROM " + software + "_feat_final WHERE release_number != \"8.0\" and release_number != \"8.1\""
	
	mycursor.execute(query1)
	result_set = mycursor.fetchall()
	
	counter = 0
	
	for elem in result_set:
		
		query3 = "INSERT INTO final_train (comm, adev, ddev, exp, oexp, modd, mods, nloc, cyco, faddl, freml, revi, refa, bugf, auth, addl, addm, adda, reml, remm, rema, cchl, cchm, ccha, maxc, avgc, aage, wage, label) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
		val = (elem[3], elem[4], elem[5], elem[6], elem[7], elem[8], elem[9], elem[10], elem[11], elem[12], elem[13], elem[14], elem[15], elem[16], elem[17], elem[18], elem[19], elem[20], elem[21], elem[22], elem[23], elem[24], elem[25], elem[26], elem[27], elem[28], elem[29], elem[30], elem[31])

		mycursor.execute(query3, val)
		target_db.commit()
		counter = counter + 1
		print("Sth happening for " + software + ": " + str(counter))