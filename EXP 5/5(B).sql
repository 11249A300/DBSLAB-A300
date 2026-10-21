-- TRUNCATE: Remove all rows, keep table structure (faster than DELETE)
-- Cannot rollback in MySQL (auto commits)
TRUNCATE TABLE Student_Basic;
-- DROP TABLE: Remove table and all its data permanently
DROP TABLE IF EXISTS Student_Basic;
-- DROP DATABASE (permanent — use with caution!)
-- DROP DATABASE IF EXISTS TestDB;
-- RENAME TABLE
RENAME TABLE Student TO BEStudents;
-- OR:
ALTER TABLE BEStudents RENAME TO Student;
-- Comparison: DELETE vs TRUNCATE vs DROP
-- DELETE : Removes specific rows, can WHERE, can ROLLBACK, triggers fire
-- TRUNCATE : Removes all rows, no WHERE, no ROLLBACK, faster, resets AUTO_INCREMENT

-- DROP : Removes entire table structure + data
