from sklearn import metrics
from sklearn import preprocessing
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier
import matplotlib.pyplot as plt
import mysql.connector
import numpy as np

target_db = mysql.connector.connect(host = "localhost", user = "root", passwd = "*****", database = "dataset")
mycursor = target_db.cursor()

query1 = "SELECT * FROM dataset.feat_final"

mycursor.execute(query1)
result_set = mycursor.fetchall()

features = []
labels = []

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

encoder = preprocessing.LabelEncoder()
labels_encoded = encoder.fit_transform(labels)
le_name_mapping = dict(zip(encoder.classes_, encoder.transform(encoder.classes_)))

ratio = 0.35

X_train, X_test, Y_train, Y_test = train_test_split(features, labels_encoded, test_size = ratio)

k_range = range(1,26)

scores = {}
scores_list = []

for k in k_range:

	model = KNeighborsClassifier(n_neighbors = k)
	model.fit(X_train, Y_train)

# predicted = model.predict([[5,3,4,256,38,2,111,222,23,14,59]])
# print(predicted)

	y_pred = model.predict(X_test)
	scores[k] = metrics.accuracy_score(Y_test,y_pred)
	scores_list.append(metrics.accuracy_score(Y_test,y_pred))
	print("Accuracy for k = " + str(k) + ": " + str(scores[k]))

plt.plot(k_range,scores_list)
plt.title("Plot for classificator accuracy with all 11 attributes")
plt.xlabel("Value of K for KNN")
plt.ylabel("Testing Accuracy for split ratio: " + str(ratio))
plt.show()