--SET3
/*1.Create a table: Create a table named 'Project_Details' with columns 'Project_ID' (number type), 
'Project_Name' (varchar type), 'Start_Date' (date type), 'End_Date' (date type) and 'Manager_ID' (number type).*/
create table Project_Details(
Project_ID number,
Project_Name varchar2(50),
Start_Date date,
End_Date date,
Manager_ID number);

/*2.Delete operation: Delete from 'Employees' where 'first_name' is 'John' and 'last_name' is 'Doe'.*/
delete from Employees
where first_name='John' and last_name='Doe';

/*3.Select with sorting: Write a SELECT statement to get all the employees in descending order of hire date.*/
select first_name from employees
order by hire_date desc;

/*4.Number Function: Write a query using the ROUND function 
to round off the salaries in the 'Employees' table to the nearest hundred.*/
select round(salary,-2) from employees;

/*5.Right Join: Write a query to get all departments and their employees, including departments without employees.*/
select e.first_name, d.department_name
from departments d
right join employees e on e.department_id=d.department_id;
