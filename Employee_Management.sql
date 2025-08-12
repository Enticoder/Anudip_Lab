create database Employee_Management_System;

use  Employee_Management_System;


//1.Create a table called Employees with the following columns:

EmployeeID (INTEGER, Primary Key)

FirstName (VARCHAR(50))

LastName (VARCHAR(50))

Salary (DECIMAL(10,2))  //
desc Employee;

Query: create table Employees(e_id int(3) PRIMARY KEY not null,f_name varchar(30) not null,l_name varchar(30) not null,Salary decimal(10,2) not null);
mysql> desc Employees;
+--------+---------------+------+-----+---------+-------+
| Field  | Type          | Null | Key | Default | Extra |
+--------+---------------+------+-----+---------+-------+
| e_id   | int           | NO   | PRI | NULL    |       |
| f_name | varchar(30)   | NO   |     | NULL    |       |
| l_name | varchar(30)   | NO   |     | NULL    |       |
| Salary | decimal(10,2) | NO   |     | NULL    |       |
+--------+---------------+------+-----+---------+-------+
4 rows in set (0.04 sec)

//2.Insert  5 employees records.


Query:
mysql> insert into Employees values(101,'Sagar','Gupta',25000);
mysql> insert into Employees values(102,'Yash','Bhosale',20000);
mysql> insert into Employees values(104,'Ravish','Singh',26000);
mysql> insert into Employees values(104,'Ravish','Singh',26000);
mysql> insert into Employees values(106,'Raju','Gupta',56000);


//3.Alter the table to include a new column.:Add a new column Departments (VARCHAR(50)) to the table.

Query:mysql> alter table Employees add Department varchar(50) not null;
mysql> desc Employees;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| e_id       | int           | NO   | PRI | NULL    |       |
| f_name     | varchar(30)   | NO   |     | NULL    |       |
| l_name     | varchar(30)   | NO   |     | NULL    |       |
| Salary     | decimal(10,2) | NO   |     | NULL    |       |
| Department | varchar(50)   | NO   |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+


//4.Get the names and department of employees who earn more than 55000.


Query:mysql> Select * from Employees where salary >= 55000;
+------+--------+--------+----------+--------------+
| e_id | f_name | l_name | Salary   | Department   |
+------+--------+--------+----------+--------------+
|  106 | Raju   | Gupta  | 56000.00 | Data Science |
+------+--------+--------+----------+--------------+
