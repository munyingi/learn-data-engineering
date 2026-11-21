-- Exercise sql7-1 · Lesson 7: Mini project: the monthly report
-- Dataset: shop
--
-- Revenue by month. For delivered orders in 2026, show month (use date_trunc('month',
-- order_date)) and revenue (sum of quantity × unit_price, rounded to 2 decimals), sorted
-- by month.
--
-- Hint: WHERE o.status = 'delivered' AND year(o.order_date) = 2026, then GROUP BY 1 ORDER BY 1.

SELECT date_trunc('month', o.order_date) AS month,
  
FROM orders AS o
JOIN order_items AS i ON i.order_id = o.order_id
WHERE 
