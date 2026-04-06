SELECT
    bid,
    title,
    body
FROM
    blog
WHERE
    body ILIKE '%flag{________________________________}%'
ORDER BY
    bid ASC