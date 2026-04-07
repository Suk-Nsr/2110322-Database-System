WITH AuthorSolves AS
(
    SELECT
        a.aid,
        a.aname,
        COUNT(*) AS solve_count
    FROM
        author a
    JOIN
        task t ON a.aid = t.aid
    JOIN
        submit s ON t.tid = s.tid
    WHERE
        s.score = 100
    GROUP BY
        a.aid, a.aname
)

SELECT
    ans.aname,
    t.tname
FROM
    AuthorSolves AS ans
JOIN
    task t ON ans.aid = t.aid
WHERE
    ans.solve_count = (SELECT MAX(solve_count) FROM AuthorSolves)
ORDER BY
    ans.aid ASC