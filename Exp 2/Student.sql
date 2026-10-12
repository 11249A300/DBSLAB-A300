CREATE TABLE Student (
student_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
dob DATE,
phone VARCHAR(15),
dept_id INT,
cgpa DECIMAL(4,2),
FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);
