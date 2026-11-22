# Exercise jb4-2 · Lesson 4: Python interview classics
#
# Write batches(items, size): split a list into lists of at most size items, keeping the
# order. Loading data in batches is how you avoid sending one giant request to an API or
# database.
#
# Hint: A list comprehension over range(0, len(items), size), slicing items[i:i + size].
# Run it from the repo root: python courses/portfolio-and-job-search/exercises/jb4-2.py

def batches(items, size):
    ...

print(batches([1, 2, 3, 4, 5], 2))
