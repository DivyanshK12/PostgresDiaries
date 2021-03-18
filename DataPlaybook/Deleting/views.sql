DROP VIEW IF EXISTS VEmployees;

CREATE VIEW VEmployees
AS
SELECT * 
FROM Employees
WHERE Employee <> 'Sally';

SELECT *
FROM VEmployees;

DELETE FROM VEmployees
WHERE Employee = 'Sally';

SELECT * FROM Employees;
-- This prevented deleting Sally accidentely