# Exercise py3-1 · Lesson 2: Rows, dictionaries and loops
#
# Create delivered_total: the sum of amount for orders whose status is delivered.
#
# Hint: Loop over orders, check o["status"] == "delivered", and add o["amount"].
# Run it from the repo root: python courses/python-for-data/exercises/py3-1.py

orders = [
    {"order_id": 1, "status": "delivered", "amount": 49.0},
    {"order_id": 2, "status": "cancelled", "amount": 120.0},
    {"order_id": 3, "status": "delivered", "amount": 18.5},
    {"order_id": 4, "status": "returned", "amount": 75.0},
    {"order_id": 5, "status": "delivered", "amount": 260.0},
]
delivered_total = 0
# your loop here

print(delivered_total)
