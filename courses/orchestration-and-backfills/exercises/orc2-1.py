# Exercise orc2-1 · Lesson 2: Retries and idempotent tasks
#
# Write with_retries(fn, attempts=3): call fn() and return its result. If it raises an
# exception, try again, up to attempts times in total. If the last attempt also fails,
# raise that exception. (No need to sleep.)
#
# Hint: Loop over range(attempts), return fn() inside try, and in except re-raise when it is the last attempt.
# Run it from the repo root: python courses/orchestration-and-backfills/exercises/orc2-1.py

def with_retries(fn, attempts=3):
    ...

