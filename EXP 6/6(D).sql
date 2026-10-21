-- Current date and time
SELECT NOW(), CURDATE(), CURTIME();
-- Date parts
SELECT emp_name, join_date,
YEAR(join_date) AS join_year,
MONTH(join_date) AS join_month,
DAY(join_date) AS join_day,
DAYNAME(join_date) AS day_name
FROM emp;
-- Years of experience
SELECT emp_name, join_date,
TIMESTAMPDIFF(YEAR, join_date, CURDATE()) AS years_exp,
DATEDIFF(CURDATE(), join_date) AS days_served
FROM emp;
-- Date arithmetic
SELECT emp_name, DATE_ADD(join_date, INTERVAL 1 YEAR) AS anniversary FROM emp;
SELECT emp_name, DATE_FORMAT(join_date, '%d-%b-%Y') AS formatted_date FROM emp;
