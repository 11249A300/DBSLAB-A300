-- Salary statistics per department

SELECT dept_id,
COUNT(*) AS headcount,
ROUND(AVG(salary),2) AS avg_salary,
SUM(salary) AS total_salary,
MAX(salary) AS max_salary
FROM emp
GROUP BY dept_id;
-- Departments with average salary > 50000 (HAVING filters groups)
SELECT dept_id, ROUND(AVG(salary),2) AS avg_sal
FROM emp
GROUP BY dept_id
HAVING AVG(salary) > 50000;
-- Employees count per city where count >= 2
SELECT city, COUNT(*) AS cnt
FROM emp
GROUP BY city
HAVING cnt >= 2
ORDER BY cnt DESC;
