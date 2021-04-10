import pandas as pd
import numpy as np
from sklearn.model_selection import RepeatedKFold
from sklearn.linear_model import LinearRegression, Lasso, Ridge
from sklearn.ensemble import RandomForestRegressor
from sklearn.svm import SVR
from sklearn.model_selection import cross_val_score
import os
import argparse
import pickle

def get_model(method):
    if method == 'Lasso':
        model = Lasso()
    elif method == 'Ridge':
        model = Ridge()
    elif method == 'RandomForest':
        model = RandomForestRegressor(max_depth=10, random_state=0)
    elif method == 'SVR':
        model = SVR(kernel='rbf', C=1e3, gamma=0.1)
    else:
        model = LinearRegression()
    return model

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-m', '--regression-method', choices=['Linear', 'Ridge', 'Lasso', 'RandomForest', 'SVR'], default='Linear', help='Determine the regression algorithm used')
    parser.add_argument('-s', '--save-model', action='store_true',help='Will save the model using pickle')
    parser.add_argument('-c', '--cross-validate', action='store_true',help='Will perform cross validation of the chosen regression model')
    args = parser.parse_args()

    # Merge tempResults.csv and training.csv
    if not os.path.exists('output.csv'):
        a = pd.read_csv("tempResults.csv", sep=';')
        b = pd.read_csv("training.csv")
        b = b.dropna(axis=1)
        df = a.merge(b, on='name')
        df.to_csv("output.csv", index=False)
    else:
        df = pd.read_csv('output.csv')


    X = pd.DataFrame(df.drop(['name', 'pkg(µj)', 'duration(ms)', 'dram(µj)', 'temp(C)'], axis=1))
    y = pd.DataFrame(df['pkg(µj)'])

    model = get_model(args.regression_method)
    y = np.ravel(y)

    model.fit(X, y)
    if args.cross_validate:
        splits = int(len(y) /10)
        print(np.mean(cross_val_score(model, X, y, cv=splits,scoring='neg_root_mean_squared_error')))

    if args.save_model:
        pickle.dump(model, open('model.obj','wb'))
