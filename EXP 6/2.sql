-- COUNT, SUM, AVG, MIN, MAX
SELECT COUNT(*) AS total_employees FROM emp;
SELECT SUM(salary) AS total_payroll FROM emp;
SELECT AVG(salary) AS avg_salary FROM emp;
SELECT MAX(salary) AS highest_salary FROM emp;
SELECT MIN(salary) AS lowest_salary FROM emp;
-- Combined
SELECT COUNT(*) AS count, ROUND(AVG(salary),2) AS avg,
MAX(salary) AS max_sal, MIN(salary) AS min_sal FROM emp;
