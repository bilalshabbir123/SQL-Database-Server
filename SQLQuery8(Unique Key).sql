/******************Unique Key Constraint*****************/
/*
We use UNIQUE constraint to enforce uniqueness of a column i.e the column
shouldn't allow any dublicate values.
We can add a Unique Constraint through the designer or using a query.

To create the unique key using a query

Alter Table Table_Name
Add Constraint Constraint_Name Unique(Column_Name)

Both primary key and unique key are used to enforce, the uniquenesss of a 
column. So, when do you choose one over the other?

A table can have only one primary key.If you want to enforce uniqueness on 2 or more
columns, then we use unique key constraint.

WHat is the deifference between Primary key constraint and Unique key constraint?
1.A table can have only one primary key, but more than one unique key.
2.Primary key does not allow nulls, wherea as unque key allow one null
*/

USE Sample
go
SELECT*FROM tblPerson

ALTER TABLE tblPerson
Add constraint UQ_tblPerson_Name UNique (Name);

ALTER TABLE tblPerson
Drop Constraint UQ_tblPerson

DELETE FROM tblPerson WHERE ID=8
INSERT INTO tblPerson VALUES (7,'john',1,34)
