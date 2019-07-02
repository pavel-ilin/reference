Data entry:     Prediction value:
[x1, x2 ,x3]    [y]
[x1, x2 ,x3]    [y]
[x1, x2 ,x3]    [y]
[x1, x2 ,x3]    [y]
[x1, x2 ,x3]    [y]

Function:
F(x) = y

## Supervised learning: Train model using labeled data
In this case we know value of Y
[x1, x2 ,x3, y]
[x1, x2 ,x3, y]
[x1, x2 ,x3, y]

After training we can use rest of the date for revaluating model performance.
After reevaluation if model performance is good we can use new observations where label (Y) is unknown and generate new predicted values.

## Unsupervised learning: We don't have known label value, we train model by finding similarities between the observations
After model trained each new observation is assigned to the cluster of observations with the most similar characteristics

# Supervised learning

## Regression

Exercise example:
Age: 27         Heart rate: 134
Gender: 1(F)    Temperature: 37C
Weight: 60kg    Time: 25
Height: 165cm   Calories: 231

F([27,1,60,165,134,37,25]) = 231
F([x1,x2,x3,x4,x5,x6,x7]) = y


Error rates:
RMSE = √(∑(score - label)²)
MAE = 1/n∑abs(score-label)

Relative error metrics:
RAE = ∑abs(score-label)/∑ label
RSE = √(∑(score - label)²)/∑ label²

## Classification

Binary Classification
F([x1,x2,x3,x4]) = Y[1|0]

Function will not tell us absolute value 1 or 0, instead it will calculate value between 1 or 0.
And we will use threshold value to decide whether the result should be counted as a 1 or 0.

Classes of the results: True positive, True negative, False positive, False negative

### Measure performance:

Accuracy = (TP + TN) / (TP + FP + TN + FN)
Precision = TP / (TP+FP)
Recall or TRUE Positive Rate = TP / (TP + FN)
False Positive Rate = FP / (FP + TN)

# Unsupervised learning

## Clustering

k-means clustering is a method of vector quantization, originally from signal processing, that is popular for cluster analysis in data mining. k-means clustering aims to partition n observations into k clusters in which each observation belongs to the cluster with the nearest mean, serving as a prototype of the cluster. This results in a partitioning of the data space into Voronoi cells.

Principal component analysis (PCA) is a statistical procedure that uses an orthogonal transformation to convert a set of observations of possibly correlated variables (entities each of which takes on various numerical values) into a set of values of linearly uncorrelated variables called principal components.
