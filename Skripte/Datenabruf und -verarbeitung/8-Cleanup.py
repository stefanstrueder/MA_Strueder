# Script to clean feature names from unwanted characters.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2019.

import mysql.connector
import re

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "ENTER_HERE", database = "ENTER_HERE")
mycursor = target_db.cursor()

# Name of software project"
software = "ENTER_HERE"

# Queries to get all rows from table and to insert into new table
query1 = "SELECT * FROM " + software
query2 = "INSERT INTO " + softeare + "_new (name, release_number, commit_hash, commit_author, commit_msg, filename, nloc, cycomplexity, lines_added, lines_removed, change_type, diff, corrective, bug_introducing, feature) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

# Execute query and get all rows
mycursor.execute(query1)
result_set = mycursor.fetchall()

# Basic counter
counter = 0

regex = "(\/\/)|(\/\*)|(\*\/)|(\s*\$)|(<op>)|( added around)|( >>)"

# Clean each feature and insert results into new table.
for row in result_set:
	feature = str(row[14])
	feat = re.split(regex, feature)
	feature = feat[0].replace(")", "").replace(";", "").replace("\"", "").replace("\\n", "").replace("'", "").replace("’","").replace(".","").replace(",","").replace("(","").replace("\s*$|\#if","").replace(" is too general here  it is possible to use gcc without using", "").replace("\" with \"#if enable_symbol\".  but more importantly, we", "").replace(" echo is_64bit_arch echo #endif | \\", "").replace(" >", "").replace(">", "").replace("	# vt240 max 255 ?", "").replace("\\", "").replace("  unfortunately the", "").replace("  but we want the sgi value  ", "")
	if row[5] == "ChangeLog"  or row[5] == "ChangeLog.0" or row[5] == "ChangeLog.1" or row[5] == "ChangeLog.2" or row[5] == "ChangeLog.3" or feature == "y" or row[5] == "ChangeLog.4" or row[5] == "ChangeLog.5" or feature == "is to avoid compiler warning about unused macro  " or feature == "not lets gnulib avoid including these on non-glibc" or feature == "    rather than #if to avoid an error with hp-ux 1020 cc  ":
		val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], row[13], "none")
	elif feature == "            pm3d":
		val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], row[13], "pm3d")
	elif feature == "win32 section is all to work around a bug in" or feature == "_win32 section is all to work around a bug in":
		val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], row[13], "win32")
	elif feature == "prototypes so define it here":
		val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], row[13], "prototypes")
	elif feature == "x11 is probably unnecessary but makes the change minimal":
		val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], row[13], "x11")
	elif feature == "doug_lea_malloc #undef rel_alloc #endif":
		val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], row[13], "doug_lea_malloc")
	elif feature == "__powerpc__ echo is_ppc echo #endif | ":
		val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], row[13], "__powerpc__")
	else:
		val = (row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], row[13], feature)
	mycursor.execute(query2, val)
	target_db.commit()
	counter = counter + 1
	print("Sth is happening: " + str(counter))