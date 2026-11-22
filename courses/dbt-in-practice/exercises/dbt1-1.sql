-- Exercise dbt1-1 · Lesson 1: Sources, staging and marts
-- Dataset: citybikes
--
-- Write stg_daily_trips: the columns trip_date, trips, avg_duration_min (rounded to 1
-- decimal), temp_c (renamed from temp_mean_c) and is_rainy (true when precipitation_mm is
-- above 0).
--
-- Hint: ROUND(avg_duration_min, 1) AS avg_duration_min, temp_mean_c AS temp_c, precipitation_mm > 0 AS is_rainy

SELECT
  trip_date,
  trips,
  
FROM daily_trips;
