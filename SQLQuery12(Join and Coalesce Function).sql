/******************** Self Join ************************/
/*
Joining a table wit itself is called as SELF JOIN.
SELF JOIN is not a different type of JOIN.
It can be classified under any type of JOIN:
1. INNER
2. OUTER
3. CROSS Joins

Three ways to replace NULL values- ISNULL Function, CASE Statement & COALESCE() Function
*/


USE Sample
go
SELECT*FROM tblDepartment;
SELECT*FROM tblEmployee1;

CREATE TABLE tblEmployee2
(
EmployeeID int PRIMARY KEY,
Name nvarchar(20),
ManagerID int
);
INSERT INTO tblEmployee2 VALUES(1,'Mike',3);
INSERT INTO tblEmployee2 VALUES(2,'Rob',1);
INSERT INTO tblEmployee2 VALUES(3,'Todd',NULL);
INSERT INTO tblEmployee2 VALUES(4,'Ben',1);
INSERT INTO tblEmployee2 VALUES(5,'Sam',1);
SELECT*FROm tblEmployee2;
/* LEFT OUTER SELF JOIN */

SELECT M.Name AS Employee,E.Name AS Manager
FROM tblEmployee2 M
LEFT JOIN tblEmployee2 E
ON M.ManagerID=E.EmployeeID

SELECT*FROM tblEmployee2

/* INNER SELF JOIN */
SELECT E.Name AS Employee,M.Name AS Manager
FROM tblEmployee2 E
INNER JOIN tblEmployee2 M
ON E.EmployeeID=M.ManagerID

/*  Cross Self Join */
SELECt E.Name AS Employee,M.Name as Manager
FROM tblEmployee2 E
CROSS JOIN tblEmployee2 M

SELECT E.Name AS Employee, M.Name as Manager
FROM tblEmployee2 E
Full JOIN tblEmployee2 M
ON M.ManagerID=E.EmployeeID

SELECT*FROM tblEmployee2


SELECT E.Name AS Employee,M.Name AS Manager
FROM tblEmployee2 E
LEFT JOIN tblEmployee2 M
ON E.ManagerID=M.EmployeeID


/********************* COALESCE FUNCTION *******************/

USE Sample
go
SELECT E.Name as Employee, M.Name as Manager
FROM tblEmployee2 E
LEFT JOIN tblEmployee2 M
ON E.ManagerID=M.EmployeeID

SELECT ISNULL(NULL,'Manager')

SELECT ISNULL(NULL,'No Manager') as Manager

SELECT E.Name as Employee, M.Name as Manager
FROM tblEmployee2 E
LEFT JOIN tblEmployee2 M
ON E.ManagerID=M.EmployeeID


SELECT E.Name as Employee, ISNULL(M.Name,'No Manager') as Manager
FROM tblEmployee2 E
LEFT JOIN tblEmployee2 M
ON E.ManagerID=M.EmployeeID

/*  COALESCE FUNCTION  */
SELECT COALESCE ('NULL','No Manager') as Manager


SELECT E.Name as Employee, COALESCE(M.Name,'No Manager') as Manager
FROM tblEmployee2 E
LEFT JOIN tblEmployee2 M
ON E.ManagerID=M.EmployeeID

/* USE CASE STATEMENT  */
CASE WHEN EXPRESSION THEN '' ELSE '' END

SELECT E.Name as Employee, CASE WHEN M.Name IS NULL THEN 'No Manager' ELSE M.Name END as Manager
FROM tblEmployee2 E
LEFT JOIN tblEmployee2 M
ON E.ManagerID=M.EmployeeID


SELECT E.Name as Employee2, M.Name as Manager
FROM tblEmployee2 E
LEFT JOIN tblEmployee2 M
ON E.ManagerID=M.ManagerID

SELECT E.Name as EMployee, M.Name as Manager
FROM tblEmployee2 E
LEFT JOIN tblEmployee2 M
ON E.ManagerID=M.ManagerID