

--select * into mtl from saleslt.customer

select * from mtl

create view CustomerInfo
as
select FirstName, Lastname, CompanyName, EmailAddress
from mtl


select * from CustomerInfo



-- DEMO/TALK ABOUT NESTED VIEWS

create view LessInfo
as
select Lastname, FirstName 
from CustomerInfo


select * from LessInfo

create view ml
with encryption
as 
select firstname from saleslt.customer
