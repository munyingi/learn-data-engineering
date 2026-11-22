-- Exercise pd4-1 · Lesson 4: Deletion requests
-- Dataset: feeds
--
-- Which requests broke the 30-day deadline, either finished late or still open after 30
-- days? Return request_id, customer_id and days_taken (completed date, or 20 November 2026
-- if still open, minus the received date).
--
-- Hint: Use the same expression in the WHERE: ... > 30

SELECT request_id, customer_id,
  coalesce(completed_at, DATE '2026-11-20') - received_at AS days_taken
FROM deletion_requests
WHERE 
