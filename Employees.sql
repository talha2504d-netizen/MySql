create database employees;
use employees;

create table department (
	id int auto_increment,
    dept_name varchar(50),
    dept_head varchar(100),
    dept_location varchar(50),
    dept_ranking int,
    primary key(id)
);

create table employees (
id int auto_increment,
employee_name varchar(100),
position varchar(50),
salary int,
department_id int,
primary key(id),
foreign key (department_id) references department(id)
);

insert into department values
(null, "FInance", "james", "Karachi", 1),
(null, "Sales", "mary", "Karachi", 2),
(null, "Legal", "john", "Islamabad", 3),
(null, "Product Management", "Drew", "Quetta", 1);

insert into employees values
(null, "Laraib", "Junior WEb Dev", 2000, 4),
(null, "Maaz", "Accountant", 3000, 1),
(null, "Ahamd", "Business DEveloper", 200, 2),
(null, "Amjad", "Senior", 2500, 2),
(null, "Alyan", "Manager", 4000, 2),
(null, "Taha", "Clerk", 5000, 3);

select * from employees;


-- using subqueries
SELECT employee_name FROM employees
WHERE department_id = (SELECT id FROM department WHERE dept_location = "Quetta");

UPDATE employees 
SET salary = salary + salary * 0.2
WHERE department_id = (SELECT id FROM department WHERE dept_ranking = 2);

-- subqueries with delete
DELETE FROM employees 
WHERE department_id = (
	SELECT id FROM department WHERE dept_name = ""
);

select * from department;