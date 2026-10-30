
-- ASSIGNMENT: Database Schema Builder and Data Manipulation Utility

-- 1. Create Database
CREATE DATABASE EmployeeDB;

USE EmployeeDB;

-- 2. DDL: Create Employee Table
CREATE TABLE Employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10,2)
);

-- 3. DDL: Add hire_date Column
ALTER TABLE Employee
ADD COLUMN hire_date DATE;

-- 4. DML: Insert Employee Records
INSERT INTO Employee
(first_name, last_name, email, salary, hire_date)
VALUES
('Lakshman', 'Kumar', 'lakshman@gmail.com', 45000.00, '2026-09-29'),
('Rahul', 'Sharma', 'rahul@gmail.com', 50000.00, '2026-09-25'),
('Priya', 'Reddy', 'priya@gmail.com', 55000.00, '2026-09-20'),
('Arjun', 'Kumar', 'arjun@gmail.com', 60000.00, '2026-09-15');

-- 5. Display All Employees
SELECT * FROM Employee;

-- 6. DML: Update Employee Salary
UPDATE Employee
SET salary = 60000.00
WHERE id = 1;

-- 7. DML: Delete Employee Record
DELETE FROM Employee
WHERE id = 4;

-- 8. Find Employee By Email
SELECT *
FROM Employee
WHERE email = 'lakshman@gmail.com';

-- 9. List All Employees
SELECT * FROM Employee
ORDER BY id;

-- 10. Display Table Structure
DESC Employee;

-- 11. Display Employee Names and Salaries
SELECT first_name, last_name, salary
FROM Employee;

-- 12. Display Employees With Salary Above 50000
SELECT *
FROM Employee
WHERE salary > 50000;

-- 13. Count Total Employees
SELECT COUNT(*) AS total_employees
FROM Employee;
