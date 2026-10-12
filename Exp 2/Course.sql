CREATE TABLE Course (
course_id VARCHAR(10) PRIMARY KEY,
title VARCHAR(80) NOT NULL,
credits INT,
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);
