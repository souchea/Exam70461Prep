
-- Trigger Example


-- Create a table for our trigger
SELECT TOP 2 FirstName, LastName, CompanyName INTO TriggerTest
FROM SalesLT.Customer


-- Create a log table for our trigger to write to
CREATE TABLE InsertLog
(Login varchar(20),
 Date datetime)

SELECT * FROM TriggerTest

-- Create an Insert Trigger to log the insert action
CREATE TRIGGER NotifyOnInsert
ON TriggerTest
AFTER INSERT
AS 
INSERT INTO InsertLog
VALUES
(CURRENT_USER,GETDATE())
RAISERROR('Insert action has been logged...',16,10)

-- Insert a row to test the Trigger
INSERT INTO TriggerTest
VALUES
('Bob','Long','ABC, Inc.')

select * from InsertLog