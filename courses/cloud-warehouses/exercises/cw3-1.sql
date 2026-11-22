-- Exercise cw3-1 · Lesson 3: Partitioning and clustering
-- Dataset: ops
--
-- For each table, return table_name, queries and unfiltered (how many of those queries had
-- no partition filter).
--
-- Hint: COUNT(*) FILTER (WHERE NOT partition_filter) AS unfiltered

SELECT table_name, COUNT(*) AS queries, 
FROM query_log

