# Exercise py6-2 · Lesson 5: Calling APIs safely
#
# Write backoff_waits(attempts, first=1) that returns the list of waits between attempts,
# doubling each time. backoff_waits(4) should be [1, 2, 4] (there is no wait after the
# last attempt).
#
# Hint: A list comprehension: first * 2 ** i for each i in range(attempts - 1).
# Run it from the repo root: python courses/python-for-data/exercises/py6-2.py

def backoff_waits(attempts, first=1):
    # your code here
    pass

print(backoff_waits(4))
