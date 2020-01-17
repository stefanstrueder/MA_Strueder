# Script to perform naive bayes classification with various types of classifiers.
# Results will be prompted as plot.
# Usage of external library matplotlib.
# Usage of external library MySQL Connector.
# Usage of external library scikit learn.
# By Stefan Strueder, 2020.

from sklearn import metrics
from sklearn import preprocessing
from sklearn.model_selection import train_test_split
from sklearn.naive_bayes import GaussianNB, BernoulliNB, MultinomialNB, ComplementNB, CategoricalNB
import matplotlib.pyplot as plt
import mysql.connector
import numpy as np

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset")
mycursor = target_db.cursor()

# Set dataset source
source = "file"

# SQL query to be executed
query1 = "SELECT * FROM dataset." + source + "_final"

# Execute query and save results
mycursor.execute(query1)
result_set = mycursor.fetchall()

# Initialize lists
features = []
labels = []

# Create lists for classifier
for row in result_set:
	value_list = []
	
	value_list.append(int(row[0]))
	value_list.append(int(row[1]))
	value_list.append(int(row[2]))
	value_list.append(int(row[3]))
	value_list.append(int(row[4]))
	value_list.append(int(row[5]))
	value_list.append(int(row[6]))
	value_list.append(int(row[7]))
	value_list.append(int(row[8]))
	value_list.append(int(row[9]))
	value_list.append(int(row[10]))
	features.append(value_list)
	labels.append(row[11])

# Encode string values into numerical values, save label mapping
encoder = preprocessing.LabelEncoder()
labels_encoded = encoder.fit_transform(labels)
le_name_mapping = dict(zip(encoder.classes_, encoder.transform(encoder.classes_)))

# Set split ratios
ratios = [0.15, 0.20, 0.25, 0.30, 0.35]
scores_list = []

# Perform classification for each ratio
for ratio in ratios:
	X_train, X_test, Y_train, Y_test = train_test_split(features, labels_encoded, test_size = ratio)
	model = MultinomialNB()
	model.fit(X_train, Y_train)
	
	# predicted = model.predict([[5,3,4,256,38,2,111,222,23,14,59]])
	# print(predicted)

	y_pred = model.predict(X_test)
	score = metrics.accuracy_score(Y_test,y_pred)
	scores_list.append(metrics.accuracy_score(Y_test,y_pred))
	print("Accuracy for ratio " + str(ratio) + ": " + str(score))

# Plot accuracy results
plt.plot(ratios,scores_list)
plt.title("Plot for classificator accuracy with all 11 attributes")
plt.xlabel("Accuracy")
plt.ylabel("Ratio")
plt.show()