SELECT
    dino_name,
    dino_type,
    SUM(amount) AS total_amount
FROM
    dinosaurs
GROUP BY
    dino_name, dino_type
ORDER BY
    total_amount DESC, dino_type ASC, dino_name ASC
LIMIT 1