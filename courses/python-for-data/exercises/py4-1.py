# Exercise py4-1 · Lesson 3: Reading data with pandas
#
# Load data/shop/orders.csv into orders (parse order_date as a date) and create
# orders_2025: the number of orders placed in 2025, as a whole number.
#
# Hint: orders["order_date"].dt.year == 2025 gives True/False per row; .sum() counts the Trues.
# Run it from the repo root: python courses/python-for-data/exercises/py4-1.py

import pandas as pd

orders = pd.read_csv("data/shop/orders.csv", parse_dates=["order_date"])
orders_2025 = 
print(orders_2025)
