#################
-- TASK 2
#################
-- Write a query to return order number, order status and total
-- sales from the orders and orderdetails tables and group by orderNumber


select * from orders;
select * from orderdetails;

-- step 1 find total for each order

select orderNumber, sum(quantityOrdered * priceEach) as total from orderdetails group by orderNumber;

-- step 2 get info from orders table as well
select orderNumber, status from orders;


-- step 3 join those tables
select o.orderNumber,o.status, o.shippedDate, sum(od.quantityOrdered*od.priceEach) as total 
from orderdetails as od 
inner join orders as o 
on od.orderNumber = o.orderNumber 
group by o.orderNumber;