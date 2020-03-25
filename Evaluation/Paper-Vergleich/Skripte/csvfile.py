import csv
import mysql.connector

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset_evaluation_message")
mycursor = target_db.cursor()

# SQL query to be executed
query1 = "SELECT * FROM final"

# Execute query and save results
mycursor.execute(query1)
result_set = mycursor.fetchall()

with open('dataset_evaluation_message.csv', mode='w', newline='') as dataset:
	dataset_writer = csv.writer(dataset, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
	
	for row in result_set:
		dataset_writer.writerow([row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], row[13], row[14], row[15], row[16], row[17]])