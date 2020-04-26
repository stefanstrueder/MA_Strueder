# Script to map feature metrics onto file level.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2020.

from statistics import median
import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "ENTER_HERE", database = "ENTER_HERE")
mycursor = target_db.cursor()

softwares = ["blender", "busybox", "emacs", "gimp", "gnumeric", "gnuplot", "irssi", "libxml2", "lighttpd", "mpsolve", "parrot", "vim", "xfig"]

def Average(lst): 
    return round(sum(lst) / len(lst), 0)
	
# selection of preferred aggregations (choice of: mean, median, max, min, sum)
comm_selection = "ENTER_HERE"
adev_selection = "ENTER_HERE"
ddev_selection = "ENTER_HERE"
exp_selection = "ENTER_HERE"
oexp_selection = "ENTER_HERE"
modd_selection = "ENTER_HERE"
mods_selection = "ENTER_HERE"
nloc_selection = "ENTER_HERE"
cyco_selection = "ENTER_HERE"
addl_selection = "ENTER_HERE"
reml_selection = "ENTER_HERE"

for software in softwares:
	query1 = "SELECT * FROM " + software + "_feat_final"
	
	# Execute query and save results
	mycursor.execute(query1)
	result_set = mycursor.fetchall()
	
	key_list = []
	value_list = []
	
	for elem in result_set:
		key = elem[1] + ":::" + elem[2]
		values = elem[3] + ":::" + elem[4] + ":::" + elem[5] + ":::" + elem[6] + ":::" + elem[7] + ":::" + elem[8] + ":::" + elem[9] + ":::" + elem[10] + ":::" + elem[11] + ":::" + elem[12]+ ":::" + elem[13]
		
		key_list.append(key)
		value_list.append(values)
		
	query2 = "SELECT * FROM " + software + "_final"
	
	mycursor.execute(query2)
	result_set2 = mycursor.fetchall()
	counter = len(result_set2)
	
	for elem in result_set2:
		rel = elem[1]
		file = elem[2]
		revi = elem[3]
		refa = elem[4]
		bugf = elem[5]
		auth = elem[6]
		eaddl = elem[7]
		addm = elem[8]
		adda = elem[9]
		ereml = elem[10]
		remm = elem[11]
		rema = elem[12]
		cchl = elem[13]
		cchm = elem[14]
		ccha = elem[15]
		maxc = elem[16]
		avgc = elem[17]
		aage = elem[18]
		wage = elem[19]
		label = elem[20]
		
		query3 = "SELECT feature FROM " + software + " WHERE filename = \"" + file + "\" AND release_number = \"" + rel + "\""
		mycursor.execute(query3)
		result_set3 = mycursor.fetchall()
		
		comm_list = []
		adev_list = []
		ddev_list = []
		exp_list = []
		oexp_list = []
		modd_list = []
		mods_list = []
		nloc_list = []
		cyco_list = []
		addl_list = []
		reml_list = []
		
		for elem in result_set3:
			if elem[0] == "none":
				comm = 0
				adev = 0
				ddev = 0
				exp = 0
				oexp = 0
				modd = 0
				mods = 0
				nloc = 0
				cyco = 0
				addl = 0
				reml = 0
				comm_list.append(comm)
				adev_list.append(adev)
				ddev_list.append(ddev)
				exp_list.append(exp)
				oexp_list.append(oexp)
				modd_list.append(modd)
				mods_list.append(mods)
				nloc_list.append(nloc)
				cyco_list.append(cyco)
				addl_list.append(addl)
				reml_list.append(reml)
			else:
				try:
					feature = elem[0]
					key = rel + ":::" + feature
					index = key_list.index(key)
					values = value_list[index]
					comm, adev, ddev, exp, oexp, modd, mods, nloc, cyco, addl, reml = values.split(":::")
					comm_list.append(int(comm))
					adev_list.append(int(adev))
					ddev_list.append(int(ddev))
					exp_list.append(int(exp))
					oexp_list.append(int(oexp))
					modd_list.append(int(modd))
					mods_list.append(int(mods))
					nloc_list.append(int(nloc))
					cyco_list.append(int(cyco))
					addl_list.append(int(addl))
					reml_list.append(int(reml))
				except:
					comm = 0
					adev = 0
					ddev = 0
					exp = 0
					oexp = 0
					modd = 0
					mods = 0
					nloc = 0
					cyco = 0
					addl = 0
					reml = 0
					comm_list.append(comm)
					adev_list.append(adev)
					ddev_list.append(ddev)
					exp_list.append(exp)
					oexp_list.append(oexp)
					modd_list.append(modd)
					mods_list.append(mods)
					nloc_list.append(nloc)
					cyco_list.append(cyco)
					addl_list.append(addl)
					reml_list.append(reml)
					
		if comm_selection == "mean":
			comm_result = Average(comm_list)
		elif comm_selection == "median":
			comm_result = median(comm_list)
		elif comm_selection == "max":
			comm_result = max(comm_list)
		elif comm_selection == "min":
			comm_result = min(comm_list)
		elif comm_selection == "sum":
			comm_result = sum(comm_list)
			
		if adev_selection == "mean":
			adev_result = Average(adev_list)
		elif adev_selection == "median":
			adev_result = median(adev_list)
		elif adev_selection == "max":
			adev_result = max(adev_list)
		elif adev_selection == "min":
			adev_result = min(adev_list)
		elif adev_selection == "sum":
			adev_result = sum(adev_list)
			
		if ddev_selection == "mean":
			ddev_result = Average(ddev_list)
		elif ddev_selection == "median":
			ddev_result = median(ddev_list)
		elif ddev_selection == "max":
			ddev_result = max(ddev_list)
		elif ddev_selection == "min":
			ddev_result = min(ddev_list)
		elif ddev_selection == "sum":
			ddev_result = sum(ddev_list)
			
		if exp_selection == "mean":
			exp_result = Average(exp_list)
		elif exp_selection == "median":
			exp_result = median(exp_list)
		elif exp_selection == "max":
			exp_result = max(exp_list)
		elif exp_selection == "min":
			exp_result = min(exp_list)
		elif exp_selection == "sum":
			exp_result = sum(exp_list)
			
		if oexp_selection == "mean":
			oexp_result = Average(oexp_list)
		elif oexp_selection == "median":
			oexp_result = median(oexp_list)
		elif oexp_selection == "max":
			oexp_result = max(oexp_list)
		elif oexp_selection == "min":
			oexp_result = min(oexp_list)
		elif oexp_selection == "sum":
			oexp_result = sum(oexp_list)
			
		if modd_selection == "mean":
			modd_result = Average(modd_list)
		elif modd_selection == "median":
			modd_result = median(modd_list)
		elif modd_selection == "max":
			modd_result = max(modd_list)
		elif modd_selection == "min":
			modd_result = min(modd_list)
		elif modd_selection == "sum":
			modd_result = sum(modd_list)
			
		if mods_selection == "mean":
			mods_result = Average(mods_list)
		elif mods_selection == "median":
			mods_result = median(mods_list)
		elif mods_selection == "max":
			mods_result = max(mods_list)
		elif mods_selection == "min":
			mods_result = min(mods_list)
		elif mods_selection == "sum":
			mods_result = sum(mods_list)
	
		if nloc_selection == "mean":
			nloc_result = Average(nloc_list)
		elif nloc_selection == "median":
			nloc_result = median(nloc_list)
		elif nloc_selection == "max":
			nloc_result = max(nloc_list)
		elif nloc_selection == "min":
			nloc_result = min(nloc_list)
		elif nloc_selection == "sum":
			nloc_result = sum(nloc_list)
			
		if cyco_selection == "mean":
			cyco_result = Average(cyco_list)
		elif cyco_selection == "median":
			cyco_result = median(cyco_list)
		elif cyco_selection == "max":
			cyco_result = max(cyco_list)
		elif cyco_selection == "min":
			cyco_result = min(cyco_list)
		elif cyco_selection == "sum":
			cyco_result = sum(cyco_list)
			
		if addl_selection == "mean":
			addl_result = Average(addl_list)
		elif addl_selection == "median":
			addl_result = median(addl_list)
		elif addl_selection == "max":
			addl_result = max(addl_list)
		elif addl_selection == "min":
			addl_result = min(addl_list)
		elif addl_selection == "sum":
			addl_result = sum(addl_list)
			
		if reml_selection == "mean":
			reml_result = Average(reml_list)
		elif reml_selection == "median":
			reml_result = median(reml_list)
		elif reml_selection == "max":
			reml_result = max(reml_list)
		elif reml_selection == "min":
			reml_result = min(reml_list)
		elif reml_selection == "sum":
			reml_result = sum(reml_list)
				
		query4 = "INSERT INTO " + software + "_final (name, release_number, filename, comm, adev, ddev, exp, oexp, modd, mods, nloc, cyco, faddl, freml, revi, refa, bugf, auth, addl, addm, adda, reml, remm, rema, cchl, cchm, ccha, maxc, avgc, aage, wage, label) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
		
		val = (software, rel, file, int(comm_result), int(adev_result), int(ddev_result), int(exp_result), int(oexp_result), int(modd_result), int(mods_result), int(nloc_result), int(cyco_result), int(addl_result), int(reml_result), revi, refa, bugf, auth, eaddl, addm, adda, ereml, remm, rema, cchl, cchm, ccha, maxc, avgc, aage, wage, label)

		mycursor.execute(query4, val)
		target_db.commit()
		print("Sths happening: " + str(counter) + " for: " + software)
		counter = counter - 1