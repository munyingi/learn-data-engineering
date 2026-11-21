-- Exercise sql6-1 · Lesson 6: Window functions
-- Dataset: shop
--
-- Number the products by price within each category, most expensive first, as price_rank
-- using RANK(). Show category, product_name, price and price_rank.
--
-- Hint: RANK() OVER (PARTITION BY category ORDER BY price DESC) AS price_rank

SELECT category, product_name, price,
  
FROM products;
