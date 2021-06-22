/**************** Stored Procedures ****************/
/*
A stored procedure is group of T-SQL (Transact SQL) statements. If you have a situation, where
you write the same query over an dover again. You can save that specific query as a 
stored procedure and call it just by it's name.

1. Use CREATE PROCEDURE or CREATE PROC statement to create SP
Note:
When naming user defined stored procedures, icrosoft recommends not to use sp_
as a prefix. All system stored procedures, are prefixed with sp_.
This avoids any ambiguity between user defined and system stored procedures and any 
conflicts, with some futhure system procedure.

To execute the stored procedure
1. spGetEMployee
2. EXECspGetEmployees
3.ExecutespGetEmployees

Note:
You can also right click on the procedure name, in object explorer in SQL Server
Management Studio and select EXECUTE STORED PROCEDURE.

Stored Procedure with Parameters

Parameters and variables has an @ prefix in their name.

Parameters and varables has an @ prefix in their name.

To Execute:
EXECUTE spGetEnployeeByGenderAndDEpartment 'Male',1
EXECUTE spGetEmployeeByGenderandDepartment @Department-1,@Gender-'Male'

To view the text, of the stored procedure

1. Use system stored procedure sp_helptext 'SPName'
or
2.Right Click the SP in Object explorer -> Scrip Procedures as -> Create To ->New Query Editior Window

To change the stored procedure, use ALTER PROCEDURE statement.
To delete the SP, use DROP PROC 'SPName' or DROP PROCEDURE 'SPName'
To encrypt the text of the SP, use WITH ENCRYPTION option.
It is not possible to view the text of an encrypted SP.


/*---------------------------
USE [Sample]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[spGetemployees]

SELECT	'Return Value' = @return_value

GO
-------------------------------*/

defination of stored procedure

USE [Sample]
GO

/****** Object:  StoredProcedure [dbo].[spGetEmployeeByGenderandDepartment]    Script Date: 6/17/2021 7:57:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spGetEmployeeByGenderandDepartment]
@Gender nvarchar(20),
@Departmentid int
as
Begin
 Select Name,Gender,DepartmentID FROM tblEmployee1 Where Gender=@Gender and DepartmentID=@Departmentid
End
GO

-----------------------
CREATE PROC spGetEmployeeByGenderandDepartment
@Gender nvarchar(20),
@Departmentid int
as
Begin
 Select Name,Gender,DepartmentID FROM tblEmployee1 Where Gender=@Gender and DepartmentID=@Departmentid
End





*/
USE Sample
go
select*from tblEmployee
SELECT ID,Name,Gender,Salary FROM tblEmployee

CREATE PROCEDURE spGetemployees
AS
BEGIN
SELECT ID,Name,Gender FROM tblEmployee
END

spGetemployees

EXEC spGetemployees
Execute spGetemployees

SELECT*FROM tblEmployee1

CREATE PROC spGetEmployeeByGenderandDepartment
@Gender nvarchar(20),
@Departmentid int
as
Begin
 Select Name,Gender,DepartmentID FROM tblEmployee1 Where Gender=@Gender and DepartmentID=@Departmentid
End

spGetEmployeeByGenderandDepartment 'Male',1

spGetEmployeeByGenderandDepartment @DEpartmentid=1,@Gender='Male'

sp_helptext spGetEmployeeByGenderandDepartment

Alter Procedure spGetEmployeeByGenderandDepartment
as
Begin
 Select Name,Gender,DepartmentID FROM tblEmployee1 Where Gender=@Gender and DepartmentID=@Departmentid
End


--for deleting procedure
DROP proc spGetEmployeeByGenderandDepartment


Alter  PROC spGetEmployeeByGenderandDepartment
@Gender nvarchar(20),
@Departmentid int
with Encryption
as
Begin
 Select Name,Gender,DepartmentID FROM tblEmployee1 Where Gender=@Gender and DepartmentID=@Departmentid
End