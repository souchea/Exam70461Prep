/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [SalesOrderID]
      ,[SalesOrderDetailID]
      ,[OrderQty]
      ,[ProductID]
      ,[UnitPrice]
      ,[UnitPriceDiscount]
      ,[LineTotal]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorksLT2012].[SalesLT].[SalesOrderDetail]

 
  --Query for each individual order for a particular ProductID
  select Productid, orderqty from saleslt.salesorderdetail
  where productid='707'

   --Query to learn total oders for each ProductID
  select ProductID, sum(OrderQty) from saleslt.salesorderdetail
  -- can include where clause to limit which productid's are returned --->  where productid='707'
  group by productid

   --Query to learn total oder quantity for each ProductID and the number of orders placed
  select ProductID, sum(OrderQty) TotalQty, count(ProductID) NbrOrders from saleslt.salesorderdetail
  group by productid

  --Now add the Avg Products per order to the results
   select ProductID, sum(OrderQty) TotalQty, count(ProductID) NbrOrders, (sum(OrderQty)/count(ProductID)) AvgPerOrder
   -- could have done this -->    ,avg(orderqty)
from saleslt.salesorderdetail
  group by productid


