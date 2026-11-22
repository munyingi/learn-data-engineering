# Exercise py7-1 · Lesson 6: Mini project: a loader that is safe to run twice
#
# Write load(existing, batch) that returns a DataFrame with one row per order_id, keeping
# the row with the latest loaded_at, sorted by order_id, with a fresh index. Loading the
# same batch twice must give the same result as loading it once.
#
# Hint: pd.concat, then sort_values("loaded_at"), drop_duplicates("order_id", keep="last"), sort_values("order_id"), reset_index(drop=True).
# Run it from the repo root: python courses/python-for-data/exercises/py7-1.py

import pandas as pd

def load(existing, batch):
    # your code here
    pass


existing = pd.DataFrame({"order_id": [1, 2], "status": ["shipped", "delivered"], "loaded_at": ["2026-11-01", "2026-11-01"]})
batch = pd.DataFrame({"order_id": [1, 3], "status": ["delivered", "delivered"], "loaded_at": ["2026-11-02", "2026-11-02"]})
once = load(existing, batch)
twice = load(once, batch)
print(once)
print(once.equals(twice))
