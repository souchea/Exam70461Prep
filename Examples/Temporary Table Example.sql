


-- Temporary Table Example


-- First, look at this example using a Table Variable
DECLARE @res table(ProductID int, TotalQty smallint, NbrOrders int, UnitPriceDiscount money)

INSERT INTO @res
SELECT
  ProductID, 
  sum(OrderQty), 
  count(ProductID), 
  avg(UnitPriceDiscount)
FROM
  SalesLT.SalesOrderDetail
GROUP BY ProductID

SELECT 
  * 
FROM 
  @res 
WHERE NbrOrders>3



-- Now, look at the same solution as a Temporary Table

SELECT  
  ProductID, 
  sum(OrderQty) TotalQty, 
  count(ProductID) NbrOrders, 
  avg(UnitPriceDiscount) Disc
INTO #res
FROM
  SalesLT.SalesOrderDetail
GROUP BY ProductID

SELECT 
  * 
FROM 
 #res 
WHERE NbrOrders > 3