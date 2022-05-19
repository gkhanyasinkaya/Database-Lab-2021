select * from Customers;
update Customers set Country =replace(Country,'\n','');
update Customers set City =replace(City,'\n','');

create view mexicanCustomers as
select CustomerID,CustomerName,ContactName
from Customers
where Country="Mexico";
 
select * from mexicanCustomers;

select * 
from mexicanCustomers join Orders on mexicanCustomers.CustomerID=Orders.CustomerID;

create view productsbelowavg as
select ProductID, ProductName, Price
from Products
where Price < (select avg(Price) from Products);

delete from OrderDetails where ProductID=5;
truncate OrderDetails;

delete from Customers;
delete from Orders;

drop table Customers;

