/******************** Temporary Tables *******************/
/*

Temporary Tables are very similar to the permanent tables.
Permanent Tables get created in the database you specify and remain in the database
permanently , until you delete (drop) them. On the other hand, temporary tables get
created in the TempDB and are automatically deleted, When they are no longer used.

Different Types of Temporary Tables
1.Local Temporary Tables
2.Global Temporary Tables

A local temporary table is available, only for the connection that has created the table.
A local temporary table is automatically dropped, when the connection that has created the it, is closed.
If the user wants to explicitly drop the temporary table,
he can do using Drop Table #PersonDetails

If the temporary table, is created inside the stored procedure, it get's dropped automatically
upon the completion of stored procedure execution.

IT is also possible for different connections, to create a local temporary table 
with the same name.
For Example User1 and user2, both can create a local temporary table
with the same name #Persondetails.

To create a global temporary Table, prefix the name of the table
with 2 pound (##) symbols.
Create table ##EMployeeDetails(ID int, Name nvarchar(20))

Global Temporay tables are visible to all the connections of 
the sql server and are only destroyed when the last connection of referencing the table
is closed.

Multiple users, across multiple connections
can have local temporary tables with the same name, but a global temp table in the object 
explorer, there will be no random numbers suffixed at the end of the table name.

Difference between Local and temporary Tables:

1.local Temp tables are prefixed with single pound(#) symbol, where as global
temp tables are prefixed with 2 pound (##) symbols.

2. Sql Server appends some random numbers at the end of the local temp
table name, where this is not done for global temp table names.

3.Local temporary tables are only visible to that session of the SQL Server which has
created it, where as Global Temporary Tables are visible to all the SQL Server sessions.

4. Local Temporary Tables are automatically dropped, when the session
that created the temporary tables is closed, where as Global Temporary Tables are destroyed
when the last connection that is referencing the global temp table is closed.



*/
Use Sample
go
Create Procedure spCreatelocaltemtable
as
Begin
Create table #PersonDetail(ID int, Name nvarchar(20))
Insert INTO #PersonDetail Values (1,'Mike')
Insert INTO #PersonDetail Values (2,'John')

Select*FROM #PersonDetail
End
Execute spCreatelocaltemtable

Create table ##Pers(ID int, Name nvarchar(20))
Insert INTO ##Pers Values (1,'Mike')
Insert INTO ##Pers Values (2,'John')

Select *from ##Pers