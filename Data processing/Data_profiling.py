import pandas as pd
import numpy as np
df = pd.read_csv('../dataset/online_retail_raw.csv', encoding='ISO-8859-1')
print('csv file loaded successfully')
print('number of rows and columns in the dataset: ', df.shape)
print('first 5 rows of the dataset:', df.head()) 
print('dataset info: ', df.info())
print('number of missing values in each column: ', df.isnull().sum())
print('number of duplicate rows in the dataset: ', df.duplicated().sum())
print('negative quantity:', (df["Quantity"] < 0).sum())
print('order canceled:', (df["Invoice"].astype(str).str.startswith('C')).sum())
print('items with zero price:', (df["Price"] == 0).sum())