UPDATE Orders AS O1
SET OrderDate = OrderDate + 1
WHERE EXISTS(
                SELECT NULL
                FROM Employees AS E
                WHERE E.Employee = O1.Employee
                AND
                E.Salary >= 50000
            );

SELECT *
FROM Orders
ORDER BY OrderID ASC;