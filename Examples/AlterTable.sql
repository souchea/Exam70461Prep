

select * into mtl from saleslt.customer

ALTER TABLE mtl
  ADD Country varchar(15) NULL

ALTER TABLE mtl
  DROP COLUMN City

ALTER TABLE mtl
  ALTER COLUMN Country varchar(20) NOT NULL
