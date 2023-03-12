------------
-- Task 2: 
------------



-- 1. Verify how many customers don't have any state assigned
select count(*) from customers where state is null;


-- 2. Verify how many employees are "Sales Rep"

select jobTitle,count(*) from employees where jobTitle = 'Sales Rep';

select jobTitle,count(*) from employees group by jobTitle;

-- 3. Display latest and earliest order date from orders
select * from orders;
select  min(orderDate),max(orderDate) from orders ;
-- As means Alias 
select  min(orderDate) as Earliest ,max(orderDate) as Lastest from orders ;


-- 4. How many customers last name starts with S
select * from customers;

select count(*) from customers where contactLastName like 'S%';


-- 5. What is the total amount of "quantityInStock" of planes in the products table?
select * from products;
select productLine,sum(quantityInStock) as Total from products where productLine ='Planes';






