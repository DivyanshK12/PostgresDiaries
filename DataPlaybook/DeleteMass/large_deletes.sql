-- Optimizing DELETE Operations
-- Batching, Partitioning , Moving data out are the strategies

-- TRUNCATE statement
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

TRUNCATE TABLE Orders; -- Select * to view

ROLLBACK TRANSACTION;

-- TRUNCATE with CASCADE
--TRUNCATE TABLE Employees; -- fails due to presence of foreign keys
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

TRUNCATE TABLE Employees
CASCADE;

SELECT *
FROM Orders;

ROLLBACK TRANSACTION;

SELECT CAST(pg_table_size('Large_Delete')/ POWER(1024, 3) AS INT) AS Size_in_GB;

DELETE FROM Large_Delete;

SELECT *
FROM Large_Delete;
-- Takes much time as still has to scan through massive table files 
SELECT CAST(pg_table_size('Large_Delete')/ POWER(1024, 3) AS INT) AS Size_in_GB;

VACUUM Large_Delete;

SELECT CAST(pg_table_size('Large_Delete')/ POWER(1024, 3) AS INT) AS Size_in_GB;

-- To reset the table
ALTER TABLE Large_Delete
ALTER COLUMN Key_Column
RESTART WITH 1;

INSERT INTO Large_Delete(Filler)
SELECT REPEAT('x', 500)
FROM GENERATE_SERIES(1, 10000000);-- 10,000,000

-- TRUNCATE 
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

TRUNCATE Large_Delete
RESTART IDENTITY;

SELECT * 
FROM Large_Delete 
LIMIT 10;

SELECT CAST(pg_table_size('Large_Delete')/ POWER(1024, 3) AS INT) AS Size_in_GB;

ROLLBACK TRANSACTION;