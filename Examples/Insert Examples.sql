

-- INSERT EXAMPLES
--

CREATE TABLE TestInsert
(ColA int,
 ColB int,
 ColC int)

 SELECT * FROM TestInsert


INSERT INTO TESTINSERT
  (ColA, ColB, ColC)  --List the columns that will received data
VALUES
  (1, 2, 3)           --List the values that will be inserted (Must match Column list positionally)


-- If data is being Inserted into each column, no column list is required
INSERT INTO TESTINSERT
VALUES
(4,5,6)

--NOTE! Data inserts are positional!!!
INSERT INTO TESTINSERT
VALUES
(6,5,4)

--To Insert data in a different order than the columns...
INSERT INTO TESTINSERT
(ColB, ColA, ColC)
VALUES
(8,7,9)

--To Insert Multiple Rows With One Insert Statement
INSERT INTO TESTINSERT
(ColA, ColB, ColC)
VALUES
(8,7,9),
(10,11,12),
(13,14,15)


--Data Types Must Be Compatible...BE CAREFUL!
INSERT INTO TESTINSERT
(ColA, ColB, ColC)
VALUES
(8,7,32.2)