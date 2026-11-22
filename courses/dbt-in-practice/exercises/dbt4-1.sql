-- Exercise dbt4-1 · Lesson 4: Incremental models
-- Dataset: citybikes
--
-- The table was last built up to 30 June 2025. How many rows would the next incremental
-- run add? Return one column, new_rows.
--
-- Hint: trip_date > (SELECT MAX(trip_date) FROM existing)

WITH existing AS (
  SELECT * FROM daily_trips WHERE trip_date <= DATE '2025-06-30'
)
SELECT COUNT(*) AS new_rows
FROM daily_trips
WHERE 
