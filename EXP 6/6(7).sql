SELECT
ROUND(3.14159, 2) AS rounded, -- 3.14
CEIL(4.1) AS ceiling, -- 5

FLOOR(4.9) AS floor_val, -- 4
ABS(-250) AS absolute, -- 250
MOD(10, 3) AS modulo, -- 1
POWER(2, 8) AS power_of, -- 256
SQRT(144) AS square_rt, -- 12
TRUNCATE(3.99999, 2) AS truncated, -- 3.99
RAND() AS random_num; -- 0.xxxxxxx
-- Salary with 10% hike rounded to 2 decimals
SELECT emp_name, salary, ROUND(salary * 1.10, 2) AS new_salary FROM emp;
