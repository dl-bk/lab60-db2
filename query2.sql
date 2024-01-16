--1
SELECT MIN(average_grade_per_year) AS Min_Average_Grade
FROM student_grades

--2

SELECT MAX(average_grade_per_year) AS Min_Average_Grade
FROM student_grades

--3 
SELECT city, COUNT (*) AS student_count
FROM student_grades
GROUP BY city
--4
SELECT country, COUNT (*) AS student_count
FROM student_grades
GROUP BY country


--5
SELECT COUNT (*) as count_min_math_avg
FROM student_grades
WHERE average_grade_per_year = (SELECT MIN(average_grade_per_year)
							   FROM student_grades
							   WHERE min_subject_name = 'Mathematics')
							   
--6
SELECT COUNT (*) as count_min_math_avg
FROM student_grades
WHERE average_grade_per_year = (SELECT MAX(average_grade_per_year)
							   FROM student_grades
							   WHERE min_subject_name = 'Mathematics')

--7

SELECT group_name, COUNT (*) as count_std
FROM student_grades
GROUP BY group_name

--8

SELECT group_name, CAST(AVG (average_grade_per_year) as INT) as da
FROM student_grades
GROUP BY group_name
