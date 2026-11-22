-- Exercise cw4-1 · Lesson 4: Compute and warehouse sizes
-- Dataset: ops
--
-- Return warehouse_size and credits (rounded to 2 decimals): hours of query time
-- multiplied by 1 for XS, 2 for S and 4 for M.
--
-- Hint: SUM(duration_s) / 3600.0 * CASE warehouse_size WHEN 'XS' THEN 1 WHEN 'S' THEN 2 WHEN 'M' THEN 4 END

SELECT
  warehouse_size,
  
FROM query_log

