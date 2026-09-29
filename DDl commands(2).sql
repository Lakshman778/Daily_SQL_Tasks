-- 1. Create practice database
CREATE DATABASE practice_db;

-- 2. Select practice_db as the current database
USE practice_db;


-- 3. Create students table
CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(50),
    age INT,
    course VARCHAR(50),
    city VARCHAR(50)
);


-- 4. Display the structure of students table
DESC students;

-- 5. Insert a single record
INSERT INTO students
(student_id, student_name, age, course, city)
VALUES
(101, 'ramesh', 20, 'Bcom', 'Hyderabad');

-- Check the record
SELECT * FROM students;


-- 6. Insert more than one record
INSERT INTO students
(student_id, student_name, age, course, city)
VALUES
(102, 'Amit', 21, 'BTech', 'Delhi'),
(103, 'Preeti', 19, 'BCA', 'Mumbai'),
(104, 'Arjun', 22, 'MCA', 'Chennai'),
(105, 'Smitha', 20, 'BCA', 'Bangalore');

-- Check all records
SELECT * FROM students;


-- 7. Insert data into any two columns
-- Other columns will contain NULL values
INSERT INTO students
(student_id, student_name)
VALUES
(106, 'Kiran');

-- Check the record
SELECT * FROM students;

-- 8. Update a single value
-- Change Ravi's city from Hyderabad to Pune
UPDATE students
SET city = 'Pune'
WHERE student_id = 101;

-- Check the updated record
SELECT * FROM students
WHERE student_id = 101;


-- 9. Update more than one value in a single column
-- Change the city for multiple students
UPDATE students
SET city = 'Hyderabad'
WHERE student_id IN (102, 103, 104);

-- Check the updated records
SELECT * FROM students
WHERE student_id IN (102, 103, 104);


-- 10. Update more than one value in a single record
-- Change both age and course for student 105
UPDATE students
SET age = 21,
    course = 'MCA'
WHERE student_id = 105;

-- Check the updated record
SELECT * FROM students
WHERE student_id = 105;


-- 11. Display all students after INSERT and UPDATE operations
SELECT * FROM students;
