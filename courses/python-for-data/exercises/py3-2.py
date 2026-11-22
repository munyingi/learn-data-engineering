# Exercise py3-2 · Lesson 2: Rows, dictionaries and loops
#
# Write a function count_by(rows, key) that returns a dictionary counting how often each
# value of key appears. count_by(orders, "status") should give {"delivered": 3,
# "cancelled": 1, "returned": 1}.
#
# Hint: Inside the loop: counts[r[key]] = counts.get(r[key], 0) + 1
# Run it from the repo root: python courses/python-for-data/exercises/py3-2.py

def count_by(rows, key):
    counts = {}
    # your code here
    return counts

orders = [
    {"status": "delivered"}, {"status": "cancelled"}, {"status": "delivered"},
    {"status": "returned"}, {"status": "delivered"},
]
print(count_by(orders, "status"))
