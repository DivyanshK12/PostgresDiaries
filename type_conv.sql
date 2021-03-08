SELECT CAST(30 AS BIGINT) ! AS my_answer;
-- Increased readibillity, performance and portability

SELECT ROUND(CAST(4 AS NUMERIC), 5) AS second_answer;
SELECT ROUND(4.0, 5) AS second_answer;

SELECT SUBSTR(CAST('4321' AS TEXT), 2 ) AS FinalAnswer;
-- In each of these, it automatcially casted by itself