-- Exercise cw3-2 · Lesson 3: Partitioning and clustering
-- Dataset: citybikes
--
-- Imagine daily_trips is partitioned by year. A query for July 2025 only needs one
-- partition. What share of the rows would it read, compared with a full scan? Return
-- share_read rounded to 2 decimals (rows in 2025 divided by all rows).
--
-- Hint: COUNT(*) FILTER (WHERE year(trip_date) = 2025) divided by COUNT(*)

SELECT
  
FROM daily_trips;
