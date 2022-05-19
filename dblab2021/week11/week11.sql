call company.selectAllCustomers();
call company.getCustomersByCountry("Spain");

set @country = "UK";
select @country;
call company.getCustomerByCountry(@country);
select @country;

select * from Shippers;

select count(OrderID)
from Orders join Shippers on Orders.ShippersID=Shippers.ShipperID
where ShipperName = " Speedy Express";

set @orderCount = 0;
call company.getNumberOfOrderByShipper("Speedy Express",@orderCount);
select @orderCount;

set @beg = 100;
set @inc = 10;

call Counter(@beg,@inc);



use movie_db;
select * from movies;
select * from denormalized;

load data
infile "/var/lib/mysql-files/denormalized.csv"
#infile "/home/student/Desktop/denormalized.csv"
into table denormalized
columns terminated by ';';

show variables like "secure_file_priv";
insert into movies(movie_id, title, ranking, rating, year, votes,duration,oscars);
select distinctrow movie_id, title, ranking, rating, year, votes,duration,oscars;
select * from movies;


insert into countries(country_id,country_name)
select * distinctrow producer_country_id,producer_country_name
from denormalized;
union
select * distinctrow diretor_country_id,director_country_name
from denormalized;
union
select * distinctrow star_country_id,star_country_name
from denormalized;
order by produces_country_id;

select * from countries;

 