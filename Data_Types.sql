CREATE DATABASE tasks;
USE tasks;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    percentage DECIMAL(5,2),
    email VARCHAR(50),
    date_of_birth DATE
);

INSERT INTO students
(student_id, student_name, age, percentage, email, date_of_birth)
VALUES
(101, 'Lakshman', 21, 85.00, 'lakshman@gmail.com', '2005-06-01'),
(102, 'Ravi', 23, 80.00, 'ravi@gmail.com', '2003-05-10'),
(103, 'Rao', 22, 75.00, 'kumar@gmail.com', '2004-07-11'),
(104, 'Sahil', 26, 90.00, 'sahil@gmail.com', '2000-05-10'),
(105, 'Sushma', 20, 60.00, 'sushma@gmail.com', '2006-05-10');

SELECT * FROM students;


CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    salary DECIMAL(10,2),
    phone_number VARCHAR(15),
    joining_date DATE,
    joining_time TIME
);

INSERT INTO employees
(employee_id, employee_name, salary, phone_number, joining_date, joining_time)
VALUES
(101, 'Ramu', 25000.00, '1234567890', '2026-07-01', '12:15:30'),
(102, 'Amit', 45000.50, '9876543210', '2026-01-15', '09:00:00'),
(103, 'Priya', 52000.00, '8765432109', '2026-02-01', '10:30:00'),
(104, 'Rahul', 38500.75, '7654321098', '2026-03-10', '14:15:00'),
(105, 'Sneha', 61000.25, '6543210987', '2026-04-22', '08:45:00');

SELECT * FROM employees;


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT,
    description TEXT,
    manufacture_date DATE
);

INSERT INTO products
(product_id, product_name, price, quantity, description, manufacture_date)
VALUES
(101, 'Laptop', 45000.68, 1, 'Lenovo Ideapad i3', '2024-06-01'),
(102, 'Smartphone', 15999.00, 15, 'Samsung Galaxy M14 5G', '2025-11-12'),
(103, 'Wireless Mouse', 850.50, 50, 'Logitech M235 Silent', '2026-02-18'),
(104, 'Smart TV', 32999.99, 5, 'Sony Bravia 43 inch 4K', '2025-08-25'),
(105, 'Bluetooth Speaker', 2499.00, 22, 'boAt Stone 1200 14W', '2026-01-05');

SELECT * FROM products;


-- =========================================
-- TASK 4: DATA TYPES
-- =========================================

-- 1. Which data type would you use for a person's age?
-- Answer: INT

-- 2. Which data type would you use for a student's name?
-- Answer: VARCHAR

-- 3. Which data type would you use for a salary such as 45000.75?
-- Answer: DECIMAL(10,2)

-- 4. Which data type would you use for date of birth?
-- Answer: DATE

-- 5. Which data type would you use for a phone number stored as text?
-- Answer: VARCHAR(15)

-- 6. Which data type would you use for a long description?
-- Answer: TEXT

-- 7. Which data type would you use for a value such as 10.25
--    when exact decimal precision is required?
-- Answer: DECIMAL(4,2)

-- 8. What is the difference between CHAR and VARCHAR?
-- Answer: CHAR stores fixed-length strings, whereas VARCHAR
-- stores variable-length strings.

-- 9. What is the difference between DATE and DATETIME?
-- Answer: DATE stores only the date, whereas DATETIME stores
-- both date and time.

-- 10. When would you use BIGINT instead of INT?
-- Answer: BIGINT is used when the required number exceeds
-- the storage range of INT.
