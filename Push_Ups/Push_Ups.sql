SELECT
    U.name
FROM
    users U
JOIN
    workout W ON U.ssn = W.ssn
WHERE
    (U.age BETWEEN 22 AND 60)
    AND
    (W.push_count >= 40)
    AND
    (U.sex = 'F')
ORDER BY
    W.push_count DESC, U.ssn ASC
LIMIT 5