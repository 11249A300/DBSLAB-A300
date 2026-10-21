SELECT emp_name,
UPPER(emp_name) AS upper_name,
LOWER(emp_name) AS lower_name,
LENGTH(emp_name) AS name_length,
SUBSTR(emp_name, 1, 3) AS first3,
CONCAT(emp_name, " - ", city) AS full_info,
REPLACE(city, "Chennai", "Madras") AS city_new,
TRIM(" Priya ") AS trimmed,
REVERSE(emp_name) AS reversed,
LPAD(emp_id, 5, "0") AS padded_id
FROM emp;
