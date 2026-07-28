create database if not	exists employee_database;
use Employee_Database;

create table if not exists departments(
department_id int,
department_name varchar(100),
primary key (department_id)
);

create table if not exists location(
location_id int,
location_name varchar(30),
primary key (location_id)
);

create table if not exists employees(
employee_id int,
employee_name varchar(50),
gender enum('M','F'),
age int,
hire_date date,
designation varchar(100),
salary decimal(10,2),
department_id int,
location_id int,

primary key (employee_id),

foreign key (department_id)
	references departments (department_id),
foreign key (location_id) 
	references location (location_id)
);

alter table employees
add column email varchar(100);

alter table employees
modify column designation varchar(255);

alter table employees
drop column age;

alter table employees
rename column hire_date to date_of_joining;

rename table departments to departments_info;

rename table location to locations;

truncate table employees;

drop table employees;

