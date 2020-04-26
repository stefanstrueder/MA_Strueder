# Script to export table as csv file.
# Results will be stored in MySQL database.
# Usage of external library MySQL Connector.
# By Stefan Strueder, 2019.

import csv
import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "ENTER_HERE", database = "ENTER_HERE")
mycursor = target_db.cursor()

# Table to be exported as csv
table = "ENTER_HERE"

# SQL query to be executed
query1 = "SELECT * FROM " + table

# Execute query and save results
mycursor.execute(query1)
result_set = mycursor.fetchall()

with open("ENTER_HERE.csv", mode = "w", newline = "") as dataset:
	dataset_writer = csv.writer(dataset, delimiter = ",", quotechar = "\"", quoting = csv.QUOTE_MINIMAL)
	
	for row in result_set:
		dataset_writer.writerow([row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10]])