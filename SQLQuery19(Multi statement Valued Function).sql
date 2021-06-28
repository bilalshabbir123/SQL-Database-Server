/********* Multi Statement Table Valued Function ***************/
/*
Inline table valued function, the returns clause cannot contain the structure 
of the table, the function returns. Where as, with the multi-statement tabel valued
function, we specify the structure of the table that gets returned.


Inline table valued functions are better for performance, the multi-statemnet
table valued function,
if the given task can be achieved using an inline table value function, always prefer to
prefer to use them, over nulti statement table valued function.

It's possible to update the underlying table , using an inline table valued function,
but not possibale using multi-statement table valued function.

Reason for improved performance of an inline table valued function:
Internally, SQL server treats an inline table valued function  much like it would a
a view and treats a multi-statement table valued function similar to how it would a strored procedure.

Schemabinding, specifies that the function is bound to the database objects that it
reference, When SCHEMABINDIN is specifie, the base objects cannot be modified in any way thta would affect
the function definatio.
The function defination uitself first
be modified or dropped to remove dependencies on the object that is to be modified.

*/

Use Sample
Go

Create Function fn_Ily_Getemployee()
returns table
as 
return
(select ID,Name, Cast(DateofBirth as Date) as DOB from tblEmployee)

Create Function fn_MSTVF_Getemployees()
Returns @table Table (ID innt,Nmae nvarchar(20),DOB Date)
as
Begin
INSERT into @table
Select ID,Name,Cast(DateofBirth as Date) from tblEmployee
Returns End

--check the example from the internet