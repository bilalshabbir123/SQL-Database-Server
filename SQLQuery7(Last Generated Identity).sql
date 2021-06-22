/********** Get The Last Generated Identity Colummn ************/
/* 
There are several ways in SQL Server, to retieve the last identity value
that is generated. The most common way is to use SCOPE_IDENTITY() built in function.

Note:
You can also use @@IDENTITY and IDENT_CURRENT('TableName')

Difference:

SCOPE_IDENTITY -Same session and the same scope.
@@IDENTITY -Same sassion and across any scope.
IDENT_CURRENT ('TableName') -Specific table across any session and any scope 
*/
CREATE TABLE Test1
(
ID INT IDENTITY (1,1),
Value nvarchar(20)
);

CREATE TABLE test2
(
ID INT IDENTITY (1,1),
Value nvarchar(20)
);

DROP TABLE test2;

INSERT INTO Test1 Values ('Zeeshan');
SELECT*FROM Test1;
SELECT SCOPE_IDENTITY()
SELECT @@IDENTITY

SELECT*FROM Test1
SELECT*FROm Test2

CREATE TRIGGER trforinsert on Test1 for Insert
as 
begin
 INSERT INTO Test2 Values ('YYYY');
End