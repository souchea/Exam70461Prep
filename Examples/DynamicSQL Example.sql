
--DYNAMIC SQL EXAMPLE

--Passing variables into queries
DECLARE @T varchar(20);
--SET @T = 'Harris'
--SELECT TOP 5 FirstName, LastName FROM SalesLT.Customer WHERE LastName = @T

--WAIT! Can't pass object names as variables

-- SELECT TOP 5 FirstName, LastName FROM @T

SET @T = 'SalesLT.Customer';
EXECUTE('SELECT TOP 5 FirstName, LastName from ' + @T)


--One More Example...Get Creative!
DECLARE @Q varchar(60);
SET @Q='SELECT TOP 5 LastName, FirstName FROM SalesLT.Customer'
EXECUTE(@Q)

