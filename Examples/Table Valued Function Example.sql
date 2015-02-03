
-- A Table-Valued Function is a function that returns a table...
-- It can be used as a table in a query
--
-- Think...a view with much more power

-- GOAL: Project OrderAmts for a ProductID if more Orders were taken. Set ProductID and additional Orders when called.

--select * from SalesLT.SalesOrderDetail


CREATE FUNCTION tvfTest(@ProdID int, @amt int)
RETURNS @ProdInfo TABLE( 
ProductID int,
OrderQty int,
UnitPrice money,
NewQty money)
AS
BEGIN
  INSERT INTO @ProdInfo(ProductID,OrderQty,UnitPrice,NewQty)
  SELECT sod.ProductID, sod.OrderQty, sod.UnitPrice, sod.UnitPriceDiscount
  FROM SalesLT.SalesOrderDetail sod
  WHERE sod.ProductID = @ProdID 

  UPDATE @ProdInfo
  Set NewQty=UnitPrice*(OrderQty+@amt)

  RETURN
  END


  select * from tvfTest(905,15)
