-- Exercise sql3-2 · Lesson 3: Counting and summarising
-- Dataset: shop
--
-- For each category, show the number of products as products and the average price rounded
-- to 2 decimals as avg_price.
--
-- Hint: COUNT(*) and ROUND(AVG(price), 2).

SELECT category, 
FROM products
GROUP BY category;
