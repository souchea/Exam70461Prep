

-- Working with GUIDs

SELECT newid()


--Create a test table
CREATE TABLE GUIDTest
(
ID uniqueidentifier DEFAULT NEWID(),
LastName varchar(25),
FirstName varchar(25)
)

--Insert a row and get a new GUID generated
INSERT INTO GUIDTest
(LastName, FirstName)
VALUES
('Long','Mark')

SELECT * FROM GUIDTest


--Drop the table 
DROP TABLE GUIDTest


--Create the GUIDTest table again
--this time using NEWSEQUENTIALID()
CREATE TABLE GUIDTest
(
ID uniqueidentifier DEFAULT NEWSEQUENTIALID(),
LastName varchar(25),
FirstName varchar(25)
)

--Insert a couple of rows to generate NEWSEQUENTIALIDs
INSERT INTO GUIDTest
(LastName, FirstName)
VALUES
('Smith','Joe'),
('Long','Bob')

SELECT * FROM GUIDtest


