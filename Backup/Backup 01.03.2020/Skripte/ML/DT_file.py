# Script to perform decision tree classification on file-level.
# Results will be prompted as plot.
# Usage of external library matplotlib.
# Usage of external library MySQL Connector.
# Usage of external library scikit learn.
# By Stefan Strueder, 2020.

from sklearn import metrics
from sklearn import preprocessing
from sklearn.feature_selection import RFECV
from sklearn.model_selection import StratifiedKFold
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
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

# Create lists for classifier (excluded features according to rfecv algorithm)
for row in result_set:
	value_list = []
	
	value_list.append(float(row[0]))
	#value_list.append(int(row[1]))
	#value_list.append(int(row[2]))
	#value_list.append(int(row[3]))
	#value_list.append(int(row[4]))
	#value_list.append(int(row[5]))
	#value_list.append(int(row[6]))
	#value_list.append(int(row[7]))
	#value_list.append(int(row[8]))
	value_list.append(float(row[9]))
	#value_list.append(int(row[10]))
	features.append(value_list)
	labels.append(row[11])

# Encode string values into numerical values, save label mapping
encoder = preprocessing.LabelEncoder()
labels_encoded = encoder.fit_transform(labels)
le_name_mapping = dict(zip(encoder.classes_, encoder.transform(encoder.classes_)))

# Set split ratios
ratios = [0.15]
scores_list = []

# Perform classification for each ratio
for ratio in ratios:
	X_train, X_test, Y_train, Y_test = train_test_split(features, labels_encoded, test_size = ratio)
	model = DecisionTreeClassifier(random_state = 0, max_features = "sqrt")
	model.fit(X_train, Y_train)
	
	filename = "dt_model_file_smoted.pkl"
	with open(filename, 'wb') as file:
		pickle.dump(model, file)

	y_pred = model.predict(X_test)
	score = metrics.accuracy_score(Y_test,y_pred)
	scores_list.append(metrics.accuracy_score(Y_test,y_pred))
	print("Accuracy for ratio " + str(ratio) + ": " + str(score))

# Plot accuracy results
plt.plot(ratios,scores_list)
plt.xticks(np.linspace(0.15, 0.35, 5, endpoint = True))
plt.title("Plot for classificator accuracy with all 11 attributes")
plt.ylabel("Accuracy")
plt.xlabel("Ratio")
plt.show()

## Plot optimal attributes for each ratio (uncomment this to use)
# for ratio in ratios:
	# X_train, X_test, Y_train, Y_test = train_test_split(features, labels_encoded, test_size = ratio)
	# model = DecisionTreeClassifier(random_state = 0, max_features = "sqrt")
	# rfecv = RFECV(estimator = model, step = 1, cv = StratifiedKFold(2), scoring = "accuracy")
	# rfecv.fit(X_train, Y_train)
	
	# print("Optimal number of features : %d" % rfecv.n_features_)
	# test = str(np.where(rfecv.support_ == False)[0])
	
	# Plot number of features VS. cross-validation scores
	# plt.figure()
	# plt.title("Optimal number of features : " + str(rfecv.n_features_) + ". Drop feature(s): " + test)
	# plt.xlabel("Number of features selected")
	# plt.ylabel("Cross validation score (nb of correct classifications)")
	# plt.plot(range(1, len(rfecv.grid_scores_) + 1), rfecv.grid_scores_)
	# plt.show()