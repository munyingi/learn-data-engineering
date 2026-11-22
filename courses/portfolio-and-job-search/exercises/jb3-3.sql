-- Exercise jb3-3 · Lesson 3: SQL interview classics
-- Dataset: shop
--
-- Growth: for each month of 2026, return month (1 to 12), revenue (delivered orders,
-- rounded to 2 decimals) and growth_pct: the change from the previous month in percent,
-- rounded to 1 decimal (NULL for the first month). Sort by month.
--
-- Hint: 100.0 * (revenue - LAG(revenue) OVER (ORDER BY month)) / LAG(revenue) OVER (ORDER BY month)

WITH monthly AS (
  SELECT month(o.order_date) AS month, ROUND(SUM(i.quantity * i.unit_price), 2) AS revenue
  FROM orders AS o
  JOIN order_items AS i ON i.order_id = o.order_id
  WHERE o.status = 'delivered' AND year(o.order_date) = 2026
  GROUP BY 1
)
SELECT month, revenue,
  
FROM monthly
ORDER BY month;
