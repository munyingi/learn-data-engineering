# Exercise py4-2 · Lesson 3: Reading data with pandas
#
# Load data/shop/products.csv and create avg_price: the average price per category,
# rounded to 2 decimals, as a pandas Series indexed by category.
#
# Hint: products.groupby("category")["price"].mean().round(2)
# Run it from the repo root: python courses/python-for-data/exercises/py4-2.py

import pandas as pd

products = pd.read_csv("data/shop/products.csv")
avg_price = 
print(avg_price)
