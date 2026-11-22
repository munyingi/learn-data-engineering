-- Exercise dbt1-2 · Lesson 1: Sources, staging and marts
-- Dataset: citybikes
--
-- Now a mart built on your staging model: year, month, total trips and rainy_days (how
-- many days had rain).
--
-- Hint: SUM(trips) AS trips, COUNT(*) FILTER (WHERE is_rainy) AS rainy_days, then GROUP BY 1, 2.

WITH stg_daily_trips AS (
  SELECT trip_date, trips, precipitation_mm > 0 AS is_rainy
  FROM daily_trips
)
SELECT
  year(trip_date) AS year,
  month(trip_date) AS month,
  
FROM stg_daily_trips

