--Using MERGE

-- Create the first table to use in the MERGE
SELECT TOP 5 AddressLine1, City, StateProvince, PostalCode Into ADDR1
FROM SalesLT.Address

SELECT * FROM ADDR1

--Create the second table to use in the MERGE
SELECT AddressLine1, City, StateProvince, PostalCode Into ADDR2
FROM SalesLT.Address
ORDER BY AddressLine1
OFFSET 3 ROWS FETCH NEXT 3 ROWS ONLY 

--Compare the two new tables
SELECT * FROM ADDR2

SELECT * FROM ADDR1


--Now, lets MERGE the data into the ADDR2 table...
-- Delete addresses from California 
--Add rows that are in ADDR1 but not in ADDR2 
-- Update rows with Joliet as City, add ** onto the name

MERGE ADDR2 AS a2
USING (SELECT AddressLine1, City, StateProvince, PostalCode from ADDR1) as a1
ON  a2.AddressLine1 = a1.AddressLine1
WHEN MATCHED AND a2.StateProvince='California' THEN DELETE
WHEN MATCHED AND a2.City='Joliet' THEN UPDATE SET a2.City='Joilet**'
WHEN NOT MATCHED THEN 
INSERT(AddressLine1, City, StateProvince, PostalCode)
VALUES(a1.AddressLine1, a1.City, a1.StateProvince, a1.PostalCode);
GO

SELECT * FROM ADDR2

drop table addr1, addr2