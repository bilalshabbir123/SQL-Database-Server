 /************** Views ****************/
/*
A view is nothing more than a saved SQL query. 
A view can also be considered as a virtual table.

Advantages of Views
1.Views can be used to reduce the complexity of the database schema.
2.Views can be used as a mechanism to implement row and column level security.
3.Views can be used to present aggregate data and hide detailed data.

If a view is based on multiple tables, and if you update the view, it may
not update the underlying base tables correctly. To correctly update a view, that is based
on multiple table, INSTEAD OF triggers are used.

******** Indexed Views
A standard or Non-indexed view, is just a stored SQL query. 
When, we try to retrieve data from the view, the data is actually retrieved from the underlying base tables.
So, a view is just a virtual table it does not store any data by default.
However, when you create an index, on a view, the view gets materialized.
This means, the view is now, capable of storing data.

1.Guidelines for creating Indexed Views

1.The view should be created with SchemaBinding option.
2.If an aggregate function in the select LIST, references an expression, 
and if there is a possibility for that expression to become NULL, then, a replacement value should be specified.
3.If Group BY is specified, the view select list must contain a COUNT_BIG(*) expression.
4.The base tables in the view, should be referenced with 2 part name.

View Limitations
You cannot pass parameters to a view.
Table valued functions are an excellent replacement for parameterized views.
Rules and defaults cannot be associated with views.
The order by caluse is invalid in view unless TOP or FOR XML is also specified.
Views cannot be based on temporary tables.

*/
Use Sample
Go

SELECT*FROM tblEmployee

Create View vWEmployee
as
Select ID,Name,Gender FROM tblEmployee

select *from  vWEmployee
Update vWEmployee Set Name='Mike' Where ID=5