-- Exercise dq4-1 · Lesson 4: Validity checks
-- Dataset: feeds
--
-- Show the rows whose status is not one of delivered, shipped, cancelled or returned:
-- columns order_id and status.
--
-- Hint: WHERE status NOT IN ('delivered', 'shipped', 'cancelled', 'returned')

SELECT order_id, status
FROM raw_orders_feed
WHERE 
