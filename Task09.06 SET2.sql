--SET2
/*1.Alter table: Add a column 'Salary' of number type to the 'Employee_Details' table.*/
alter table Employee_Details
add Salary number;

/*2.Update operation: Update the 'Employees' table to set the 'commission_pct' to 0.2 
for all employees with the 'job_id' of 'SA_REP'.*/
update Employees set commission_pct=0.2
where job_id='SA_REP';

/*3.Aggregate Function: Write a query to find the average salary in the 'Employees' table.*/
select avg(salary) as avg_salary from employees;

/*4.Date Function: Write a query to return the hire date and number of years since hire 
for each employee in the 'Employees' table. Use the SYSDATE and EXTRACT functions.*/
select hire_date, extract(year from sysdate)-extract(year from hire_date)
from employees;

/*5.Left Join: Write a query to get all employees and their department names, 
including those not assigned to a department.*/
select e.first_name, d.department_name
from departments d 
left join employees e on d.department_id=e.department_id;