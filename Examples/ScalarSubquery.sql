-- Scalar Subquery Example

-- Get a list of all ProductID orders whose LineTotal is greater than the average LineTotal amount
-- This identifies our high volume clients

  SELECT 
	SalesOrderDetailID, 
	ProductID, 
	LineTotal
  FROM 
    SalesLT.SalesOrderDetail
  WHERE 
    LineTotal > (SELECT AVG(LineTotal) FROM SalesLT.SalesOrderDetail) 


