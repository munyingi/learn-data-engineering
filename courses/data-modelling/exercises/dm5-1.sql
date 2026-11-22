-- Exercise dm5-1 · Lesson 5: Keeping history: slowly changing dimensions
-- Dataset: feeds
--
-- Build the SCD2 table for every customer in customer_history: customer_id, city, segment,
-- valid_from and valid_to (the day before the next version starts; NULL for the current
-- version).
--
-- Hint: LEAD(valid_from) OVER (PARTITION BY customer_id ORDER BY valid_from) - 1 AS valid_to

SELECT customer_id, city, segment, valid_from,
  
FROM customer_history;
