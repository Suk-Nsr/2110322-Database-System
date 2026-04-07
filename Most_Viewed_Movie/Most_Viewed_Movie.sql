SELECT
    M.mid,
    M.title,
    COUNT(C.cid) AS total_views
FROM
    movie M
JOIN
    customer C ON M.mid = C.mid
GROUP BY
    M.mid, M.title
HAVING
    COUNT(C.cid) >= ALL (SELECT COUNT(cid) FROM customer GROUP BY mid)
ORDER BY
    M.title ASC