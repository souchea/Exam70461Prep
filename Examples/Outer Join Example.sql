
-- OUTER JOINS


SELECT * FROM SalesLT.Customer
SELECT * FROM SalesLT.SalesOrderHeader

--Inner Join returns list of customers who have placed orders
SELECT FirstName, LastName, CompanyName,OrderDate, TotalDue
FROM SalesLT.Customer c
INNER JOIN SalesLT.SalesOrderHeader sod ON c.CustomerID=sod.CustomerID
ORDER BY TotalDue DESC

--Left Outer Join returns all names from the Customer table and SalesOrderDetail data on the matches
SELECT FirstName, LastName, CompanyName,OrderDate, TotalDue
FROM SalesLT.Customer c
LEFT OUTER JOIN SalesLT.SalesOrderHeader sod ON c.CustomerID=sod.CustomerID
ORDER BY TotalDue DESC