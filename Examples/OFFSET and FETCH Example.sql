

SELECT * FROM SalesLT.SalesOrderDetail

SELECT 
  ProductID, OrderQty 
FROM 
  SalesLT.SalesOrderDetail
WHERE 
  ProductID ='707'
-- adding the next line skips the first 5 rows and returns only the last 2
ORDER BY 
  ProductID OFFSET 5 ROWS

-- Select all 7 rows where ProductID=707
SELECT ProductID, OrderQty FROM SalesLT.SalesOrderDetail
WHERE ProductID ='707'

-- Select the first 3 rows
SELECT ProductID, OrderQty FROM SalesLT.SalesOrderDetail
WHERE ProductID ='707'
order by ProductID OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY

-- Skip the first 3 rows and return the next 3
SELECT ProductID, OrderQty FROM SalesLT.SalesOrderDetail
WHERE ProductID ='707'
ORDER BY ProductID OFFSET 3 ROWS FETCH NEXT 3 ROWS ONLY


-- Skip the first 6 rows and return the next 3
SELECT ProductID, OrderQty FROM SalesLT.SalesOrderDetail
WHERE ProductID ='707'
ORDER BY ProductID OFFSET 6 ROWS FETCH NEXT 3 ROWS ONLY



