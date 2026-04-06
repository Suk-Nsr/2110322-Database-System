SELECT
    ddate,
    pname
FROM
(
    SELECT 
        D.ddate, 
        N.pname,
        SUM(COALESCE(E.amt, 0)) as total_spent,
        RANK() OVER (PARTITION BY D.ddate ORDER BY SUM(COALESCE(E.amt, 0)) ASC) as rnk
    FROM 
        (
            SELECT DISTINCT
                ddate
            FROM
                expense
        ) D
    CROSS JOIN 
        (
            SELECT DISTINCT
                pname
            FROM
                expense
        ) N
    LEFT JOIN 
        expense E ON E.ddate = D.ddate AND E.pname = N.pname
    GROUP BY 
        D.ddate, N.pname
) Result
WHERE rnk = 1
ORDER BY ddate ASC, pname ASC;