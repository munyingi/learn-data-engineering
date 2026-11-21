# Challenge py-3
#
# A rerun loaded the same order twice. Write dedupe(rows) that keeps only the first row
# for each order_id and keeps the original order. Each row is a dict.
#
# Hint: Keep a set of order_ids you have already seen, and a list of rows to return.

def dedupe(rows):
    # your code here
    pass

rows = [
    {'order_id': 1, 'total': 10},
    {'order_id': 2, 'total': 20},
    {'order_id': 1, 'total': 10},
]
print(dedupe(rows))
