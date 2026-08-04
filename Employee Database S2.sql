create database if not	exists employee_database;
use Employee_Database;

create table if not exists departments(
department_id int primary key,
department_name varchar(100) unique not null
);
desc departments;

create table if not exists location(
location_id int auto_increment primary key,
location_name varchar(30) unique not null
);

desc location;

create table if not exists employees(
employee_id int primary key,
employee_name varchar(50) not null,
gender CHAR(1) CHECK (gender IN ('M', 'F')),
age INT CHECK (age BETWEEN 18 AND 60),
hire_date date default (current_date),
designation varchar(100),
salary decimal(10,2),
department_id int,
location_id int,
foreign key (department_id) references departments (department_id),
foreign key (location_id) references location(location_id)
);

desc employees;

use Employees;

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');

select * from departments;

INSERT INTO location (location_name) VALUES
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');

select * from location;

INSERT INTO employees (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);

select * from employees;
											/*  Clause & Operators */

/* Distinct Clause */

select distinct salary from employees;

/* Alias (as) */

select age as Employee_age from employees;

												/*  WHERE CLAUSE & OPERATORS */
/* where & and operator */											

select * from employees where salary >50000 and hire_date <'2016-01-01';

/* Missing values */

select * from employees 
where designation is null;

update employees
set designation = "Data Scientist" 
where designation is null;

select * from employees
where designation = "Data Scientist";

													/* Sorting and Grouping Data */
/* order by */         

select * from employees order by department_id, salary desc;     

/* limit */    
            
select * from employees where hire_date < '2018-01-01' limit 5;         
            
/* AGGREGATE FUNCTIONS  SUM & MIN */
   
select sum(salary) as total_finace_salary 
from employees
where department_id="7"; 
            
select min(age) as min_age
from employees;  
   
/* GROUP BY */
   
select location_id,
max(salary) as max_salary
from employees
group by location_id;
   
/* Average*/

select designation,
avg(salary) as avg_salary
from employees
where designation like '%Analyst%'
group by designation;

/* Having */

select department_id,
count(*) as employee_count
from employees
group by department_id
having COUNT(*) < 3; 	

 select location_id, 
 avg(age) as avg_age
 from employees
 group by location_id
 having avg_age < 30;
   
																/* JOINS */

/* INNER JOIN */

select e.employee_name,e.designation,d.department_name
from employees as e
inner join departments as d on e.department_id=d.department_id;

/* LEFT JOIN */

select d.department_name, 
count(e.employee_id) as total_employees
from departments d
left join employees e
on d.department_id = e.department_id
group by d.department_name;

/* RIGHT JOIN */

select l.location_name,e.employee_name from employees e
right join location l
on e.location_id = l.location_id;

/* CROSS JOIN */

select d.department_name,l.location_name from departments d
cross join location l;

/* SELF JOIN */

select e1.employee_name as employee1,
       e2.employee_name as employee2,
       e1.department_id
from employees e1
join employees e2
on e1.department_id = e2.department_id
and e1.employee_id < e2.employee_id;

															/* WINDOWS FUNCTIONS */

/* rank */

select employee_id,employee_name,salary,
rank() over (order by salary desc) as salary_rank
from employees;

/* DENSE_RANK */

select employee_id,employee_name,department_id,salary,
dense_rank() over (partition by department_id order by salary desc) as salary_rank
from employees;

select employee_id,employee_name,department_id,salary,
SUM(salary) over (partition by department_id order by employee_id) as running_total_salary
from employees;