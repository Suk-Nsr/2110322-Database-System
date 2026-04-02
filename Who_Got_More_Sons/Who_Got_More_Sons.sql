SELECT D.DName AS Department
FROM Departments D
JOIN Employees E ON E.DID = D.DID
WHERE E.EName ILIKE '%son%'
GROUP BY D.DName
ORDER BY COUNT(*) DESC, D.DName ASC
LIMIT 1