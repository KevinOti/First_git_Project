-- Numeric functions
select round(7.75,1); -- returns value with one decimal place
select truncate(200001.999,3);
select ceiling(4.5); -- returns smallest number that equals or greater than the number in the parentheses
select floor(6.2); -- returns the largest number that equals or greater than the number in the parentheses
select abs(-10.44); -- returns positive values
-- String function
select upper('kevin'); -- returns values in caps
select ltrim('   kevin'); -- removes any trailing spaces
select substring('Kevin Otieno',3,4);-- returns characters from position 3 and 4 characters in total
-- Working with date and time
select now(); -- returns the current date and time
select year(now()); -- returns current year
select dayname(now()); -- returns current day of the week
select extract(year from now()); -- extract the current year from the now formula
select *
from payments
where year(paymentDate) = 2005;-- filters data for only 2005
-- Formatting dates
select date_format(now(),'%y'); -- date format string
select date_add(now(), interval 1 year); -- returns next years date()
select
	ifnull(addressLine2,'Not assigned') as addressLine
from customers -- assigning a comment where address line is null


 
