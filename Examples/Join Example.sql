
--JOIN EXAMPLE
select * from saleslt.customer

select * from saleslt.customeraddress

select 
  c.CustomerID,
  c.FirstName, 
  c.LastName, 
  c.CompanyName, 
  ca.AddressType 
from 
  saleslt.customer c join saleslt.customeraddress ca on c.CustomerID=ca.CustomerID 
