-- Exercise dq2-3 · Lesson 2: Duplicates
-- Dataset: feeds
--
-- Build the clean, deduplicated feed: one row per order_id, the latest load only, with the
-- columns order_id, customer_id, order_date, status and amount_eur.
--
-- Hint: QUALIFY ROW_NUMBER() OVER (PARTITION BY order_id ORDER BY loaded_at DESC) = 1

SELECT order_id, customer_id, order_date, status, amount_eur
FROM raw_orders_feed

