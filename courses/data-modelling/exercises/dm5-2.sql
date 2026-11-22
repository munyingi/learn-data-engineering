-- Exercise dm5-2 · Lesson 5: Keeping history: slowly changing dimensions
-- Dataset: feeds
--
-- Where did customer 15 live on 1 June 2026? Return one column, city.
--
-- Hint: customer_id = 15 AND the date is on or after valid_from AND (valid_to IS NULL OR the date is on or before valid_to).

WITH scd AS (
  SELECT customer_id, city, valid_from,
    LEAD(valid_from) OVER (PARTITION BY customer_id ORDER BY valid_from) - 1 AS valid_to
  FROM customer_history
)
SELECT city
FROM scd
WHERE 
