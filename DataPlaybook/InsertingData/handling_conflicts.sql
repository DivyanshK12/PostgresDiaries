-- INSERT INTO TView (Unique_Column)
-- VALUES (300)
-- ON CONFLICT DO NOTHING;
-- -- Works only once
-- SELECT * FROM T;

-- INSERT INTO TView (Unique_Column)
-- VALUES (300), (400)
-- ON CONFLICT DO NOTHING;
-- -- Works only for 400
-- SELECT * FROM T;

INSERT INTO T (Unique_Column, Constraint_Column)
VALUES (300, 999),
        (500, 999)
ON CONFLICT (Unique_Column)
DO UPDATE SET Constraint_Column = EXCLUDED.Constraint_Column;
-- Updates the original conflicting column to the new conflicting column
SELECT * FROM T;