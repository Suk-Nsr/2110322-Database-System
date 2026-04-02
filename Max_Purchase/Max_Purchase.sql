SELECT C.first_name
FROM customer C
JOIN invoice I ON C.cus_id = I.cus_id
GROUP BY C.cus_id
ORDER BY SUM(I.total_spent) DESC, COUNT(C.first_name) ASC, C.cus_id ASC
LIMIT 1