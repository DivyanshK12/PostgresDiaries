-- Much faster than delete, deletes all rows, reclaims used space immediately, NOT MVCC safe
-- Allows us to handle foreign keys using CASCADE keyowrd (default is RESTRICT)
-- Be carefull as entire table could get deleted , hence RESTRICT was default
-- Once deleted, all concurrent queries see it as empty
TRUNCATE TABLE tablename -- ONLY or * options exist as well
RESTART IDENTITY -- CONTINUE IDENTITY option also exists
RESTRICT;

-- DELETE Row by Row (Cascades automatically, no side effects)
-- TRUNCATE (Explicit Cascade, Explicit Identity control)
-- DROP TABLE (No Cascade, be careful)