import pandas as pd
import numpy as np
from scipy import stats
from sklearn import preprocessing
from sklearn.model_selection import KFold, RepeatedKFold
from sklearn.linear_model import LinearRegression, Lasso, Ridge, RidgeCV

# Merge tempResults.csv and training.csv
a = pd.read_csv("tempResults.csv", sep=';')
b = pd.read_csv("training.csv")
b = b.dropna(axis=1)
df = a.merge(b, on='name')
df.to_csv("output.csv", index=False)


# Are there null values? No!
print(df.isnull().values.any())

X = pd.DataFrame(df.drop(['name', 'pkg(µj)','duration(ms)', 'dram(µj)', 'temp(C)'], axis=1))
y = pd.DataFrame(df['pkg(µj)'])

# LinearRegression() creates a linear regression model and the for loop divides
# the dataset into three folds (by shuffling its indices). Inside the loop, 
# we fit the data and then assess its performance by appending its score to a 
# list (scikit-learn returns the R² score which is the coefficient of determination).
#model = LinearRegression()
#model = Ridge(alpha=1.0)

cv = RepeatedKFold(n_splits=10, n_repeats=3, random_state=1)
# RidgeCV: version of the algorithm that automatically finds good hyperparameters
model = RidgeCV(alphas=np.arange(0, 1, 0.01), cv=cv, scoring='neg_mean_absolute_error')
model.fit(X, y)
score = model.score(X, y)
print(score)
print('alpha: %f' % model.alpha_)
print('coef: %f' % model.coef_)


# K-fold cross validation (works better with large dataset)
#scores = []
#kfold = KFold(n_splits=2, shuffle=True)
#for i, (train, test) in enumerate(kfold.split(X, y)):
# model.fit(X.iloc[train,:], y.iloc[train,:])
# score = model.score(X.iloc[test,:], y.iloc[test,:])
# scores.append(score)
#print(scores)