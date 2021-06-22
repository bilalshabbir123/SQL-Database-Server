/************* UNION an d UNION ALL ***************/
/*
UNION and UNION ALL operations in SQL Server, are used to combine the result set 
of two or more SELECT queries.

Note:
For UNION and UNION ALL to work, the number, Datatypes and the order of the 
columns in the select statements should be same

Difference Between UNION and UNION ALL
1. UNION removes dublicates rows, where as UNION ALL does not
2. UNION has to perform distinct sort to remove dublicates,
which makes it less faster than UNION ALL

NOTE: Estimated query execution plan - CTRL + L

Sorting results of a UNION or UNION ALL

ORDER BY clause should be used only on the last SELECT statemment in the UNION query

DIfference between UNION and JOIN

UNION combines the result-set of two or more select queries into a single result-set which
includes all the the rows from all the queries in the union, where as JOINS, retrieve
data from two or more tables based on logical relationship between the tables.

IN short, UNION combines rows from 2 or more tables,
where JOINS combine columns from 2 or more table.

*/
USE Sample
go

CREATE TABLE tblIndiaCustomer
(
ID int PRIMARY KEY,
Name nvarchar(20),
Email nvarchar(30)
);
INSERT INTO tblIndiaCustomer VALUES (1,'Raj','R@R.com');
INSERT INTO tblIndiaCustomer VALUES (3,'Tam','Tam@t.com');

CREATE TABLE tblUKCustomer
(
ID int PRIMARY KEY,
Name nvarchar(20),
Email nvarchar(30)
);
INSERT INTO tblUKCustomer VALUES (1,'Ben','Ben@b.com');
INSERT INTO tblUKCustomer VALUES (2,'Dunk','Dunk@d.com');
INSERT INTO tblUKCustomer VALUES (3,'Tam','Tam@t.com');
SELECT*FROM tblIndiaCustomer;
SELECT*FROM tblUKCustomer;

SELECT*FROM tblIndiaCustomer
UNION ALL
SELECT*FROM tblUKCustomer


SELECT*FROM tblIndiaCustomer
UNION 
SELECT*FROM tblUKCustomer

Select ID,Name,Email FROM tblIndiaCustomer
UNION All
Select ID,Name,Email FROM tblUKCustomer

SELECT*FROM tblIndiaCustomer
UNION 
SELECT*FROM tblUKCustomer
UNION ALL
SELECT*FROM tblUKCustomer
ORDER BY Name

 