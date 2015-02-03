

-- Using @@ROWCOUNT


--@@ROWCOUNT is a global variable
--Returns the number of rows affected by the last statement

--If the number of rows is more than 2 billion, use ROWCOUNT_BIG


--select * from testinsert where cola=13

BEGIN TRAN

  DELETE FROM TestInsert
  WHERE ColA < 13

  IF @@ROWCOUNT=1
   BEGIN
    COMMIT TRAN
    PRINT 'Committed...' 
   END 
    ELSE
   BEGIN
    ROLLBACK TRAN
    PRINT 'Transaction rolled back...'
   END 
 


  
 
 
