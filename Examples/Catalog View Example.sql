
-- Using Catalog Views

SELECT * from sys.objects
WHERE type_desc = 'User_Table'


select distinct type_desc from sys.objects

-- Check the existence of an object
IF EXISTS(SELECT Name FROM sys.objects WHERE type_desc='User_Table' AND name='Customer')
 PRINT 'Object exists...'
 ELSE
 Print 'Object does not exist...'