CREATE TABLE TestMTL
(
FirstName varchar(30) NOT NULL,
LastName varchar(30) NOT NULL,
City varchar(20) NOT NULL,
State char(2) NOT NULL
)

SELECT TOP 2 * FROM SalesLT.Customer

SELECT FirstName, MiddleName, LastName INTO TestSI
FROM SalesLT.Customer