SELECT * FROM Orders;

DROP TABLE IF EXISTS Log_Table;

WITH Orders_Update 
AS
(
UPDATE Orders AS O1
SET OrderDate = CASE 
                    WHEN E.Salary > 50000 THEN OrderDate + 1
                    WHEN E.Salary < 49000 THEN OrderDate - 1
                END
FROM Employees as E
WHERE E.Employee = O1.Employee
        AND
        (E.Salary  > 50000 OR E.Salary < 49000)
RETURNING O1.*
)
SELECT *,
        NOW() AS TS,
        CURRENT_USER AS Usr
INTO  Log_Table
FROM Orders_Update;

SELECT * FROM Log_Table;