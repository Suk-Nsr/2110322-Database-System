SELECT DISTINCT
    PT.name,
    PT.era,
    PT.birth_year
FROM
    poets PT
JOIN
    poems PM ON PT.poet_id = PM.poet_id
WHERE
    (PM.written_year BETWEEN 1800 AND 1900)
    AND
    (PM.lines >= 4)
    AND
    (PM.mood ILIKE 'sad%' OR PM.mood ILIKE 'love%')
    AND
    (PM.title ILIKE '%lonely%')
ORDER BY
    PT.name ASC, PT.era ASC, PT.birth_year ASC