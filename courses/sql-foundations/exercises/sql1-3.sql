-- Exercise sql1-3 · Lesson 2: Your first query
-- Dataset: shop
--
-- Finnish prices include 25.5% VAT. Show each product_name, its price, and the price
-- without VAT as price_ex_vat (price divided by 1.255).
--
-- Hint: Calculate price / 1.255 and name it with AS price_ex_vat.

SELECT product_name, price, 
FROM products;
