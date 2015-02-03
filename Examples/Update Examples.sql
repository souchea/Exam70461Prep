

-- UPDATE EXAMPLES
-- Use the TestInsert table and data from the INSERT examples

SELECT * FROM TestInsert


UPDATE TestInsert
SET ColA = 3
WHERE ColA = 6
-- This will update ColA on every row where ColA =3



UPDATE TestInsert
SET ColB = 15
WHERE ColB > 10
-- This will update ColB on every row where ColB > 10 with 15 where


UPDATE TestInsert
SET ColA = 2
-- This will update ColA on EVERY ROW in the table


UPDATE TestInsert
Set ColA = 22
WHERE ColA = 11 AND ColB=10 AND ColC=12
-- Make sure you identify the unique row you want to update
