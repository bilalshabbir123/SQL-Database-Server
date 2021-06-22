/**************Cascading Referential Integrity***************/
/*
Cascading referential Integrity constraint allows to define the actions Microsoft
SQL Server should take when a user attemps to delete or update key to which an existing foreignkeys points.

For Example, If you delete row with ID=1 from tblGender, then row with ID=3
from tblPerson table becomes an orphan record. You will not to able to tell the Gender
for this row. So, Cascading referential integrity constraint can be used to define actions
Microsoft SQL Server should take when this happens. By default, we get an error an dthe DELETE
or UPDATE stament is rolled back.

Options when setting up Cascading referential integrity constraint:

1. No Action: 
This is the default behaviour. No Actionspecifies that if an attempt is made
to delete or update a row with a key reference by foreign keys in existing rows in other tables,
an error is raised and the DELETE or UPDATE is rolled back.

2. Cascade:
Specifies that if an attempt is made to delete or update a row with a key referenced by foreign keys in existing
rows in other tables, all rows containing those foreign keys are also deleted or updated.

3. Set NULL:
Specifies thta if an attempt is made to delete or update a row with a key referenced by foreign 
keys in existing rows in other tables, all rows containing those foreign keys are set to NULL.

4. Set DEfault:
Specifies thta if an attempt is made to delete or update a row with a key referenced
by foreign keys in existing rows in other tables, all rows containing those foreign keys are set to default values.
*/

USE [Sample]
go

SELECt*FrOM tblGender
SELECT*FROM tblPerson

ALTER TABLE tblPerson 
ADD CONSTRAINT DF_tblPerson_GenderID

Delete  FROM tblGender WHERE ID=3;