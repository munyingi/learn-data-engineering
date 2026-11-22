-- Exercise dq5-2 · Lesson 5: Reconciliation
-- Dataset: feeds
--
-- Find customers who were charged twice: orders with more than one non-refund payment.
-- Show order_id, payments (the count) and charged_eur (their total).
--
-- Hint: GROUP BY order_id HAVING COUNT(*) > 1, with COUNT(*) and SUM(amount_eur).

SELECT order_id, 
FROM payments
WHERE method <> 'refund'

