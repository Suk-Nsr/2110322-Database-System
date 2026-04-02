SELECT C.name, SUM(O.amount * D.price) AS total
FROM customers C
JOIN orders O ON C.id = O.c_id
JOIN desserts D ON D.id = O.d_id
GROUP BY C.name, C.id
ORDER BY total DESC, C.id ASC
LIMIT 1