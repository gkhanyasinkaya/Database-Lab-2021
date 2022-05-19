select * from Shippers;

select ShipperName, count(OrderID)
from Orders join Shippers on Orders.ShipperID=Shippers.ShipperID
group by Orders.ShipperID;

select CustomerName,OrderID
from Customers join Orders on Customers.CustomerID=Orders.CustomerID
order by OrderID;

select CustomerName,OrderID
from Customers left join Orders on Customers.CustomerID=Orders.CustomerID
order by OrderID;

select FirstName, LastName,OrderID
from Orders right join Employees on Orders.EmployeeID=Employees.EmployeeID
order by OrderID;