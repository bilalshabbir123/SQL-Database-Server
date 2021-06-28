/************* ********************/
/*
Indexes are used by queries to find data from tables quickly.
Indexes are created on table and views.
Index on a table or a view, is very similar to an index that we find in a book.

If you don't have an index, and I ask you to located a specific chapter in the book,
you will have to look at every page starting from the first page of the book.

On the other hand, if you have the index, you lookup the page number of the chapter
in  the index, and then directly go to that page number to locate the chapter.

obviously, the book index is helping to drastically reduce the time it takes
to find the chapter.

in a similar way, tables and View indexes, can help the query to find data quickly.

In fact, the existence of the right Indexes can drastically improve the performance
of the query. If there is no index to help the query, then the query engine, checks 
every row in the table from  the begining to the end.
This is called as Table Scan. table scan is bad for performance.


*/

Use Sample
Go
Select*from tblEmployee
Create Index IX_tblEmployee_Salary
ON tblEMployee (Salary ASC)
Select Name,Salary from tblEmployee where Salary>3500
sp_Helpindex tblEmployee

