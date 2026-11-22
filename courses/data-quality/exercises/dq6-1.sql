-- Exercise dq6-1 · Lesson 6: Mini project: the daily data quality report
-- Dataset: feeds
--
-- Build the report with two columns, check_name and failed_rows, and one row for each
-- check: duplicate_orders (order_ids loaded more than once), missing_customer,
-- invalid_status, non_positive_amount and double_payments (orders with more than one non-
-- refund payment).
--
-- Hint: One SELECT per check, each returning a label and a COUNT(*), joined with UNION ALL.

SELECT 'duplicate_orders' AS check_name, COUNT(*) AS failed_rows
FROM (SELECT order_id FROM raw_orders_feed GROUP BY order_id HAVING COUNT(*) > 1) AS t
UNION ALL

