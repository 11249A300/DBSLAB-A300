Select all students from dept CSE
σ dept_id = "CSE" (STUDENT)
Project only student name and cgpa
π name, cgpa (STUDENT)
Students with CGPA > 8.0 in CSE
σ (dept_id="CSE" cgpa>8.0) (STUDENT) ∧
Names of students enrolled in CS301
π name (σ course_id="CS301" (STUDENT ⋈ ENROLLMENT))
Natural Join of STUDENT and ENROLLMENT
STUDENT ⋈ ENROLLMENT
All courses with 3 credits
σ credits=3 (COURSE)
Students NOT enrolled in any course
π student_id (STUDENT) − π student_id (ENROLLMENT)
Rename STUDENT to S
ρ S (STUDENT)
Courses offered by CSE OR ECE departments
σ dept_id="CSE" (COURSE) σ dept_id="ECE" (COURSE) ∪
Students enrolled in courses with > 3 credits
π name (σ credits>3 (STUDENT ⋈ ENROLLMENT ⋈ COURSE))
