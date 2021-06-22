/******************* Inline Table Value Function ****************/
/*
-Scalar function returns a scalar value
-inline table valued function -returns a table

1.We specify TABLE as the return type, instead of any scalar datadype.
2.The function body is not eclosed between BEGIN and END block.
3.The structure of the table that gets returned, is determined by the 
select statement with in the function.

Where can we use Inline Table ValuedFunctions.
1. inline Table Valued Functions can be used to achieve the functionality 
of parameterized views.
The table returned by the table valued function, can also be used in joins with other
tables.

*/

use Sample
go
Select*from tblEmployee
--Creating the function
CREATE FUNCTION fn_Employeebygender(@Gender nvarchar(10))
returns TABLE
AS
RETURN (Select ID,Name,Gender, Salary from tblEmployee WHERE Gender=@Gender)

--To call the function
Select*from fn_Employeebygender('Male')