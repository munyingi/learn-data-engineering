-- Exercise sc4-1 · Lesson 4: Windows and live metrics
-- Dataset: feeds
--
-- Daily tumbling window: return day and new_orders (create events) for every day in
-- October 2026, using changed_at.
--
-- Hint: WHERE op = 'c' and changed_at in October, GROUP BY day.

SELECT changed_at::DATE AS day, 
FROM order_events
WHERE 
