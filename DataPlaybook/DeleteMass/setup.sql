DROP TABLE IF EXISTS Large_Delete;

CREATE TABLE Large_Delete (
                                Key_Column  INT
                                            PRIMARY KEY
                                            GENERATED ALWAYS AS IDENTITY,
                                Filler      CHAR(500) NOT NULL
                            );

INSERT INTO Large_Delete(Filler)
SELECT REPEAT('x', 500)
FROM GENERATE_SERIES(1, 10000000);-- 10,000,000