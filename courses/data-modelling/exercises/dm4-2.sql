-- Exercise dm4-2 · Lesson 4: The star schema
-- Dataset: shop
--
-- Weekend or weekday? For delivered orders in 2026, show is_weekend and revenue (rounded
-- to 2 decimals), using a date dimension built inside the query.
--
-- Hint: JOIN dim_date AS d ON d.date_day = f.order_date, then GROUP BY d.is_weekend.

WITH dim_date AS (
  SELECT d::DATE AS date_day, isodow(d) >= 6 AS is_weekend
  FROM generate_series(DATE '2026-01-01', DATE '2026-12-31', INTERVAL 1 DAY) AS t(d)
),
fct AS (
  SELECT o.order_date, i.quantity * i.unit_price AS line_value
  FROM orders AS o JOIN order_items AS i ON i.order_id = o.order_id
  WHERE o.status = 'delivered'
)
SELECT 
