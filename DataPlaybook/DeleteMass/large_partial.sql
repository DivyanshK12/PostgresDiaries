-- To delete rows 1 to 9,000,000

-- Batching 
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

DELETE FROM Large_Delete
WHERE Key_Column IN (
                        SELECT Key_Column
                        FROM Large_Delete
                        WHERE Key_Column BETWEEN 1 AND 9000000 -- 9,000,000
                        LIMIT 100000 -- 100,000
                    );

-- COMMIT TRANSACTION
-- WAIT
-- REPEAT

ROLLBACK TRANSACTION;
