/*************** Clustered and Non-Clustered Index ********************/
/* 
1. Clustered 
2. Non-Clustered
3. Unique
4. Filtered
5. XML
6. FUll Text
7. Spatial
8. Columnstore
9. Index with included columns
10. Index on computed columns


Clustered Index determines the physical order of data in a table.

A clustered index is analogous to a telephone directoey, where the data is arranged 
by the last name.
We just learnt that a table can have only one clustered index. However, the index can contain
multiple columns (a composite index) like the way a talephone 
directory is oragnized by the last name and first name.

For this reason,
a table can have only one clustered index
a non clustered index can have multiple columns in that which way is known as composite non
clustered index..


Non clustered Index

A non clustered index is analogous to an index in a textbook. The data is stored in one place,
the index is another place.
The index will have pointers to the storage location of the data.

Since, the non clustered index is stored sparately from the actual data, a table can have 
more than one non clustered index, just like how a book can have an index by Chapters
at the beginning and another
index by common terms at the end.

Only one cludtered index per table, where as you can have more than one 
non clustered indexx.

Clustered index is faster than a non clustered index, because, the clustered index has to refer back 
to the table, if the selected column is not present in the index.

3. Clustered index determines the storage order of rows in the table, and hence doesn't
rquire additional disk space, but where as a Non Clustered index is stored separately 
from the table, additional space is required.
*/
Use Sample 
go

Create Clustered Index IX_tblEmployee_Gender_Salary
ON tblEMployee(Gender DESC, Salary ASC)

create NONClustered INDEX IX_tblEMployeee_Name
ON tblEMPloyee(Name)


