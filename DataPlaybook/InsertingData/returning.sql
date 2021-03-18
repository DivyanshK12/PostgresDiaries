-- INSERT INTO T (Unique_Column, Constraint_Column)
-- VALUES (300, 1000),
--         (500, 1000)
-- ON CONFLICT (Unique_Column)
-- DO UPDATE SET Constraint_Column = EXCLUDED.Constraint_Column
-- -- Updates the original conflicting column to the new conflicting column
-- RETURNING *;

-- SELECT * FROM T;
-- Allows to use CTE to acquire this output

DROP TABLE IF EXISTS New_Table;

WITH INSERT_CTE AS
(
INSERT INTO T (Unique_Column, Constraint_Column)
VALUES (500, 9999), (600, 9999)
ON CONFLICT (Unique_Column)
DO UPDATE SET Constraint_Column = EXCLUDED.Constraint_Column
RETURNING *
)
SELECT 	*, NOW() AS TS, current_user AS SysUser
INTO 	New_Table 
FROM 	INSERT_CTE;
-- Had error here 
SELECT * FROM New_Table;