show table status;
show tables;

create temporary table products_below_avg
select ProductID,ProductName,Price
from Products
where Price < (select avg(Price) from Products);
#limit 0;

drop table products_below_avg;

select * from products_below_avg;
