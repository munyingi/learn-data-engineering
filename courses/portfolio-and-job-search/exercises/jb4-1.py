# Exercise jb4-1 · Lesson 4: Python interview classics
#
# Write latest_per_id(records): records is a list of dicts with id and updated_at (ISO
# timestamp strings). Return a list with only the most recent record for each id, sorted
# by id.
#
# Hint: Keep a dict from id to the best record so far; replace it when updated_at is later. ISO strings compare correctly as text.
# Run it from the repo root: python courses/portfolio-and-job-search/exercises/jb4-1.py

def latest_per_id(records):
    ...

rows = [
    {"id": 2, "updated_at": "2026-11-01T10:00:00", "status": "shipped"},
    {"id": 1, "updated_at": "2026-11-01T09:00:00", "status": "placed"},
    {"id": 2, "updated_at": "2026-11-03T08:00:00", "status": "delivered"},
]
print(latest_per_id(rows))
