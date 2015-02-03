select productid, orderqty from saleslt.SalesOrderDetail

--Using WHERE limits the results BEFORE grouping occurs
  select
	 ProductID, sum(OrderQty) TotalQty, count(ProductID) NbrOrders 
  from 
     saleslt.salesorderdetail
	   --UNCOMMENT ONE OF THESE TO DEMONSTRATE USING THE WHERE CLAUSE WITH GROUP BY
       -- where ProductID >706 and ProductID < 720
       -- where orderqty>5
  group by productid



  --Using HAVING limits the results AFTER grouping occurs
  select
	 ProductID, sum(OrderQty) TotalQty, count(ProductID) NbrOrders 
  from 
     saleslt.salesorderdetail
  group by productid
  having sum(OrderQty)>50