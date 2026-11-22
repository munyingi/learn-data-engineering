-- Exercise dbt3-1 · Lesson 3: Macros and documentation
-- Dataset: citybikes
--
-- Use the compiled temp_band macro to answer: do people ride more when it is warm? Return
-- temp_band, days and avg_trips (average trips per day, rounded to 0 decimals).
--
-- Hint: COUNT(*) AS days, ROUND(AVG(trips), 0) AS avg_trips, GROUP BY 1

SELECT
  CASE WHEN temp_mean_c < 10 THEN 'cold' WHEN temp_mean_c <= 18 THEN 'mild' ELSE 'warm' END AS temp_band,
  
FROM daily_trips

