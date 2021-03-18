SELECT *
FROM Employees;

SELECT *
FROM Orders;

UPDATE Orders
SET OrderDate = '2018-01-04'
-- Need the where clause otherwise all rows will be updated
WHERE OrderID = 4;

SELECT *
FROM Orders;

-- Update order date to match latest one
UPDATE Orders
SET OrderDate = (
                    SELECT MAX(OrderDate)
                    FROM Orders
                    WHERE Employee = 'Sally'
                )
WHERE OrderID = 1;

SELECT *
FROM Orders
ORDER BY OredrID ASC;