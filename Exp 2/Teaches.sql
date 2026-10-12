CREATE TABLE Teaches (
faculty_id INT,
course_id VARCHAR(10),
semester VARCHAR(10),
PRIMARY KEY (faculty_id, course_id, semester),
FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id),
FOREIGN KEY (course_id) REFERENCES Course(course_id)
);
