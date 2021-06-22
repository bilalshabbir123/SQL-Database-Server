/*****************CHECK CONSTRAINT***************/
/*
Check constraint is used to limit the range of the values, that can be enterred for
a column.

The general formula for adding check constraint in SQL Server:

ALTER TABLE {TABLE_NAME}
ADD CONSTRAINT {CONSTRAINT_NAME}CHECK(BOOLEAN_EXPRESSION)

if the BOOLEAN_EXPRESSION returns true, then the CHECK constraint allows the value,
otherwise it doesn't. Since, AGE is a nullable column, it's possible to pass null 
for this column, when inserting a row. When you pass NULL for the AGE column, the boolean
expression evaluates to UNKNOWN, and allows the value.

To drop the CHECK constraint:

ALTER TABLE tblPerson
DROP CONSTRAINT CK_tblPerson_Age
*/

Select*from tblGender;
select*from tblPerson;

INSERT INTO tblGender Values(1,'Male');
INSERT INTO tblGender Values(2,'Female');
INSERT INTO tblGender VALUES(3,'UnKnown');

UPDATE tblPerson SET GenderID=3 where ID=2;
UPDATE tblPerson SET GenderID=2 wwherehere ID=4;
UPDATE tblPerson SET GenderID=3  ID=5;

ALTER TABLE tblPerson ADD Age int NULL

INSERT INTO tblPerson VALUES(7,'John','2',-455);
INSERT INTO tblPerson VALUES(6,'John','2',15);
INSERT INTO tblPerson VALUES(8,'John','2',NULL);
DELETE FROM tblPerson WHERE ID=6;
Alter Table tblPerson DROP Constraint [CK_tblPerson]
SELECT*FROM tblPerson;
DELETE FROM tblPerson WHERE ID=7;

ALTER TABLE tblPerson
ADD constraint CK_tblPerson_Age CHECK (Age>0 AND Age<150);