SELECT * FROM Employees;
-- Using default isolation
BEGIN TRANSACTION;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

SHOW transaction_isolation;

COMMIT TRANSACTION;

SHOW transaction_isolation;
-------------
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
SHOW transaction_isolation;

COMMIT TRANSACTION;