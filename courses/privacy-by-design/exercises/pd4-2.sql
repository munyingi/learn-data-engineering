-- Exercise pd4-2 · Lesson 4: Deletion requests
-- Dataset: feeds
--
-- Audit the completed requests: for customers whose request has a completed_at, how many
-- rows still exist? Return table_name and rows for customers, customer_contacts and orders
-- (one row per table).
--
-- Hint: Three SELECTs with the same WHERE customer_id IN (SELECT customer_id FROM done), joined with UNION ALL.

WITH done AS (
  SELECT customer_id FROM deletion_requests WHERE completed_at IS NOT NULL
)
SELECT 'customers' AS table_name, COUNT(*) AS rows FROM customers WHERE customer_id IN (SELECT customer_id FROM done)
UNION ALL

