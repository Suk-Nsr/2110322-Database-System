SELECT
    sname,
    major
FROM
    Student
WHERE
    sid NOT IN
    (
        SELECT
            sid
        FROM
            Registration
        WHERE
            semester LIKE '%2024%'
    )