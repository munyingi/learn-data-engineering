# Exercise py6-1 · Lesson 5: Calling APIs safely
#
# Write fetch_with_retry(call, attempts) that calls call() up to attempts times. It
# returns the first successful result. If every attempt raises ConnectionError, it raises
# ConnectionError again.
#
# Hint: Loop attempts times; inside, try: return call(); except ConnectionError: re-raise only on the last attempt.
# Run it from the repo root: python courses/python-for-data/exercises/py6-1.py

def fetch_with_retry(call, attempts):
    # your code here
    pass


def flaky():
    flaky.n += 1
    if flaky.n < 3:
        raise ConnectionError("timeout")
    return "data"
flaky.n = 0

print(fetch_with_retry(flaky, 5))
