# Script to create final dataset.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2019.

import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset_message")
mycursor = target_db.cursor()

# List of involved software projects 
softwares = ["blender", "busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

# Execute ddev metric for each feature in each release
for software in softwares:
	
	query1 = "SELECT release_number, filename FROM " + software + "_file_final group by release_number, filename;"
	
	mycursor.execute(query1)
	result_set = mycursor.fetchall()
	
	counter = 0
	
	for row in result_set:
		release = row[0]
		filename = row[1]
		
		query2 = "SELECT * FROM " + software + "_file_final where release_number = \"" + release + "\" AND filename = \"" + filename + "\"" 
		mycursor.execute(query2)
		result_set2 = mycursor.fetchall()
		
		comm_mean = 0
		adev_mean = 0
		ddev_mean = 0
		exp_mean = 0
		oexp_mean = 0
		modd_mean = 0
		mods_mean = 0
		nloc_mean = 0
		cyco_mean = 0
		addl_mean = 0
		reml_mean = 0
		label_list = []
		count = 0
		
		for elem in result_set2:
			comm = int(elem[3])
			adev = int(elem[4])
			ddev = int(elem[5])
			exp = int(elem[6])
			oexp = int(elem[7])
			modd = int(elem[8])
			mods = int(elem[9])
			nloc = int(elem[10])
			cyco = int(elem[11])
			addl = int(elem[12])
			reml = int(elem[13])
			
			comm_mean = comm_mean + comm
			adev_mean = adev_mean + adev
			ddev_mean = ddev_mean + ddev
			exp_mean = exp_mean + exp
			oexp_mean = oexp_mean + oexp
			modd_mean = modd_mean + modd
			mods_mean = mods_mean + mods
			nloc_mean = nloc_mean + nloc
			cyco_mean = cyco_mean + cyco
			addl_mean = addl_mean + addl
			reml_mean = reml_mean + reml
			count = count + 1
			label_list.append(elem[14])
			
		comm_mean = int(comm_mean / count)
		adev_mean = int(adev_mean / count)
		ddev_mean = int(ddev_mean / count)
		exp_mean = int(exp_mean / count)
		oexp_mean = int(oexp_mean / count)
		modd_mean = int(modd_mean / count)		
		mods_mean = int(mods_mean / count)
		nloc_mean = int(nloc_mean / count)
		cyco_mean = int(cyco_mean / count)
		addl_mean = int(addl_mean / count)
		reml_mean = int(reml_mean / count)
		
		if label_list[-1] == "defective":
			label = "defective"
		else:
			label = "clean"
			
		query3 = "INSERT INTO " + software + "_file_final_new (name, release_number, filename, comm, adev, ddev, exp, oexp, modd, mods, nloc, cyco, addl, reml, label) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
		val = (software, release, filename, comm_mean, adev_mean, ddev_mean, exp_mean, oexp_mean, modd_mean, mods_mean, nloc_mean, cyco_mean, addl_mean, reml_mean, label)

		mycursor.execute(query3, val)
		target_db.commit()
		counter = counter + 1
		print("Sth happening for " + software + ": " + str(counter))