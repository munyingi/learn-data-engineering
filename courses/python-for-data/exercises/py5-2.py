# Exercise py5-2 · Lesson 4: Cleaning and joining
#
# Create spend: a DataFrame with one row per customer who has a delivered order, and the
# columns customer_id, first_name and total (their delivered spend, rounded to 2
# decimals).
#
# Hint: Filter delivered orders, merge with items, compute value, groupby customer_id, then merge first_name from customers.
# Run it from the repo root: python courses/python-for-data/exercises/py5-2.py

import pandas as pd

orders = pd.read_csv("data/shop/orders.csv")
items = pd.read_csv("data/shop/order_items.csv")
customers = pd.read_csv("data/shop/customers.csv")

spend = 
print(spend.sort_values("total", ascending=False).head())
