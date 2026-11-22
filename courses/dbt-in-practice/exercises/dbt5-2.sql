-- Exercise dbt5-2 · Lesson 5: Mini project: five seasons of city bikes
-- Dataset: citybikes
--
-- Write the test: a season runs from 1 April to 31 October, which is 214 days. Return year
-- and days for every year that does not have exactly 214 rows. (This test passes today, so
-- the right answer has no rows.)
--
-- Hint: GROUP BY 1 HAVING COUNT(*) <> 214

SELECT year(trip_date) AS year, COUNT(*) AS days
FROM daily_trips

