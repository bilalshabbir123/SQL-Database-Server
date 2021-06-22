/*****************CHECK CONSTRAINT***********************/
/*
If a columnn is marked as an identity column, 
then the values for this column are automatically
generated, when you insert a new row into the table.

CREATE TABLE tblPerson
(
Personal int identity (1,1) Primary Key,
Name nvarchar (20)
)

NOTE:
Seed and Increament values are optional.
If you don't specify the identity and seed they both default to 1.

To explicitly supply a value for identity column
1. First turn on identity insert-SET Identity_Insert tblPerson ON
Insert into tblPerson(PersonId,Name)Values(2,'John')

if you have deleted all th erows in a table, and you want to reset the identity
colummn value, use DBCC CHECKIDENT command.

DBCC CHECKIDENT('tblPerson',RESEED,0)
*/
USE Sample
go
SELECT*FROm tblGender
SELECT*FROM tblPerson

SELECT*FROM tblPerson
SELECT*FROM Tablperson
sp_rename 'Tablperson','tblper'
SELECT*FROM tblper
INSERT INTO tblper VALUES (4,'Shabbir');
DELETE FROM tblper where PersonID=1

SET IDENTITY_INSERT tblper ON
INSERT INTO tblper VALUES ('Zeeshan')
INSERT INTO dbo.tblper (PersonID,Name) values (4,'Salman');
INSERT INTO tblper VALUES (4,'Shabbir');
INSERT INTO tblper VALUES ('Zeeshan')

INSERT INTO dbo.tblper (PersonID,Name) values ('Salman');

INSERT INTO dbo.tblper  values (5,'Salman');

DELETE FROm tblper

DBCC CHECKIDENT(tblper,RESEED,0)
SELECT*FROM tblper
SET IDENTITY_INSERT tblper OFF
INSERT INTO tblper values('BILAL');