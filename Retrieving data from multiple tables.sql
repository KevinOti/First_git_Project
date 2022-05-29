use classicmodels;
-- INNER JOINS
--  Join using unique identifiers
select 
customers.customerNumber,
customerName,
orderNumber
from customers
join orders
	on orders.customerNumber=customers.customerNumber;
-- combining colums from multiple databases
-- on join ensure the unselected table is prefixed with the database name
-- SELF JOIN
select
e.employeeNumber,
e.firstName,
e.lastName,
m.firstName as Manager
from employees e
join employees m
	on e.reportsTo=m.employeeNumber;
-- JOINING MULTIPLES TABLES
select
c.customerName,
c.creditLimit,
p.amount,
p.paymentDate as `Due date`
from customers c
join orders o
	on o.customerNumber=c.customerNumber
join payments p
    on c.customerNumber=p.customerNumber
order by amount desc;
--
-- Tables with composite primary key
-- Where we have mutliple conditions both statements must be provided combined using the AND Operator
-- Implicit join syntax
select*
from customers c,orders o
where o.customerNumber=c.customerNumber;
-- OUTER JOIN
-- lEFT JOIN -all customers are returned regardless on the query
-- RIGHT JOIN - details are returned based on the first table called out
select count(*)
from orders o
left join customers c
	on o.customerNumber=c.customerNumber; -- produces 326 records
select count(*)
from orders o
right join customers c
	on o.customerNumber=c.customerNumber; -- produces 350 records
select count(*)
from orders;
select
e.employeeNumber,
e.firstName,
m.firstName as manager
from employees e
left join employees m
	on e.reportsTo=m.employeeNumber;
-- Using keyword is only applicable where the column nnames are the same 
select*
from customers c
join orders o
	using (customerNumber);
-- Natural join
-- Cross join - used to join all the records
select *
from customers c
cross join orders o
where c.customerNumber=242;
select
orderDate,
orderNumber,
'Current' as currentOrder
from orders
-- order by orderdate desc
where orderdate between "2005-05-01" and "2005-05-31"
-- Union combines tables together









	



