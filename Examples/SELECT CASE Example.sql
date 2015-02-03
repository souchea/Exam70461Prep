

select ProductID, sum(OrderQty) TotalNbrOrders, sum(LineTotal)TotalOrdersAmt from saleslt.salesorderdetail
group by productID


SELECT ProductID, LineTotal OrderTotal, 'Price' = 
CASE
	WHEN LineTotal<100 THEN 'Level1'
	WHEN LineTotal>100 and LineTotal<200 THEN 'Level 2'
	WHEN LineTotal>200 and LineTotal<300 THEN 'Level 3'
	ELSE 'Level 4'
END
FROM SalesLT.SalesOrderDetail
ORDER BY ProductID



SELECT ProductID, sum(LineTotal) OrderTotal, 'Price' = 
CASE
	WHEN sum(LineTotal)<100 THEN 'Level1'
	WHEN sum(LineTotal)>100 and sum(LineTotal)<200 THEN 'Level 2'
	WHEN sum(LineTotal)>200 and sum(LineTotal)<300 THEN 'Level 3'
	ELSE 'Level 4'
END
FROM SalesLT.SalesOrderDetail
group by ProductID
ORDER BY ProductID



