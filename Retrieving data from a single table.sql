-- use classicmodels;
-- SELECT CLAUSE
select * 
from  customers
where customerNumber <150
order by customerName;
-- specifying the columns needed
select
	customerNumber,
	customerName,
	phone,
	city,
	country,
	creditLimit,
	creditLimit + 1000 as RevisedLimit -- limit revised by adding 1000
from customers;
select count(*) city
from customers;
-- WHERE CLAUSE
select *
from customers
where country="France";-- customers reside in france
select *
from customers
where creditLimit >"100000";
select*
from orders
where orderDate >= "2005/05/01"
order by orderDate;
-- OPERATORS AND  OR NOT
select*
from employees
where jobTitle ="sales rep" and officeCode ="1"; -- selecting data based on conditions
select*
from employees
where officeCode= 6 and reportsTo =1056;
select *
from employees
where reportsTo in(1002, 1056, 1088); -- using in operator
select *
from payments
where amount between 5000 and 70000    -- between operator
order by amount desc;
select*
from products
where productLine like 'm%';
select*
from products
where productLine regexp 'planes|cars'; -- Regular explressions
select *
from products
where productLine regexp '[pre]s' and productLine ='planes' -- combination of the last names characters
order by productLine;
-- MISSING VALUES
select *
from customers
where addressLine2 is null;
-- ORDER BY CLAUSE
select *
from customers
order by customerName;
select*
from customers
order by customerName, country;
-- LIMITING THE NUMBER OF RECORDS IN A QUERY









































