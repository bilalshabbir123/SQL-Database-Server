/******************Select Statement*****************/
/*
Where class is used to limit the number of rows

<> Not Equal to operator
IN Specify a list of values
LIKE Specify a pattern
Not Not in list, range etc...
% Specifies zero or more characters
- Specifies exactly one character
[] Any character with in the brackets
[^] Not any character with in the brackets
L% start with L
_@_  one character before the symbol and one character after the symbol

'[MST]%'  start name with MST
'[^MST]%'  start Name with NOT MST
*/

USE Sample
go

SELECT*FROM tblPerson
Select DISTINCT Name,GenderID FROM tblPerson

SELECT*FROM tblPerson WHERE GenderID=1 or GenderID=2 or GenderID=3
Select DISTINCT Name,GenderID FROM tblPerson

SELECT*FROM tblPerson WHERE GenderID in (1,2,3)
Select DISTINCT Name,GenderID FROM tblPerson

SELECT*FROM tblPerson WHERE GenderID BETWEEN 1 and 3

SELECT*FROM tblPerson WHERE Name LIKE'J%'

SELECT*FROM tblPerson WHERE Email LIKE '%@%';
SELECT*FROM tblPerson WHERE Email NOT LIKE '%@%';

SELECT*FROM tblPerson WHERE Name LIKE '[MST]%' 

SELECT*FROM tblPerson WHERE Name  LiKE '[J]%'
SELECT*FROM tblPerson WHERE Name NOT LiKE '[J]%'
SELECT*FROM tblPerson WHERE Name NOT LiKE '[^J]%'
SELECT*FROM tblPerson WHERE Name LiKE '[^J]%'

SELECT*FROM tblPerson Where (Name like '[J]%' or GenderID=1 or GenderID=2)AND Age>33

SELECT*FROM tblPerson ORDER by Name;

SELECT*FROM tblPerson ORDER by Name DESC,Age ASC;

SELECt top 2 Name,Age FROM  tblPerson
SELECT top 50 Percent *FROM tblPerson

SELECt * From tblPerson order by Age DESC
SELECT top 1  *from tblPerson order by Age DESC

SELECt top 5 *FROM tblPerson ORDER by Age DESC
SELECT TOP 5*FROM tblPerson ORDER by Age DESC