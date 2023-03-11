
---------------
-- Task 1: 
-------------

USE classicmodels;

# 1. How to display information about customers who do not have postal code?
select customerName, postalCode from customers where postalCode is null;

# 2. How to find employees first name, last name whose job title is "Sales Rep" and display first names in alphabetical order.
select firstName,lastName,jobTitle 
from employees 
where jobTitle = "Sales Rep" 
order by firstName asc;

# 3. How to display about all offices that have address line 2. We want to see offices sorted by city from Z-A?
select * from offices
where addressLine2 is not null
order by city desc;









