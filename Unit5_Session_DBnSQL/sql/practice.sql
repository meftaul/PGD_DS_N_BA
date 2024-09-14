-- show tables;
SHOW TABLES;

desc customers;

select * from customers limit 5;

select COUNT(DISTINCT country) as totalCountry from customers;

select CustomerName,City, Country  
from customers 
where Country = 'UK'
order by City desc, CustomerName asc;

select * 
from customers 
where PostalCode > 12209
or Country = 'Germany'
limit 5;

select COUNT(*) 
from products
where Price between 10 and 20

select AVG(Quantity) as sum
from order_details;

select * 
from customers
where City LIKE '____land'

SELECT * 
FROM customers
WHERE Country NOT IN ('Germany', 'France', 'UK');

select * 
from employees_1

select * 
from orders_1

select e.EmployeeID, e.FirstName,e.LastName, o.OrderID, o.OrderDate
from employees_1 as e
cross join orders_1 as o on e.EmployeeID = o.EmployeeID

show tables;

desc orders;
desc shippers;

select s.ShipperName, COUNT(o.OrderID) as count
from orders as o
left join shippers as s on o.ShipperID = s.ShipperID
group by s.ShipperName
having count < 70
-- select * from shippers as s;