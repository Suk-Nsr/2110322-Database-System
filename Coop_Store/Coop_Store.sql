SELECT DISTINCT
    C.cname
FROM
    customer C
JOIN
    placement P ON C.cid = P.cid
JOIN
    product PD ON P.pid = PD.pid
WHERE
    PD.pprice >
    (
        SELECT
            AVG(pprice)
        FROM
            product
        WHERE
            pcategory =
            (
                SELECT
                    pcategory
                FROM
                    product
                GROUP BY
                    pcategory
                ORDER BY
                    COUNT(pid) DESC, pcategory ASC
                LIMIT 1
            )
    )
ORDER BY
    C.cname ASC