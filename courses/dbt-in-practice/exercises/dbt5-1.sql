-- Exercise dbt5-1 · Lesson 5: Mini project: five seasons of city bikes
-- Dataset: citybikes
--
-- Build fct_season: one row per year with year, trips (total), avg_temp_c (rounded to 1
-- decimal) and rainy_share_pct (the percentage of days with rain, rounded to 1 decimal).
--
-- Hint: 100.0 * COUNT(*) FILTER (WHERE is_rainy) / COUNT(*) gives the percentage.

WITH stg_daily_trips AS (
  SELECT trip_date, trips, temp_mean_c AS temp_c, precipitation_mm > 0 AS is_rainy
  FROM daily_trips
)
SELECT
  year(trip_date) AS year,
  
FROM stg_daily_trips

