SELECT name, unit_price
FROM product
WHERE unit_price > 2000 AND (category_name = 'food' OR category_name = 'drink')
ORDER BY unit_price DESC