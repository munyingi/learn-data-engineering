-- Exercise dm3-1 · Lesson 3: Dimension tables
-- Dataset: shop
--
-- Build dim_product: product_id, product_name, category and price_band, where the band is
-- budget (under 30), mid (30 to 80) or premium (over 80).
--
-- Hint: WHEN price < 30 THEN 'budget' WHEN price <= 80 THEN 'mid' ELSE 'premium'

SELECT product_id, product_name, category,
  CASE
    
  END AS price_band
FROM products;
