-- 1. Create a database named college_db
create database college_db;

-- 2. Create another database named company_db
CREATE DATABASE company_db;

-- 3. Display all databases and verify both databases exist
show databases;

-- 4. Select college_db as the current database
USE college_db;


-- 5. Create students table
create table students (
    student_id int,
    student_name varchar(50),
    age int,
    course varchar(50),
    city varchar(50)
);

-- 6. Create employees table
create table employees (
    employee_id int,
    employee_name varchar(50),
    salary decimal(10,2),
    department varchar(50),
    joining_date date
);

-- 7. Create products table
create table products (
    product_id int,
    product_name varchar(100),
    price decimal(10,2),
    category varchar(50)
);

-- 8. Display structure of all three tables
desc students;
desc employees;
desc products;

-- 9. Add email column
alter table students
add email varchar(100);

-- 10. Add phone column
alter table students
add phone varchar(15);

-- 11. Add gender column
alter table students
add gender varchar(10);

-- 12. Modify student_name to VARCHAR(100)
alter table students
modify student_name varchar(100);

-- 13. Modify city to VARCHAR(100)
alter table students
modify city varchar(100);

-- 14. Rename course to course_name
alter table students
rename column course to course_name;

-- 15. Remove gender column
alter table students
drop column gender;

-- Check the final structure
desc students;


-- 16. Rename students table to student_details
rename table students to student_details;

-- 17. Rename products table to product_details
rename table products to product_details;

-- 18. Display list of tables
show tables;

-- 19. Create test_data table
create table test_data (
    id int,
    name varchar(50)
);

-- 20. Insert a few records
insert into test_data
(id, name)
values
(1, 'rao'),
(2, 'Ajay'),
(3, 'Preeti'),
(4, 'Ramesh'),
(5, 'Smitha');

-- Check the records before TRUNCATE
select * from test_data;

-- 21. Remove all records using TRUNCATE
truncate table test_data;

-- 22. Verify that the table still exists
show tables;

-- You can also verify the structure
desc test_data;

-- Verify that there are no records
select * from test_data;


-- 23. Difference between TRUNCATE and DROP
--
-- TRUNCATE removes all records from a table,
-- but keeps the table structure.
--
-- DROP removes the entire table including
-- its structure and data.

-- 24. Create a temporary table named temp_students
CREATE TABLE temp_students (
    student_id INT,
    student_name VARCHAR(50)
);

-- 25. Drop the temp_students table
DROP TABLE temp_students;

-- 26. Verify that the table has been removed
SHOW TABLES;


-- 27. Create practice_db database
CREATE DATABASE practice_db;

-- Display databases
SHOW DATABASES;

-- 28. Drop practice_db database
DROP DATABASE practice_db;

-- 29. Verify that practice_db has been removed
SHOW DATABASES;


-- =========================================
-- TASK 7: COMBINED PRACTICE
-- =========================================

-- 30. Create school_db and select it
CREATE DATABASE school_db;

USE school_db;

-- 31. Create teachers table
CREATE TABLE teachers (
    teacher_id INT,
    teacher_name VARCHAR(50),
    subject VARCHAR(50),
    experience INT
);

-- 32. Add email column
ALTER TABLE teachers
ADD email VARCHAR(100);

-- 33. Change subject column to VARCHAR(100)
ALTER TABLE teachers
MODIFY subject VARCHAR(100);

-- 34. Rename teachers table
RENAME TABLE teachers TO teacher_details;

-- 35. Create old_data table
CREATE TABLE old_data (
    id INT,
    name VARCHAR(50)
);

-- Truncate old_data table
TRUNCATE TABLE old_data;

-- 36. Drop old_data table
DROP TABLE old_data;

-- 37. Display all tables in school_db
SHOW TABLES;

-- 38. What is the difference between DDL and DML?
-- DDL stands for Data Definition Language.
-- It is used to create and modify database structures.
-- Examples: CREATE, ALTER, DROP, TRUNCATE.
-- DML stands for Data Manipulation Language.
-- It is used to insert, update, and delete data.
-- Examples: INSERT, UPDATE, DELETE.


-- 39. What is the difference between DELETE, TRUNCATE, and DROP?
-- DELETE removes records from a table.
-- It can remove selected rows using a WHERE condition.
-- TRUNCATE removes all records from a table,
-- but keeps the table structure.
-- DROP removes the complete table,
-- including its structure and data.


-- 40. Can TRUNCATE be used to remove only selected rows?
-- No,TRUNCATE removes all records from the table.
-- It cannot be used with a WHERE condition.
-- To remove selected rows, use DELETE with WHERE.
-- Example:
-- DELETE FROM student_details
-- WHERE student_id = 101;


-- 41. What happens to the table structure when TRUNCATE is used?
-- The table structure remains unchanged.
-- Only all records are removed from the table.


-- 42. What happens to the table structure when DROP is used?
-- The complete table structure is removed along
-- with all the data in the table.


-- 43. Which DDL command is used to add a new column?
-- ALTER TABLE ... ADD COLUMN
-- Example:
-- ALTER TABLE student_details
-- ADD email VARCHAR(100);


-- 44. Which DDL command is used to change a table name?
-- RENAME TABLE
-- Example:
-- RENAME TABLE students TO student_details;


-- 45. Which command is used to modify an existing column definition?
-- ALTER TABLE ... MODIFY
-- Example:
-- ALTER TABLE student_details
-- MODIFY student_name VARCHAR(100);
