SELECT
    P.pname,
    P.pprice,
    SUM(PS.quantity_sold) AS total_sales
FROM
    PRODUCT P
JOIN
    PRODUCT_SALES PS ON P.pid = PS.pid
WHERE
    PS.sale_date BETWEEN '2022-01-01 00:00:00' AND '2025-01-01 00:00:00'
GROUP BY
    P.pname, P.pprice
HAVING
    SUM(PS.quantity_sold) <= 100
ORDER BY
    SUM(PS.quantity_sold) DESC, P.pprice ASC, P.pname ASC
LIMIT 3