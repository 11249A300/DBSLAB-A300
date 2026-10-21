-- 1. INNER JOIN (only matching rows from both tables)
SELECT e.emp_name, e.salary, d.dept_name, d.hod
FROM emp e
INNER JOIN dept d ON e.dept_id = d.dept_id;
-- 2. LEFT OUTER JOIN (all rows from left + matching from right)
SELECT e.emp_name, d.dept_name
FROM emp e
LEFT JOIN dept d ON e.dept_id = d.dept_id;
-- 3. RIGHT OUTER JOIN (all rows from right + matching from left)
SELECT e.emp_name, d.dept_name
FROM emp e
RIGHT JOIN dept d ON e.dept_id = d.dept_id;
-- 4. CROSS JOIN (all combinations)
SELECT e.emp_name, d.dept_name
FROM emp e CROSS JOIN dept d;
-- 5. SELF JOIN (compare rows within same table)
SELECT a.emp_name AS emp, b.emp_name AS colleague
FROM emp a JOIN emp b
ON a.dept_id = b.dept_id AND a.emp_id <> b.emp_id;
-- 6. JOIN with aggregate
SELECT d.dept_name, COUNT(e.emp_id) AS headcount,
ROUND(AVG(e.salary),2) AS avg_sal
FROM dept d
LEFT JOIN emp e ON d.dept_id = e.dept_id
GROUP BY d.dept_name
ORDER BY avg_sal DESC;
