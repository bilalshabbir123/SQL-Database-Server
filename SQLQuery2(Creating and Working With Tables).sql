/*
The aim of this session is to create tblPerson and tblGender tables and establish
primary key and foreign key constraints.

In SQL Server, tables can be created graphically using SQL Server Management Studio(SSMS)
or using a query. Foreign key references can be added graphically using SSMS or using a query.

Alter table ForeignKeyTable add constarint ForeigKeyTable_ForeignKeyCOlumn_FK
FOREIGN KEY (ForeignKeyColumn) references PrimaryKeyTable(PrimaryKeyColumn)

Foreign Keys are used to enforce database integrity. In layman's terms, A foreign key
in one table points to a primary key in another table. The foreign key constraint
prevents invalid data from being inserted into the foreign key column.
The values that you enter into the foreign key column,
has to be one of the values contained in the table it points to.

*/
CREATE TABLE tblPerson(
ID int NOT NULL,
Name nvarchar(30) NOT NULL,
GenderID int
);
SELECT* FROM tblPerson

CREATE Table tblGender(
ID int NOT NULL Primary Key,
Gender nvarchar(50) NOT NULL
);
SELECT*FROM tblGender
SELECT*FROM tblPerson

Alter Table tblPerson add constraint tblPerson_GenderID_FK
Foreign Key (GenderID) references tblGender (ID)
