-- Exercise dq5-1 · Lesson 5: Reconciliation
-- Dataset: feeds
--
-- Which delivered orders have no payment at all? Use the deduplicated feed (latest load
-- per order, status exactly delivered). Show order_id and amount_eur.
--
-- Hint: LEFT JOIN payments and keep rows WHERE p.payment_id IS NULL and the status is delivered.

WITH orders AS (
  SELECT order_id, status, amount_eur
  FROM raw_orders_feed
  QUALIFY ROW_NUMBER() OVER (PARTITION BY order_id ORDER BY loaded_at DESC) = 1
)
SELECT o.order_id, o.amount_eur
FROM orders AS o

