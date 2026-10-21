-- ADD a new column
ALTER TABLE Student ADD COLUMN phone VARCHAR(15);
-- ADD column at specific position
ALTER TABLE Student ADD COLUMN gender CHAR(1) AFTER name;
-- MODIFY column data type or size
ALTER TABLE Student MODIFY COLUMN name VARCHAR(100) NOT NULL;
-- CHANGE column name AND type
ALTER TABLE Student CHANGE COLUMN phone mobile VARCHAR(12);
-- DROP a column
ALTER TABLE Student DROP COLUMN gender;
-- ADD a constraint
ALTER TABLE Student ADD CONSTRAINT chk_cgpa CHECK (cgpa BETWEEN 0 AND 10);
-- DROP a constraint (by name)
ALTER TABLE Student DROP CONSTRAINT chk_cgpa;
-- ADD PRIMARY KEY
ALTER TABLE Student_Basic ADD PRIMARY KEY (student_id);
-- ADD FOREIGN KEY
ALTER TABLE Student ADD CONSTRAINT fk_dept
FOREIGN KEY (dept_id) REFERENCES Department(dept_id);
-- Verify changes
DESC Student;
SHOW CREATE TABLE Student;
