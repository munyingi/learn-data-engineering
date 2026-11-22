-- Exercise dq4-2 · Lesson 4: Validity checks
-- Dataset: feeds
--
-- Combine three checks into one list of problems with the columns order_id and problem,
-- where problem is exactly missing customer, invalid status or non-positive amount. A row
-- can appear more than once if it breaks more than one rule.
--
-- Hint: Three SELECTs joined with UNION ALL, each with its own WHERE and a fixed problem label.

SELECT order_id, 'missing customer' AS problem FROM raw_orders_feed WHERE customer_id IS NULL
UNION ALL

