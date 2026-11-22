-- Exercise cw2-2 · Lesson 2: What a query costs
-- Dataset: ops
--
-- Which people (not services) cost the most? Return user_name and queries for users whose
-- total cost is above €1, excluding users whose name ends in _bot or _runner.
--
-- Hint: Filter names with NOT LIKE '%_bot' and NOT LIKE '%_runner', GROUP BY user_name, then HAVING on the cost.

SELECT user_name, COUNT(*) AS queries
FROM query_log
WHERE 

