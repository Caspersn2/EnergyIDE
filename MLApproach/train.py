import pandas as pd
import numpy as np
from scipy import stats
from sklearn import preprocessing
from sklearn.model_selection import KFold, RepeatedKFold
from sklearn.linear_model import LinearRegression, Lasso, Ridge, RidgeCV, LassoCV
import os
import pickle

# Merge tempResults.csv and training.csv
if not os.path.exists('output.csv'):
    a = pd.read_csv("tempResults.csv", sep=';')
    b = pd.read_csv("training.csv")
    b = b.dropna(axis=1)
    df = a.merge(b, on='name')
    df.to_csv("output.csv", index=False)
else:
    df = pd.read_csv('output.csv')


X = pd.DataFrame(
    df.drop(['name', 'pkg(µj)', 'duration(ms)', 'dram(µj)', 'temp(C)'], axis=1))
y = pd.DataFrame(df['pkg(µj)'])

print(y.max() / 1000000)  # pkg(µj)    21834145581 µj  = 21834.145581 j
print(y.min() / 1000000)  # pkg(µj)    30335 µj        = 0.030335 j
print(y.mean() / 1000000) # pkg(µj)    2.817638e+08 µj = 281.763764 j


#model = LinearRegression()
cv = RepeatedKFold(n_splits=10, n_repeats=3, random_state=1)
#model = LassoCV(alphas=np.arange(0, 1, 0.01), cv=cv, n_jobs=-1)
model = RidgeCV(alphas=np.arange(0, 1, 0.01), cv=cv, scoring='neg_mean_absolute_error')


#model.fit(X, y)
#pickle.dump(model, open('model.obj','wb'))
