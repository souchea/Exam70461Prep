
SELECT * FROM SalesLT.SalesOrderDetail

-- Need to display a rating for each OrderQty
-- Show 'Low' if less than 3, 'High' if 3 or higher


--Solution: Create a scalar function

alter function TestFunc
(@data int)
RETURNS char(4)
as
BEGIN
Declare @out char(4)
  If @data<3
     set @out='Low'
	 else
	 set @out='High'

  RETURN @out
END

-- Use the new function to generate a value for OrderQty on each row returned
select OrderQty,dbo.TestFunc(OrderQty) Rating from SalesLT.SalesOrderDetail