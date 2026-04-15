-- 1. Create a new table called STUDENTS with columns and constraints:
-- ID INT PRIMARY KEY, NAME TEXT NOT NULL, AGE, CITY, GRADE REAL NOT NULL.
  
CREATE TABLE COMPANY(
ID INT PRIMARY KEY NOT NULL,
NAME TEXT NOT NULL,
AGE INT NOT NULL,
ADDRESS CHAR(50),
SALARY REAL 
);

-- 2. Create exactly 4 students that appear in the table below
INSERT INTO STUDENTS (ID, NAME, AGE, CITY, GRADE)
VALUES (1, 'Noa', 15, 'Tel Aviv', 92.5),
(2, 'Lima', 16, 'Haifa', 88.0),
(3, 'Maya', 15, 'Netanya', 95.0),
(4, 'Omer', 17, 'Jerusalem', 81.5);

-- 3.1 select query to display all students and all columns
SELECT *
FROM STUDENTS

-- 3.2 select query to show all students only name and grade
SELECT NAME, GRADE
FROM STUDENTS

-- 3.3 select query to show all students who got grade above 90
SELECT *
FROM STUDENTS
WHERE GRADE > 90

-- 3.4 select all students where their name starts with M
SELECT *
FROM STUDENTS
WHERE NAME LIKE 'M%'

-- 3.5 show the avg grade, max, min
SELECT 
AVG(GRADE) AS Average_Grade,
MAX(GRADE) AS Max_Grade, 
MIN(GRADE) AS Min_Grade
FROM STUDENTS;

-- 3.6 show all students who got above avg
