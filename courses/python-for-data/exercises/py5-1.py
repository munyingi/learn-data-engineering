# Exercise py5-1 · Lesson 4: Cleaning and joining
#
# Create revenue_by_category: total revenue (quantity × unit_price) per product category
# across all order lines, rounded to 2 decimals, as a Series indexed by category.
#
# Hint: Merge items with products on product_id, add a line_value column, then groupby("category")["line_value"].sum().
# Run it from the repo root: python courses/python-for-data/exercises/py5-1.py

import pandas as pd

items = pd.read_csv("data/shop/order_items.csv")
products = pd.read_csv("data/shop/products.csv")

revenue_by_category = 
print(revenue_by_category)
