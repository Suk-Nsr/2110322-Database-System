SELECT
    ddate,
    pname
FROM
(    
    SELECT
        ddate,
        pname,
        SUM(amt) AS total_amt
    FROM
        expense
    GROUP BY
        ddate, pname
) S1
WHERE
    S1.total_amt = 
    (
        SELECT
            MAX(daily_sum)
        FROM
        (
            SELECT
                ddate,
                pname,
                SUM(amt) AS daily_sum
            FROM
                expense
            GROUP BY
                ddate, pname
        ) S2
        WHERE
            S1.ddate = S2.ddate
    )
ORDER BY
    S1.ddate ASC, S1.pname ASC