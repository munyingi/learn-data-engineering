-- Exercise pd2-2 · Lesson 2: Pseudonymisation and masking
-- Dataset: feeds
--
-- Build the support view: customer_id, email_masked (first letter, then ***@, then the
-- domain) and phone_last4 (the last 4 characters of the phone number).
--
-- Hint: left(email, 1) || '***@' || split_part(email, '@', 2), and right(phone, 4)

SELECT
  customer_id,
  
FROM customer_contacts;
