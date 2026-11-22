# Exercise py4-3 · Lesson 3: Reading data with pandas
#
# Create top_customer: the customer_id that placed the most orders. Use value_counts() on
# the customer_id column.
#
# Hint: orders["customer_id"].value_counts().idxmax() returns the most common value.
# Run it from the repo root: python courses/python-for-data/exercises/py4-3.py

import pandas as pd

orders = pd.read_csv("data/shop/orders.csv")
top_customer = 
print(top_customer)
