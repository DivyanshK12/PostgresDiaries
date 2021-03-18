DROP TABLE IF EXISTS Large_Delete_Partition1,
                     Large_Delete_Partition2,
                     Large_Delete_Partition3,
                     Large_Delete_Partition4,
                     Large_Delete_Partition5,
                     Large_Delete_Partition6,
                     Large_Delete_Partition7,
                     Large_Delete_Partition8,
                     Large_Delete_Partition9,
                     Large_Delete_Partition10,
                     Large_Delete_Partitioned

CREATE TABLE Large_Delete_Partitioned (
                                        Key_Column  INT
                                                    PRIMARY KEY
                                                    GENERATED ALWAYS AS IDENTITY,
                                        Filler      CHAR(500) NOT NULL
                                      )
PARTITION BY RANGE (Key_Column);
-- LIST and HASH exist to use in place of range
-- Lower bound is inclusive, upper is exclusive

CREATE TABLE Large_Delete_Partition1
PARTITION OF Large_Delete_Partitioned
FOR VALUES FROM (MINVALUE) TO (1000000);

CREATE TABLE Large_Delete_Partition2
PARTITION OF Large_Delete_Partitioned
FOR VALUES FROM (1000000) TO (2000000);

CREATE TABLE Large_Delete_Partition3
PARTITION OF Large_Delete_Partitioned
FOR VALUES FROM (2000000) TO (3000000);

CREATE TABLE Large_Delete_Partition4
PARTITION OF Large_Delete_Partitioned
FOR VALUES FROM (3000000) TO (4000000);

CREATE TABLE Large_Delete_Partition5
PARTITION OF Large_Delete_Partitioned
FOR VALUES FROM (4000000) TO (5000000);

CREATE TABLE Large_Delete_Partition6
PARTITION OF Large_Delete_Partitioned
FOR VALUES FROM (5000000) TO (6000000);

CREATE TABLE Large_Delete_Partition7
PARTITION OF Large_Delete_Partitioned
FOR VALUES FROM (6000000) TO (7000000);

CREATE TABLE Large_Delete_Partition8
PARTITION OF Large_Delete_Partitioned
FOR VALUES FROM (7000000) TO (8000000);

CREATE TABLE Large_Delete_Partition9
PARTITION OF Large_Delete_Partitioned
FOR VALUES FROM (8000000) TO (9000000);

CREATE TABLE Large_Delete_Partition10
PARTITION OF Large_Delete_Partitioned
FOR VALUES FROM (9000000) TO (MAXVALUE);


INSERT INTO Large_Delete_Partitioned(Filler)
SELECT REPEAT('x', 500)
FROM GENERATE_SERIES(1, 10000000);
-- Can be optimized with parallel insert into individual partitions

SELECT * FROM Large_Delete_Partition1 LIMIT 10;
SELECT * FROM Large_Delete_Partitioned LIMIT 10;

ALTER TABLE Large_Delete_Partitioned
DETACH PARTITION Large_Delete_Partition1;

SELECT * 
FROM Large_Delete_Partitioned 
ORDER BY Key_Column
LIMIT 10;
-- Rows 1 to 1000000 No longer present

TRUNCATE TABLE Large_Delete_Partition2;

SELECT * 
FROM Large_Delete_Partitioned 
ORDER BY Key_Column
LIMIT 10;

-- If we drop or detach a partition, rows attached would become 'homeless', trying to iunsert yields an error
INSERT INTO Large_Delete_Partitioned (Key_Column, Filler)
OVERRIDING SYSTEM VALUE
VALUES(1, 'x');

