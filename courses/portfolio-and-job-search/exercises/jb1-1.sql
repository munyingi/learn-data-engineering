-- Exercise jb1-1 · Lesson 1: What hiring managers look for
-- Dataset: shop
--
-- A classic first interview question: return the product_name and price of the product
-- with the second highest price. (If two products share a price, count that price once.)
--
-- Hint: SELECT DISTINCT price FROM products ORDER BY price DESC LIMIT 1 OFFSET 1

SELECT product_name, price
FROM products
WHERE price = (
  
);
