

select top 10 * into mtl from saleslt.customer

select * from mtl

alter table mtl --WITH NOCHECK
ADD CONSTRAINT UC_FirstLastNames UNIQUE(FirstName,LastName)


drop table mtl