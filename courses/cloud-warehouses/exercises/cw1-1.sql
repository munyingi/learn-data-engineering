-- Exercise cw1-1 · Lesson 1: How cloud warehouses work
-- Dataset: ops
--
-- How much data did each table get scanned for in October? Return table_name and
-- tb_scanned (terabytes, bytes / 1e12, rounded to 2 decimals).
--
-- Hint: ROUND(SUM(bytes_scanned) / 1e12, 2) AS tb_scanned, GROUP BY table_name

SELECT table_name, 
FROM query_log

