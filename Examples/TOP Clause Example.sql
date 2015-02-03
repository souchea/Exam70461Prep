

select * from saleslt.salesorderdetail

-- Returns the top 5 rows

select top 5 ProductID,OrderQty from saleslt.salesorderdetail
where ProductID='707'
order by ProductID

-- Returns 7 rows because there were more that matched the last row
select top 5 with ties ProductID,OrderQty from saleslt.salesorderdetail
where ProductID='707'
order by ProductID

-- 
select top 50 percent ProductID,OrderQty from saleslt.salesorderdetail
where ProductID='707'
order by ProductID