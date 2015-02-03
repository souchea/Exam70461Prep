
-- Derived Tables


SELECT * FROM SalesLT.salesorderdetail

SELECT SalesOrderID,ProductID FROM
  (SELECT SalesOrderID, ProductID FROM SalesLT.salesorderdetail WHERE unitprice>200) AS ProdInfo
