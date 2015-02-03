

-- USE SELECT INTO TO CREATE TWO NEW TABLES WITH DATA FROM THE CUSTOMER TABLE
-- NOTE THAT THE DATA OVERLAPS...LASTNAME E'S AND F'S ARE IN BOTH TABLES

SELECT 
  FirstName, LastName, EmailAddress 
INTO CustTest1
FROM 
  SalesLT.Customer
WHERE LastName like '[A-F]%'

SELECT 
  FirstName, LastName, EmailAddress 
INTO CustTest2
FROM 
  SalesLT.Customer
WHERE LastName like '[E-Z]%'



SELECT
  FirstName, LastName, EmailAddress
FROM
  CustTest1
INTERSECT
SELECT 
  FirstName, LastName, EmailAddress
FROM
  CustTest2
  ORDER BY LastName, FirstName