-- Exercise dm6-2 · Lesson 6: Mini project: revenue by where customers really lived
-- Dataset: feeds
--
-- How big is the mistake if you ignore history? Count the orders (any status, any year)
-- where the city at the time of the order differs from the customer's city today. Return
-- one column, orders_moved.
--
-- Hint: Same point-in-time join as the example, plus a join to customers, WHERE s.city <> c.city.

WITH scd AS (
  SELECT customer_id, city, valid_from,
    LEAD(valid_from) OVER (PARTITION BY customer_id ORDER BY valid_from) - 1 AS valid_to
  FROM customer_history
)
SELECT COUNT(*) AS orders_moved
FROM orders AS o

