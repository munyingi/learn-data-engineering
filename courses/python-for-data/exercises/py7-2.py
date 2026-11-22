# Exercise py7-2 · Lesson 6: Mini project: a loader that is safe to run twice
#
# Use your skills on the real raw feed. Load data/feeds/raw_orders_feed.csv into feed and
# create clean: one row per order_id, keeping the latest loaded_at. Then set
# duplicates_removed to how many rows were dropped.
#
# Hint: Same pattern as before: sort by loaded_at, drop_duplicates on order_id keeping the last.
# Run it from the repo root: python courses/python-for-data/exercises/py7-2.py

import pandas as pd

feed = pd.read_csv("data/feeds/raw_orders_feed.csv")
clean = 
duplicates_removed = 
print(len(feed), len(clean), duplicates_removed)
