# Script to perform k-nearest-neighbor classification with k range on file-level.
# Results will be prompted as plot.
# Usage of external library matplotlib.
# Usage of external library MySQL Connector.
# Usage of external library scikit learn.
# By Stefan Strueder, 2020.

from sklearn import metrics
from sklearn import preprocessing
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier
import matplotlib.pyplot as plt
import mysql.connector
import numpy as np
import pickle

# Initialize connection to mysql database
target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset")
mycursor = target_db.cursor()

# Set dataset source
source = "file"

# SQL query to be executed
query1 = "SELECT * FROM dataset." + source + "_final_smoted"

# Execute query and save results
mycursor.execute(query1)
result_set = mycursor.fetchall()

# Initialize lists
features = []
labels = []

# Create lists for classifier
for row in result_set:
	value_list = []
	
	value_list.append(float(row[0]))
	value_list.append(float(row[1]))
	value_list.append(float(row[2]))
	value_list.append(float(row[3]))
	value_list.append(float(row[4]))
	value_list.append(float(row[5]))
	value_list.append(float(row[6]))
	value_list.append(float(row[7]))
	value_list.append(float(row[8]))
	value_list.append(float(row[9]))
	value_list.append(float(row[10]))
	features.append(value_list)
	labels.append(row[11])

# Encode string values into numerical values, save label mapping
encoder = preprocessing.LabelEncoder()
labels_encoded = encoder.fit_transform(labels)
le_name_mapping = dict(zip(encoder.classes_, encoder.transform(encoder.classes_)))

# Set split ratio
ratio = 0.20

# Perform dataset splitting
X_train, X_test, Y_train, Y_test = train_test_split(features, labels_encoded, test_size = ratio)

# Set k range
k_range = [1]

# Initialize empty lists
scores = {}
scores_list = []

# Perform classification for each k
for k in k_range:

	model = KNeighborsClassifier(n_neighbors = k)
	model.fit(X_train, Y_train)
	
	filename = "knn_model_file_smoted.pkl"
	with open(filename, 'wb') as file:
		pickle.dump(model, file)

	y_pred = model.predict(X_test)
	scores[k] = metrics.accuracy_score(Y_test,y_pred)
	scores_list.append(metrics.accuracy_score(Y_test,y_pred))
	print("Accuracy for k = " + str(k) + ": " + str(scores[k]))

# Plot accuracy results
plt.plot(ratio,scores_list)
plt.xticks(np.linspace(0.15, 0.35, 5, endpoint = True))
plt.title("Plot for classificator accuracy with all 11 attributes")
plt.ylabel("Accuracy")
plt.xlabel("Ratio")
plt.show()