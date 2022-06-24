create  database sql_group;
show databases;

#Query to get the department and department wise total(sum) salary from employees_details table
create table employee_details(emp_id int primary key, firstname varchar(5), lastname varchar(3), gender char(2));
describe employee_details;

insert into employee_details values (1, "Sam", "Dee", 60000, "2013-02-15", "IT", "M"),
(2, "Moyo", "Alabi", 53000, "2014-01-09", "HR", "F"),
(3, "Bims", "Alabi", 100000, "2014-01-09", "IT", "F"),
(4, "Lizzy", "Fan", 480000, "2014-01-09", "HR", "F"),
(5, "Ayo", "Dray", 50000, "2014-09-09", "IT", "M");

select * from employee_details;

#The query to get the department and department wise total(sum) salary, displaying in ascending order according to salary
select department, sum(salary) as total_salary
from employee_details
group by department
order by sum(salary); 

#The query to get the department, total number of departments, total(sum) salary with respect to department from employee details table
select department, count(*) as dept_counts, sum(salary) as total_salary
from employee_details
group by department

#Department wise average salary from employee details table order by salary ascending
select department, avg(salary) as average_salary
from employee_details
group by department
order by avg(salary) asc;

#Department wise maximum salary from employee details table order by salary ascending
select department, max(salary) as maximum_salary
from employee_details
group by department
order by max(salary) asc;