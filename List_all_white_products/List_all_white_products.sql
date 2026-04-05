SELECT
    p_id,
    p_desc,
    p_finish,
    p_price
FROM
    Product
WHERE
    p_finish ILIKE '%white%'