SELECT
    D.dname AS Mor_name
FROM
    doctor D
WHERE
    D.d_id NOT IN
    (
        SELECT
            WF.d_id
        FROM
            work_for WF
    )
    AND
    D.dname LIKE 'C%'
ORDER BY
    D.dage DESC, D.d_id ASC