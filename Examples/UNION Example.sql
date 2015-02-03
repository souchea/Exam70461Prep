

--Perform a couple of SELECT INTO's to load two tables (CUST1 and CUST2) with First and Last Names



SELECT 
  *
FROM
  Cust1

  SELECT 
  *
FROM
  Cust2


SELECT
  FirstName, LastName, EmailAddress
FROM
  Cust1
UNION ALL -- Using the ALL keyword will include duplicate records from both queries
SELECT FirstName, LastName, EmailAddress
FROM
  Cust2
ORDER BY LastName, FirstName



-- Column datatypes must be compatible...column names can be different
SELECT
  FirstName, LastName, EmailAddress
FROM
  Cust1
UNION ALL -- Using the ALL keyword will include duplicate records from both queries
SELECT Name, ProductNumber, Color
FROM
 SalesLT.Product
ORDER BY LastName, FirstName