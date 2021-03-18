
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

DECLARE MyCursor CURSOR
FOR 
SELECT *
FROM Orders 
WHERE Employee IN (
                    SELECT Employee
                    FROM Employees
                    WHERE Salary < 50000
                )
FOR UPDATE;
-- Makes the cursor updatable

FETCH FIRST FROM MyCursor;
-- Returns the result set like SELECT
-- Here order with orderID 2

DELETE FROM Orders
WHERE CURRENT OF MyCursor;

SELECT *
FROM Orders
ORDER BY OrderID ASC;

FETCH NEXT FROM MyCursor;

DELETE FROM Orders
WHERE CURRENT OF MyCursor;

SELECT *
FROM Orders
ORDER BY OrderID ASC;

ROLLBACK TRANSACTION;
-- Databases more efficient with SET statements and not Cursors