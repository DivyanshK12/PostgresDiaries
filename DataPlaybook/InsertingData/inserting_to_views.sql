-- Views are schema object that consist of an aliased SELECT query
-- Common Table expressions are a query scoped view (more powerful)
-- Postgres does not allow CTE's to be a target of an insert statement

CREATE VIEW TView
AS 
SELECT Unique_Column, 
        Constraint_Column
FROM T;

INSERT INTO TView (Unique_Column, Constraint_Column)
VALUES (200, 250);

SELECT * FROM T;