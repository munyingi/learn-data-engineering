-- Exercise dbt2-1 · Lesson 2: Tests that catch real problems
-- Dataset: citybikes
--
-- Write the unique test for stations.station_id: return station_id and n (how many times
-- it appears) for every id that appears more than once. A passing test returns no rows.
--
-- Hint: GROUP BY station_id HAVING COUNT(*) > 1

SELECT station_id, COUNT(*) AS n
FROM stations

