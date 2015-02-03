
-- Stored Procedure Return Code
-- Always returns 0 on success


ALTER PROC mlRC
as
SELECT * FROM SalesLT.Customer

-- Execute the stored proc and check for success or failure
Declare @err int
EXEC @err= mlRC
If @err=0
 Print 'Success!'
   else
 Print 'Failure...'
