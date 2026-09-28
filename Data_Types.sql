create database tasks;
use tasks;
create table students(student_id int primary key, student_name varchar(50), age int, percentage float, email varchar(30), DOB date);

insert into students values(101,'Lakshman', 21, 85, 'lakshman@gmail.com', '2005-06-01');
insert into students values(102,'Ravi', 23, 80, 'ravi@gmail.com', '2003-05-10');
insert into students values(103,'Rao', 22, 75, 'kumar@gmail.com', '2004-07-11');
insert into students values(104,'sahil', 26, 90, 'sahil@gmail.com', '2000-05-10');
insert into students values(105,'sushma', 20, 60, 'sushma@gmail.com', '2006-05-10');

select *from students;

create table Employee(employee_id int, employee_name varchar(40), salary float, phone_number varchar(10), joining_date date, joining_time time);

insert into Employee values(101, 'Ramu', 25000, '123456789', '2026-07-01', '12:15:30');  
INSERT INTO Employee (employee_id, employee_name, salary, phone_number, joining_date, joining_time) VALUES
(102, 'Amit', 45000.50, '9876543210', '2026-01-15', '09:00:00'),
(103, 'Priya', 52000.00, '8765432109', '2026-02-01', '10:30:00'),
(104, 'Rahul', 38500.75, '7654321098', '2026-03-10', '14:15:00'),
(105, 'Sneha', 61000.25, '6543210987', '2026-04-22', '08:45:00');

select *from Employee;

create table Product_table(prod_id int, prod_name varchar(20), price decimal(15, 2), quantity int, description text, manuf_date date);

insert into Product_table values(101, 'laptop', 45000.68, 1, 'Lenovo ideapad i3', '2024-06-01');
insert into Product_table values
(102, 'Smartphone', 15999.00, 15, 'Samsung Galaxy M14 5G', '2025-11-12'),
(103, 'Wireless Mouse', 850.50, 50, 'Logitech M235 Silent', '2026-02-18'),
(104, 'Smart TV', 32999.99, 5, 'Sony Bravia 43 inch 4K', '2025-08-25'),
(105, 'Bluetooth Speaker', 2499.00, 22, 'boAt Stone 1200 14W', '2026-01-05');

select *from Product_table;