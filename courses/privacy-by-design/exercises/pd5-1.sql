-- Exercise pd5-1 · Lesson 5: Mini project: a deletion plan
-- Dataset: feeds
--
-- Find the customer of request 902, then return table_name, rows and action for: customers
-- (delete), customer_contacts (delete), customer_history (delete), orders (anonymise) and
-- raw_orders_feed (anonymise). Include tables with 0 rows.
--
-- Hint: Five SELECTs, each with a fixed table name and action, joined with UNION ALL.

WITH who AS (
  SELECT customer_id FROM deletion_requests WHERE request_id = 902
)
SELECT 'customers' AS table_name, COUNT(*) AS rows, 'delete' AS action
FROM customers WHERE customer_id IN (SELECT customer_id FROM who)
UNION ALL

