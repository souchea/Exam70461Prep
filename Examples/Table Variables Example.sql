
-- This query returns data grouped by ProductID
SELECT
  ProductID, 
  sum(OrderQty) TotalQty, 
  count(ProductID) NbrOrders, 
  avg(UnitPriceDiscount) 
FROM
  SalesLT.SalesOrderDetail
GROUP BY ProductID

-- In my stored proc, I need to generate this data 
-- and the re-query it based on certain conditions

--SOLUTION... Load the results of the GROUP BY query
--into a TABLE VARIABLE

DECLARE @res table(ProductID int, TotalQty smallint, NbrOders int, UnitPriceDiscount money)

INSERT INTO @res
SELECT
  ProductID, 
  sum(OrderQty) TotalQty, 
  count(ProductID) NbrOrders, 
  avg(UnitPriceDiscount) 
FROM
  SalesLT.SalesOrderDetail
GROUP BY ProductID

SELECT 
  * 
FROM 
  @res 
WHERE UnitPriceDiscount > .1
