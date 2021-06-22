/**********Group by in SQL Server***************/
/*
Group by clause is used to group a selected set of rows into a set of summary rows
by the values of one or more columns or expressions.
It is always used in conjunction with one or more aggregate functions.

SELECT City, SUM(Salary) AS TotalSalary
FROM tblEmployee GROUP by City

Note: 
If you omit, the GROUP BY clause and try to execute the query, you get an error
column 'tblEmployee.City' is invalid in the selected list because it is not contained 
in either an aggregate function or the GROUP BY clause.

We cannot apply an aggregate function on a text column.

Filtering Groups:
Where clause is used to filter rows before aggregation, where as HAVING clause 
is used to filter groups after aggregagtions.
The following 2 queries produce the sam eresult.

SELECT City,SUM(Salary) as TotalSalary
fromtblEMployee
Where City='London'
Group by City


SELECT City,SUM(Salary) as TotalSalary
from tblEmployee
group by City
Having City='London'

 Note: From a Performance standpoint, you cannot say that one method is less efficient than
 the other. SQL Server optimizer analyses each statement and selects an efficient way
 of executing it. As best practice, use the syntax that clearly describes the derised result.
 Try to eliminate rows that you wouldn;t need, as early as possible.
 
 Having class should come after the Group by class 

 In where class only the Male recors are retrived and then grouped
 In having class all the rows from the table are retrieved
 their grouped by gender and then only male groups are shown

 Difference between Where and Having


 1. Where clause can be used with -Select,Insert, and Update Staements,
 where as HAVING clause can only be used with the Select statemnet.

 2. WHERE filters rows before aggreagtion (GROUPING), where as HAVING
 filters groups,after the aggregations are performed.

 3.Aggregate Functions cannot be used in the WHERE clause, unless
 it is in a subquery contained in a HAVING clause, whereas, aggregate functions
 can be used in HAVING clause.
*/
USE Sample
go

CREATE TABLE tblEmployee(
ID int PRIMARY KEY,
Name nvarchar(40),
Gender nvarchar(10),
Salary int,
City nvarchar(30)
);
INSERT INTO tblEmployee VALUES(1,'Tom','male',5000,'London');
INSERT INTO tblEmployee VALUES(2,'Pam','Female',3000,'New York');
INSERT INTO tblEmployee VALUES(3,'John','Male',3500,'London');
INSERT INTO tblEmployee VALUES(4,'Sam','Male',3500,'London');
INSERT INTO tblEmployee VALUES(5,'Todd','Male',2800,'Sydney');
INSERT INTO tblEmployee VALUES(6,'Ben','Male',7000,'New York');
INSERT INTO tblEmployee VALUES(7,'Sara','Female',4800,'Sydney');
INSERT INTO tblEmployee VALUES(8,'Valarie','Female',5500,'New York');
INSERT INTO tblEmployee VALUES(9,'James','Male',6500,'London');
INSERT INTO tblEmployee VALUES(10,'Russell','Male',8800,'London');

select*from tblEmployee

SELECT SUM(Salary) AS Total_Salary FROM tblEmployee

SELECT*FROm tblEmployee Order by Salary DESC

SELECT MIN(Salary) From tblEmployee

Select Top 1 *From  tblEmployee Order by Salary DESC

SELECT* FRom tblEmployee Order by Salary ASC

SELECT Top 1 *FROM tblEmployee Order by Salary DESC

SELECT MAX(Salary) FROM tblEmployee

SELECt*FROM tblEmployee

SELECT SUM(Salary) as TotalSalary from tblEmployee

SELECT City,Gender, SUM(Salary) as TotalSalary
from tblEmployee
GROUP by City,Gender

SELECT City,Gender, SUM(Salary) as TotalSalary
from tblEmployee
GROUP by City,Gender
order by City

SELECt City, SUM(Salary) as TotalSalary from tblEmployee Group by City
SELECT City,Gender, SUM(Salary) as TotalSalary from tblEmployee Group by City,Gender

SELECT Gender,City, SUM(Salary) AS [Total Salary],COUNT(City) AS [Total Employees]
FROM tblEmployee
GROUP BY Gender,City

SELECT Gender,City, SUM(Salary) AS [Total Salary],COUNT(City) AS [Total Employees]
FROM tblEmployee
WHERE Gender='Male'
GROUP BY Gender,City

SELECT Gender,City, SUM(Salary) AS [Total Salary],COUNT(City) AS [Total Employees]
FROM tblEmployee
GROUP BY Gender,City
Having Gender='Male'

SELECT Gender,City, SUM(Salary) AS [Total Salary],COUNT(City) AS [Total Employees]
FROM tblEmployee
GROUP BY Gender,City
Having SUM(Salary)>5000
