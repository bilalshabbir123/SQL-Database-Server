/******************** Stored Procedures - Output Parameters ********************/
/*
To create an SP with output parameter, we use the keywords OUT or OUTPUT

If you donnot specify the output keyword, when executing the storred procedure,
the @Employeecount variable will be null

sp_help procedure name -View the information abount the stored procedure,
like parameter names, thier datatypes etc. sp_help can be used with any database onject like
tables,views,Sp's,triggers etc.
Alternatively, you can also press ALT+F1, When the name of the object is highlighted.

sp_helptext procedure_name -View the Text of the stored procedure

sp_depends procedure_name -View the dependencies of the stored procedure. This system SP
is very useful, especially if you want to check, 
if there are any stored procedures that are referencing a table that you are a
*/


use Sample
go
SELECT * FROM tblEmployee1
CREATE Procedure spGetEmployeeCountByGender
@Gender nvarchar(20),
@EmployeeCount int output
as Begin 
 Select @EmployeeCount=COUNT(ID) from tblEmployee1 where Gender=@Gender
 End

 Declare @Totalcount int
 Execute spGetEmployeeCountByGender 'Male', @Totalcount out
 if(@Totalcount is NuLL)
 print '@Totalcount is NULL'
 else
 print '@Totalcount is NOT NULL'

 print @Totalcount