-- Doubles the size of the table effectively
INSERT INTO T (Default_Column, Unique_column, Constraint_Column)
SELECT Default_Column * 5, Unique_Column *10, Constraint_Column + 10
-- SELECT DEFAULT, Unique_Column *10, Constraint_Column + 10, -- Is erroronus as cannot use DEFAULT here
-- Can omit Dfault from INSERT INTO and SELECT statement and it will be filled correctly
FROM T;

SELECT * FROM T;
