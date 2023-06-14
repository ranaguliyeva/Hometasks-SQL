/*SET4
1.Alter table: Add a column 'Project_Status' of varchar type to the 'Project_Details' table.*/
alter table Project_Details 
add Project_Status varchar2(50);

/*2.Update operation: Update the 'Project_Details' table to set 'Project_Status' as 'Completed' 
for all projects whose 'End_Date' is before today's date.*/
update Project_Details
set Project_Status='Completed'
where end_date < sysdate;

/*3.Subquery: Write a query to find employees who earn more than the average salary.*/
select first_name from employees
where salary>(select avg(salary) from employees);

/*??4.Conversion Function: Write a query to convert the hire date in the 
'Employees' table to a string in the 'DD-MON-YYYY' format.*/
select to_char(hire_date, 'DD-MON-YYYY') as hire_date_string from employees;

/*5.Full Outer Join: Write a query to get all employees and all departments,
regardless of whether the employee is assigned to a department or not.*/
select first_name from employees e
full outer join departments d on e.department_id=d.department_id;