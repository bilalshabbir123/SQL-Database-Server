/**************** OutPut Parameters or rteurn Values ******************/
/*
Whenever, you execute a stored procedure, it returns an integer status variable.
Usually zero indicates success, and non-zero indicates failure.

So, we able to achieve what we want, using output parameters as well as return values.
Now, Let's look at example, when return status variables cannot be used, 
but Output parameters can be used.

Difference between Return and Ouput Statement

*Return STataemnet Value
only Integer Datatype
Only one value
Use to convey success or failure

*Output Parameters
Any Datatype
More than value
Use to return values like name,count etc...
*/

USE Sample
go
CREATE Procedure spGettotalcountofemployee
@Totalcount int output
as
begin
 Select @Totalcount=COUNT(ID) from tblEmployee1
 End

 select*from tblEmployee1

 Declare @Totalcount int
 Execute spGettotalcountofemployee @Totalcount output
 Select @Totalcount



 CREATE Procedure spGettotalcountofemployee1
as
begin
 return( select COUNT(ID) from tblEmployee1)
 End


 Declare @Total int
 Execute @Total=spGettotalcountofemployee1 
print @Total


CREATE Procedure spGetNamebyid2
@id int,
@Name nvarchar(20) output
as
Begin 
  Select @Name=Name from tblEmployee1 where id=@id
End

Declare @Name nvarchar(20)
Execute spGetNamebyid2 1,@Name out
Print 'Name ='+@Name


Create procedure spGetemployee
@id int,
@Name nvarchar(30) output
as
Begin
 Select @Name=Name from tblEmployee2 where EmployeeID=@id
 ENd

 Declare @Emp nvarchar (20)
 Execute spGetemployee 2,@Emp out
 Print 'EMployee Name ='+@Emp


 SELECT*FROm tblEmployee2
 USE Sample