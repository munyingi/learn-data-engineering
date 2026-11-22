-- Exercise dm6-1 · Lesson 6: Mini project: revenue by where customers really lived
-- Dataset: feeds
--
-- For customers in customer_history, show delivered revenue in 2026 by the city they lived
-- in at the time of the order: columns city_at_order and revenue (rounded to 2 decimals).
--
-- Hint: Join fct to scd on customer_id and the date range, then GROUP BY s.city.

WITH scd AS (
  SELECT customer_id, city, valid_from,
    LEAD(valid_from) OVER (PARTITION BY customer_id ORDER BY valid_from) - 1 AS valid_to
  FROM customer_history
),
fct AS (
  SELECT o.order_date, o.customer_id, i.quantity * i.unit_price AS line_value
  FROM orders AS o JOIN order_items AS i ON i.order_id = o.order_id
  WHERE o.status = 'delivered' AND year(o.order_date) = 2026
)
SELECT 
