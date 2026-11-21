-- Exercise sql5-1 · Lesson 5: Subqueries and CTEs
-- Dataset: shop
--
-- Show the product_name and price of products that cost more than the average product
-- price.
--
-- Hint: Compare with (SELECT AVG(price) FROM products).

SELECT product_name, price
FROM products
WHERE price > 
