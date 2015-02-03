-- Multi-Valued Subquery Example

-- A subquery returns multiple values
--uses IN in the where clause

SELECT 
  Name,
  ProductNumber,
  Color,
  Size
FROM
  SalesLT.Product
WHERE Name IN (SELECT Name FROM SalesLT.Product WHERE Size = 'L')