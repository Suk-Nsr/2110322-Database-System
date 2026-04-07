SELECT
    C.postal_code,
    SUM(P.standard_price * OL.o_quantity) AS total_payment
FROM
    customer C
JOIN
    ordert O ON C.c_id = O.c_id
JOIN
    order_line OL ON O.o_id = OL.o_id
JOIN
    product P ON OL.p_id = P.p_id
GROUP BY
    C.postal_code
HAVING
    SUM(P.standard_price * OL.o_quantity) > 0
ORDER BY
    C.postal_code ASC