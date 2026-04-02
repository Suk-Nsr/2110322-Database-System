SELECT EXTRACT(YEAR FROM O.order_date) AS order_year, ROUND(SUM(OD.quantity * P.unit_price * OD.discount)::numeric, 2) AS discount_amount
FROM order_details OD
JOIN products P ON OD.pid = P.pid
JOIN orders O ON OD.oid = O.oid
GROUP BY EXTRACT(YEAR FROM O.order_date)
ORDER BY order_year DESC