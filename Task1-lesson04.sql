--------------
-- Task 1: 
------------

-- 
-- Find the customer who has the maximum payment.
SELECT * FROM customers;
SELECT * FROM payments;
SELECT customerNumber FROM payments WHERE amount = (select max(amount) from payments);
SELECT * FROM customers where customerNumber = (SELECT customerNumber FROM payments WHERE amount = (select max(amount) from payments));

-- 
-- Find the maximum, minimum and average number of items in sale orders.
select * from orderdetails;
-- step 1 find the count of the items for each order -- inner query
select orderNumber, count(*) as itemCount from orderdetails group by orderNumber;
-- step 2 : use the resulting table of the query above as table
select * from (select orderNumber, count(*) as itemCount from orderdetails group by orderNumber) as items;
-- note that the inner query is used as ta temporary table and we name it as items
-- in the prev examples, we useed inner query

-- step 3 : aggredate functions in the table
select max(itemCount), min(itemCount), avg(itemCount) 
from (select orderNumber, count(*) as itemCount from orderdetails group by orderNumber) 
as items;


-- List all products whose buy prices are greater than the average buy price of all products.

select * from products;
-- step 1 get avagare buy price
select avg(buyPrice) from products;
-- step 2 get all elements from products that have a buyprice higher than avarage
select * from products where buyPrice > (select avg(buyPrice) from products);










