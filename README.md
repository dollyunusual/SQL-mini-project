# SQL-mini-project
create database sql_group;

show databases;

#write the query to get the department and department wise total (sum) salary deom employee_details table
create table employee_details(emp_id int primary key, firstname varchar(5), lastname varchar(5), salary float, doj date, department varchar(3), gender char(2));

describe employee_details;

insert into employee_details values
(1, "vikas", "awat", 60000, "2013-02-15", "IT", "M"),
(2, "nikas", "jain", 53000, "2014-01-09", "HR", "F"),
(3, "ash", "kumar", 100000, "2014-01-09", "IT", "M"),
(4, "niki", "shama", 480000, "2014-01-09", "HR", "M"),
(5, "anish", "kadin", 50000, "2014-09-09", "IT", "M");

select * from employee_details;

select department, sum(salary) as total_salary
from employee_details
group by department;

#question 2: write the query to get the department and department wise total (sum) salary display it in ascending order according to salary. 
select department, sum(salary) as total_salary
from employee_details
group by department
order by salary asc;

#question 3:same question with question 2 but in descending order
select department, sum(salary) as total_salary
from employee_details
group by department
order by salary desc;

#question 4:write the query to get the department, total no of deaprtments, total(sum) salary with respect to department from employyd_details table
select department, count(*) as dept_counts, sum(salary) as total_salary 
from employee_details
group by department;

#question 5:get department wise average salary from employee details table order by salary ascending
select department, avg(salary) as average_salary
from employee_details
group by department
order by avg(salary) asc;

#question 6:department wise maximum salary from "employee_details" table order by salary ascending
select department, max(salary) as maximum_salary
from employee_details
group by department
order by max(salary) asc;

#question 7:write down the query to fetch project name assign to more than one employee
create database projectdetails;

show databases;

create table project (projectdetail_id int, employeedetail int, projectname varchar(5));

describe project;

insert into project 
values (1, 1, "CLP"),
(2, 1, "GRS"),
(3, 1, "DDS"),
(4, 2, "HRM"),
(5, 3, "GLM");

select * from project;

select projectname, count(*) as NOE
from project
group by projectname
having count(*) > 1;

