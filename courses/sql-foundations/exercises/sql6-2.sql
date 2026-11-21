-- Exercise sql6-2 · Lesson 7: Window functions
-- Dataset: citybikes
--
-- For each year in daily_trips, find the single busiest day. Show year, trip_date and
-- trips, sorted by year.
--
-- Hint: PARTITION BY year(trip_date) ORDER BY trips DESC

WITH ranked AS (
  SELECT year(trip_date) AS year, trip_date, trips,
    ROW_NUMBER() OVER (
      PARTITION BY  
      ORDER BY  
    ) AS rn
  FROM daily_trips
)
SELECT year, trip_date, trips
FROM ranked
WHERE rn = 1
ORDER BY year;
