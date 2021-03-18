DROP TABLE IF EXISTS Large_Delete_Temporary;

CREATE TABLE Large_Delete_Temporary
AS
SELECT *
FROM Large_Delete
WHERE Key_Column BETWEEN 9000000 AND 10000000;

TRUNCATE TABLE Large_Delete;

INSERT INTO Large_Delete (Key_Column, Filler)
OVERRIDING SYSTEM VALUE
SELECT Key_Column, Filler
FROM Large_Delete_Temporary;
