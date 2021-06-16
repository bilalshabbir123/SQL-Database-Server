/*
*******Creating and Altering a Database********
A SQL server database can be created , altered and dropped
1. graphically using SQL Server Management Studion(SSMS) or
2.Using a Query

To create the database using a Query
CREATE DATABASE DatabaseName

Whether, you create a database graphically using the designer or, using a query,
following 2 files gets generated

.MDF file-Data File (Contains actual data)
.LDF file -Transaction Log file(Used to recover the database)

To alter a database, once it's created

Alter database DatabaseName Modify Name=NewDatabaseName

Alternatively, you can also use system stored procedure

Execute sp_renameDB 'OldDatabasename','NewDatabasename'

********Deleting or Dropping a database*************
To Delete or Drop a database
DROP Database DatabaseThatyouWantToDrop

Dropping a database, if it is currently in use. You get an error stating-
Cannot drop database "NewDatabaseName" because it is currently in use.

So, if other users are connected, you need to put the database in single user mode
and then drop the database.

Alter Database DatabaseName Set SINGLE_USER With Rollback Immediate

With Rollback immediate option, will rollback all incomplete tranction and closes
the connection to the datbase.

Note: System database cannot be dropped.

*/

CREATE Database Sample2
USE Sample2
ALter Database Sample2 Modify Name=Sample3
sp_renameDB 'Sample3','Sample4'
Drop Database Sample4

CREATE Database sample2;
USE Sample2;
Alter Database Sample2 Modify Nmae=Sample3;
sp_rename 'Sample3','Sample2'

sp_rename 'Sample4','Sample2'