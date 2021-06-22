/**********     Joins In SQL Server **********/
/*
Joins in SQL Server are used to retrieve data from 2 or more related tables. 
In general tables are related to each other using foreign key constraints.

In SQL Server, there are different types of joins
1.INNER JOIN
2.OUTERR JOIN
3.CROSS JOIN

Outer Join are again divided into
1.Left Join or Left Outer Join
2.RRIght join or Right Outer Join
3.Full join or Full Outer Join

INNER JOIN returns only the matching rows between both
the tables. Non matching rows are eliminated.

SELECT Name,Gender, Salary, DepartmentName
FROM tblEmployee
INNER JOIN tblDeparment
ON tblEmployee.DEpartmentID=tblDeparment.ID

SELECT Name,Gender, Salary, DepartmentName
FROM tblEmployee
JOIN tblDeparment
ON tblEmployee.DepartmentID=tblDeparment.ID

LEFT JOIN 
returns all the matching rows + non matching rows from the left table

SELECT Name,Gender, Salary, DepartmentName
FROM tblEmployee
LEFT JOIN tblDeparment
ON tblEmployee.DepartmentID=tblDeparment.ID

SELECT Name,Gender, Salary, DepartmentName
FROM tblEmployee
LEFT OUTER JOIN tblDeparment
ON tblEmployee.DepartmentID=tblDeparment.ID

RIGHT JOIN 
returns all the matching rows + non matching rows from the Right table

SELECT Name,Gender, Salary, DepartmentName
FROM tblEmployee
Right JOIN tblDeparment
ON tblEmployee.DepartmentID=tblDeparment.ID

SELECT Name,Gender, Salary, DepartmentName
FROM tblEmployee
Right OUTER JOIN tblDeparment
ON tblEmployee.DepartmentID=tblDeparment.ID


FULL JOIN 
returns all rows from both the left and right table, including the non matching rows.

SELECT Name,Gender, Salary, DepartmentName
FROM tblEmployee
FULL OUTER JOIN tblDeparment
ON tblEmployee.DepartmentID=tblDeparment.ID

SELECT Name,Gender, Salary, DepartmentName
FROM tblEmployee
FULL JOIN tblDeparment
ON tblEmployee.DepartmentID=tblDeparment.ID

CROSS JOIN 
Produces the Cartesion product of the 2 tables involved in the join.
For example in the Empoyees table we have 10 rows an din the Department table we have 4 rows.
So, a cross join between these tables produces 40 rows.

NOTE:
Cross Join shouldn't have ON clause.

GENERAL formula for Joins

SELECT COULUMN_LIST
FROM LEFT_TABLE_NAME
JoinType RightTable
ON JOIN_CONDITION

CROSS JOIN
SELECT Name,Gender,Salary,DepartmentName
FROM tblEmployee
CROSS JOIN tblDepartment

*/
USE Sample
go
CREATE TABLE tblEmployee1
(
ID int Primary key,
Name nvarchar(20),
Gender nvarchar(20),
Salary int,
DepartmentID int);

INSERT INTO tblEmployee1 VALUES(1,'Tom','male',5000,1);
INSERT INTO tblEmployee1 VALUES(2,'Pam','Female',3000,3);
INSERT INTO tblEmployee1 VALUES(3,'John','Male',3500,1);
INSERT INTO tblEmployee1 VALUES(4,'Sam','Male',3500,2);
INSERT INTO tblEmployee1 VALUES(5,'Todd','Male',2800,2);
INSERT INTO tblEmployee1 VALUES(6,'Ben','Male',7000,1);
INSERT INTO tblEmployee1 VALUES(7,'Sara','Female',4800,3);
INSERT INTO tblEmployee1 VALUES(8,'Valarie','Female',5500,1);
INSERT INTO tblEmployee1 VALUES(9,'James','Male',6500,NULL);
INSERT INTO tblEmployee1 VALUES(10,'Russell','Male',8800,NULL);

SELECT*FRom tblEmployee1

CREATE TABLE tblDepartment
(
ID int Primary Key,
DepartmentName nvarchar(20),
Location nvarchar(20),
DepartmentHead nvarchar(20)
);

INSERT INTO tblDepartment values(1,'IT','London','Rick');
INSERT INTO tblDepartment values (2,'Payroll','Dehli','Ron');
INSERT INTO tblDepartment values (3,'HR','New York','Christie');
INSERT INTO tblDepartment values (4,'Other Department','Sydney','Cindrella');

SELECT*FROM tblDepartment

ALTER TABLE tblEmployee1 add constraint tblEmployee_DeparmentID_FK
Foreign key (DepartmentID) references tblDepartment(ID)

SELECT Name,Gender,Salary, DepartmentName
FROM tblEmployee1
JOIN tblDepartment
ON tblEmployee1.DepartmentID=tblDepartment.ID

SELECT Name,Gender,Salary, DepartmentName
FROM tblEmployee1
INNER JOIN tblDepartment
ON tblEmployee1.DepartmentID=tblDepartment.ID





SELECT Name,Gender, Salary, DepartmentName
FROM tblEmployee1
LEFT OUTER JOIN tblDepartment
ON tblEmployee1.DepartmentID=tblDepartment.ID


SELECT Name,Gender, Salary, DepartmentName
FROM tblEmployee1
Right OUTER JOIN tblDepartment
ON tblEmployee1.DepartmentID=tblDepartment.ID

SELECT Name,Gender, Salary, DepartmentName
FROM tblEmployee1
FULL OUTER JOIN tblDepartment
ON tblEmployee1.DepartmentID=tblDepartment.ID

SELECT Name,Gender, Salary, DepartmentName
FROM tblEmployee1
FULL JOIN tblDepartment
ON tblEmployee1.DepartmentID=tblDepartment.ID