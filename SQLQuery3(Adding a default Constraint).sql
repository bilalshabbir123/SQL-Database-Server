/**********Default COnstraint***************/
/*
A column default can be specified using Default constraint.
The DEFAULT constraint is used to insert a default value into a column.
The default value will be added to all new records,
if no other value is specified including NULL

Altering an existing column to add a default constraint:

ALTER TABLE {TABLE_NAME}
ADD CONSTRAINT {CONSTRAINT_NAME}
DEFAULT {DEFAULT_VALUE} FOR {EXISTING_COLUMN_NAME}

Adding a new column, with default value, to an existing table:

ALTER TABLE {TABLE_NAME}
ADD{COLUMN_NAME}{DATA_TYPE}{NULL | NOT NULL}
CONSTRAINT {CONSTRAINT_NAME} DEFAULT {DEFAULT_VALUE}

Dropping a constraint:
ALTER TABLE{TABLE_NAME}
DROP CONSTRAINT {CONSTRAINT_NAME}
*/

USE [Sample]
go
SELECT*FROM tblGender;
SELECT*FROM tblPerson;
INSERT INTO tblGender VALUES(3,'Unknown');
INSERT INTO tblPerson (ID,Name) VALUES (5,'Stella');


ALTER TABLE tblPerson
ADD CONSTRAINT DF_tblGender_GenderID
DEFAULT 3 FOR GenderID

ALTER TABLE tblPerson
DROP CONSTRAINT DF_tblGender_GenderID
