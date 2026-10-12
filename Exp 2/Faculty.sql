CREATE TABLE Faculty (
faculty_id INT PRIMARY KEY,
name VARCHAR(50),
designation VARCHAR(30),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);
