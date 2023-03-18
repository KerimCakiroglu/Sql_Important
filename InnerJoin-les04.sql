
#######
--  INNER JOIN
########




SELECT * FROM orders WHERE orderNumber < 10103;
select * FROM orderdetails;

select * FROM orderdetails WHERE orderNumber < 10103;



SELECT orders.*,od.* FROM orders 
inner join orderdetails AS od
ON  orders.orderNumber = od.orderNumber
WHERE orders.orderNumber < 10103;

SELECT orders.orderNumber,orders.orderDate,orders.status,od.quantityOrdered, od.priceEach FROM orders 
inner join orderdetails AS od
ON  orders.orderNumber = od.orderNumber
WHERE orders.orderNumber < 10103;







