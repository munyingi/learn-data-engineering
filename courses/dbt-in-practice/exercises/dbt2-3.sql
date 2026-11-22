-- Exercise dbt2-3 · Lesson 2: Tests that catch real problems
-- Dataset: citybikes
--
-- Write a custom test for stations: return station_id, station_name and capacity for
-- stations whose capacity is missing or not above 0.
--
-- Hint: capacity IS NULL OR capacity <= 0

SELECT station_id, station_name, capacity
FROM stations
WHERE 
