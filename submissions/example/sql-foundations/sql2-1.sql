-- Exercise sql2-1 · Lesson 3: Filtering and sorting
-- Dataset: shop
--
-- Show the product_name and price of products in the Books category that cost less than
-- 35, sorted from cheapest to most expensive.
--
-- Hint: Two conditions joined with AND, then ORDER BY price.

SELECT product_name, price
FROM products
WHERE category = 'Books' AND price < 35
ORDER BY price;
