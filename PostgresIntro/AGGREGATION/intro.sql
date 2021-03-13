SELECT grade_lvl,
        AVG(age) AS avg_age 
    FROM person
    GROUP BY grade_lvl;

-- All nin aggregate fields must be included in the GROUP BY clause otherwise this will lead to errors