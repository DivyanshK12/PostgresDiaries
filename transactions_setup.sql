CREATE TABLE "Accounts"
(
    "ID"  integer,
    "Name" character VARYING,
    "Amount" integer
)

INSERT INTO "Accounts" ("ID","Name","Amount")
VALUES(1, 'Beth', 100);
INSERT INTO "Accounts" ("ID","Name","Amount")
VALUES(2, 'Troy', 200);
INSERT INTO "Accounts" ("ID","Name","Amount")
VALUES(3, 'DK', 300);

SELECT * FROM "Accounts";