SELECT U.name, SUM(O.quantity * P.price) AS "total_price"
FROM users U
JOIN orders O ON U.id = O.user_id
JOIN products P ON O.product_id = P.id
GROUP BY U.name, U.id
ORDER BY "total_price" DESC, U.id ASC
LIMIT 1;