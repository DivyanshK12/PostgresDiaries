UPDATE Orders AS O1
SET OrderDate = CASE 
                    WHEN E.Salary > 50000 THEN OrderDate + 1
                    WHEN E.Salary < 49000 THEN OrderDate - 1
                END
FROM Employees as E
WHERE E.Employee = O1.Employee
        AND
        (E.Salary  > 50000 OR E.Salary < 49000);

SELECT *
FROM Orders 
ORDER BY OrderID ASC;
-- When done using the Exists block in scope.sql, there is a lot of copy paste required if many cases exist
-- Upadting through views is similar to insert to views, DML Syntax remains the same