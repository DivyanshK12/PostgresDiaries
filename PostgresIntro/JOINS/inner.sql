-- Fields must match in both tables
SELECT table_a.*, table_b.*
    FROM table_a
    INNER JOIN table_b 
    ON table_a.primary_key = table_b.foreign_key
    WHERE table_a.criteria = 'value';
-- JOIN defaults to inner join