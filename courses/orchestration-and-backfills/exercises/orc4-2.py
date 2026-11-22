# Exercise orc4-2 · Lesson 4: Backfills
#
# Write backfill_dates(start, end, done): start and end are ISO date strings (inclusive),
# done is a set of ISO dates that already succeeded. Return a sorted list of the ISO dates
# between start and end that are not in done.
#
# Hint: Start at date.fromisoformat(start), add timedelta(days=1) until you pass end, and keep the days not in done.
# Run it from the repo root: python courses/orchestration-and-backfills/exercises/orc4-2.py

from datetime import date, timedelta

def backfill_dates(start, end, done):
    ...

print(backfill_dates("2026-10-01", "2026-10-07", {"2026-10-01", "2026-10-02", "2026-10-03", "2026-10-07"}))
