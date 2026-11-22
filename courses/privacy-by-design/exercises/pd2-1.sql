-- Exercise pd2-1 · Lesson 2: Pseudonymisation and masking
-- Dataset: feeds
--
-- Build the analyst view: customer_id, email_token (sha256 of the text learn-salt followed
-- by the email) and birth_decade (the birth year rounded down to its decade, so 1987
-- becomes 1980).
--
-- Hint: sha256('learn-salt' || email) and birth_year // 10 * 10

SELECT
  customer_id,
  
FROM customer_contacts;
