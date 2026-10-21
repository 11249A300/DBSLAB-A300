-- All employees
SELECT * FROM emp;
-- Employees from Chennai
SELECT emp_name, salary FROM emp WHERE city = 'Chennai';
-- Employees with salary between 40000 and 60000
SELECT emp_name, salary FROM emp WHERE salary BETWEEN 40000 AND 60000;
-- Employees sorted by salary descending
SELECT emp_name, salary FROM emp ORDER BY salary DESC;
-- Distinct cities
SELECT DISTINCT city FROM emp;
-- Employees whose name starts with A
SELECT emp_name FROM emp WHERE emp_name LIKE 'A%';
-- Limit results
SELECT * FROM emp LIMIT 3;
