USE CollegeDB;
CREATE TABLE dept (dept_id INT PRIMARY KEY, dept_name VARCHAR(30), hod VARCHAR(30));
INSERT INTO dept VALUES (1,'CSE','Dr. Sharma'),(2,'ECE','Dr. Patel'),(3,'MECH','Dr.
Kumar');
CREATE TABLE emp (
emp_id INT PRIMARY KEY, emp_name VARCHAR(40), dept_id INT,
salary DECIMAL(10,2), join_date DATE, city VARCHAR(20));
INSERT INTO emp VALUES
(1,'Priya',1,55000,'2020-06-15','Chennai'),
(2,'Arjun',1,62000,'2019-03-10','Bangalore'),
(3,'Kavya',2,48000,'2021-08-22','Chennai'),
(4,'Ravi',2,71000,'2018-11-05','Delhi'),
(5,'Deepika',3,43000,'2022-01-30','Chennai'),
(6,'Siva',3,38000,'2020-09-18','Mumbai');
