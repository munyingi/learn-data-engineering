-- Exercise dbt4-2 · Lesson 4: Incremental models
-- Dataset: citybikes
--
-- Same table, but with a 3-day lookback: reprocess every row from 3 days before the latest
-- date in existing onwards. Return rows_processed.
--
-- Hint: Subtract INTERVAL 3 DAY from the max date.

WITH existing AS (
  SELECT * FROM daily_trips WHERE trip_date <= DATE '2025-06-30'
)
SELECT COUNT(*) AS rows_processed
FROM daily_trips
WHERE 
