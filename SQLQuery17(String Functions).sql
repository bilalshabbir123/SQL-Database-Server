/****************** Built-In String Functions in SQL Server ***********************/
/* 
ASCII 
returns the ASCII code of the given expression.
CHAR(Integer_Expression)
Converts an int ASCII code to a character. 
The Integer_Expression,should bebetween 0 and 255.

LTRIM(Character_Expression)
Removes blanks on the left hand side of the given character expression.

RTRIM(Character_Expression)
Removes blanks on the right hand side of the given expression.

LOWER(Character_Expression)
Converts all the characters in the given Character_Expression,to Lowercase letters.

UPPER(Character_Expression)
Converts all the characters in the given Character_Expression,to uppercase letters.

REVERSE(Any_String_Expression)
Reverse all the characters in the given string expression.

LEN(String_Expression)
Returns the count of total characters, in the given string expression,
excluding the blanks at the end of the expression.

LEFT()
RIGHT()


REPLICATE(String_To_Be_Replicated, Number_Of_Times_To_Replicate)
Repeates the given string, for the specified numbers of times.

If you use the substring of any string then use the substring function...

SPACE(Number_of_Spaces)
Returns number of spaces, specified by the Number_of_Spaces argument.
The SPACE(5) function, insert 5 spaces between FirstName and LastName


The SPACE(5)function, insert 5 spaces between FirstName and LastName

REPLACE(String_Expression,Pattern,Replacement_Value)
Replaces all occurences of a specified string value with another string value.

All .COM strings are replaced with .NET
*/
USE Sample


SELECT ASCII('ZBC')
SELECT ASCII('A-Z')

Select Char(65)

Declare @Start int
set @Start=65
while(@Start<=90)
Begin 
Select char(@Start)
Set @Start=@Start+1;
End

Select LTRIM('  Hello')
Select UPPER('k')

USE Sample
go


Select FirstName,LastName,
SUBSTRING(Email,1,2)+REPLICATE('*',5)+SUBSTRING(Email,CHARINDEX('@',Email),LEN(Email)-CHARINDEX('@',Email)+1 )as Email
from tblEmployee1

Select Firstname+SPACE(5)+LastName as FullName
from tblEmployee

Select FirstName +SPACE(5)+LastName as FullName from tblEmployee



--PATINDEX() FUNCTION
Select Email,PATINDEX('%@aaa.com',Email as FirstOccurance
from tblEmployee
WHERE PATINDEX('%@aaa.com',Email)>0

--Replace Function
Select Email, REPLACE(Email,'.com','.net') as ConvertEmail
from tblEmployee

--STUFF Function
Select FirstName,LastName,Email,
STUFF(Email,2,3,'*************') as stuffemail 
from tblEmployee

select*from tblEmployee

select ID,Name,Gender,STUFF(City,2,3,'*****')as StuffCity
from tblEmployee

SELECT*FROm tblDepartment