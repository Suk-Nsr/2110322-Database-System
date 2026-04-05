SELECT
    COALESCE(U.studentid, C.studentid) AS studentid,
    COALESCE(U.pname, C.pname) AS pname,
    C.cname
FROM
    clubreg C
LEFT JOIN
    userinfo U ON U.studentid = C.studentid OR U.pname = C.pname
ORDER BY
    studentid DESC