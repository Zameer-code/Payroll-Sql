#UC-1 creating Payroll service database
use payroll_service;

#UC-2 Creating the employee_payroll Table
create table employee_payroll(
employee_id int auto_increment primary key not null,
employee_name varchar(50),			#entering employee name
salary varchar(50),				# entering salray
start_date timestamp,				# date of Joining
primary key (id)
);
describe employee_payroll;

select * from employee_payroll;

#UC-3 Inserting into the Employee_payroll
insert into employee_payroll (employee_name, salary, start_date) values 
( 'Jackson Briggs', '50000', '2018-01-03' ), 			# Employees which are added
( 'Liu Kang', '40000', '2019-11-13' ),
( 'Johny Cage', '60000', '2020-05-21' );

#UC-4 Selecting from Employee_payroll
select * from employee_payroll;


#UC-5 Selecting Salary From Employee_payroll..
select salary from employee_payroll where employee_name = 'Jackson Briggs'; #Selecting the name of employee to update the salary and 
select * from employee_payroll												##date of joining..
WHERE start_date BETWEEN CAST('2018-01-01' AS DATE) AND DATE (NOW()); 

##UC-6 Altering of the table to set the Gender of the employees..
alter table employee_payroll add gender char(1) after employee_name; #adding Gender column into the table.. 
describe employee_payroll;			    							 #Describe or viewing if the table..

## UC-7 Selecting Average, max, and sum of the Salary according to the Gender...
update employee_payroll set gender = 'M' where employee_name = 'Jackson Briggs' or employee_name = 'Liu Kang' or employee_name = 'Johny Cage'; ##Setting of the Gender..
update employee_payroll set salary = 30000.00 where employee_name = 'Liu Kang';																## Updating the salary according to the group of the Gender..


select avg(salary) from employee_payroll where gender = 'M' group by gender;
select count(employee_name) from employee_payroll group by gender;
select avg(salary) from employee_payroll group by gender;
select count(employee_name) from employee_payroll group by gender;
select sum(salary) from employee_payroll group by gender;


 alter table employee_payroll add address varchar(250) after phone_number;
 alter table employee_payroll add department varchar(250) NOT NULL after address;
 alter table employee_payroll alter address set default 'TBD';
 describe employee_payroll;
 insert into employee_payroll ( name, salary, start ) values ( 'Jackson', 100000, '2018-01-03' );
 
 

 alter table employee_payroll add deductions double not null after basic_pay;
 alter table employee_payroll add taxable_pay double not null after deductions;
 alter table employee_payroll add tax double not null after taxable_pay;
  alter table employee_payroll add net_pay double not null after tax;
  
  