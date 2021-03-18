BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

DELETE FROM Orders
WHERE OrderID = 2;
-- Primary key assures that only one row will be deleted
-- SELECT *
-- FROM Orders
-- ORDER BY OrderID ASC;

ROLLBACK TRANSACTION;

BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

DELETE FROM Orders
WHERE Employee = 'Sally';

-- SELECT *
-- FROM Orders
-- ORDER BY OrderID ASC;

ROLLBACK TRANSACTION;

SELECT *
FROM Orders
ORDER BY OrderID ASC;

BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

DELETE FROM Orders

WHERE Employee IN (
                    SELECT Employee
                    FROM Employees
                    WHERE Salary < 50000
                );

-- SELECT *
-- FROM Orders
-- ORDER BY OrderID ASC;

-- Alternate way using logical join using 'USING'
DELETE FROM Orders AS O
USING Employees AS E
WHERE E.Employee = O.Employee
        AND
        E.Salary < 50000; 

SELECT *
FROM Orders
ORDER BY OrderID ASC;
ROLLBACK TRANSACTION;