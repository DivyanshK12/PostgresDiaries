-- while combiing first_name and last_name into a single column
SELECT first_name, last_name,
    first_name || ' ' || last_name full_name
FROM Actor;
-- Alternative
SELECT first_name, last_name, 
    CONCAT(first_name, ' ', last_name) as full_name
FROM Actor;

-- with extra column that will list the initials of the actor
SELECT first_name, last_name,
    LEFT(first_name, 1) || LEFT(last_name, 1) AS Initials
FROM Actor;

--where the length of the name is 4 characters
SELECT first_name, last_name
FROM Actor
WHERE LENGTH(first_name) = 4 OR LENGTH(last_name) = 4;

-- while converting all last_name into uppercase
SELECT first_name, last_name,
    UPPER(last_name) AS upper_last
FROM Actor;

-- replacing character a with @ in column first_name
SELECT first_name,
    REPLACE(first_name, 'a', '@') AS replaced
FROM Actor;