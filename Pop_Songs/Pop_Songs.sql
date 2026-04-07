SELECT
    S.ID,
    S.genre,
    S.name,
    S.duration,
    S.view_count,
    S.artist
FROM
    Song S
WHERE
    S.genre = 'Pop'