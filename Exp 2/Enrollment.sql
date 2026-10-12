CREATE TABLE Enrollment (
student_id INT,
course_id VARCHAR(10),
semester VARCHAR(10),
grade CHAR(2),
PRIMARY KEY (student_id, course_id, semester),
FOREIGN KEY (student_id) REFERENCES Student(student_id),
FOREIGN KEY (course_id) REFERENCES Course(course_id)
);
