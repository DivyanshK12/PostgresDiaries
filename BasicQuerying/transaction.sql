SELECT * FROM "Accounts";

BEGIN;
    UPDATE "Accounts"
    SET "Amount" = "Amount" - 100
    WHERE "Name" = 'Beth';
SAVEPOINT FirstUpdate;
    SELECT * FROM "Accounts";
    -- Incorrect Update

    UPDATE "Accounts"
    SET "Amount" = "Amount" + 100
    WHERE "Name" = 'DK';

    SELECT * FROM "Accounts";
-- Rollback
ROLLBACK TO FirstUpdate;
    SELECT * FROM "Accounts";

    UPDATE "Accounts"
    SET "Amount" = "Amount" + 100
    WHERE "Name" = 'Troy';

    SELECT * FROM "Accounts";
COMMIT ;