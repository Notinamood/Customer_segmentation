import pandas as pd
import numpy as np
df = pd.read_csv('../dataset/online_retail_raw.csv', encoding='ISO-8859-1')
print('csv file loaded successfully')


#standardize column names
df.columns = (
    df.columns
    .str.strip()
    .str.lower()
    .str.replace(" ", "_")
)

#Data cleaning

#step 1 remove missing customer id 
df = df.dropna(subset=['customer_id'])
#step 2 remove duplicate rows
df = df.drop_duplicates()
#step 3 remove returned items
df = df[df['quantity'] > 0]
#step 4 remove canceled orders
df = df[~df['invoice'].astype(str).str.startswith('C')]
#step 5 remove items with zero price
df = df[df['price'] > 0]

#Feature engineering

#step 6 convert InvoiceDate to datetime format
df['invoicedate'] = pd.to_datetime(df['invoicedate'])
#step 7 convert CustomerID to integer type
df['customer_id'] = df['customer_id'].astype(int)
#step 8 create revenue column
df['revenue'] = df['quantity'] * df['price']

print('data cleaning and feature engineering completed successfully')
print(df.shape)

#step 9 save cleaned data to new csv file
df.to_csv('../dataset/online_retail_cleaned.csv', index=False)
print('cleaned data saved to online_retail_cleaned.csv')