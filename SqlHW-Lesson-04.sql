--  Display customers without any orders 
-- (Hint: Join two tables and use where condition. The information in orders table should be null)

-- DENEMELER
-- SELECT * FROM customers as l inner join orders as r on l.customerNumber != r.customerNumber;
-- SELECT customerNumber FROM orders order by customerNumber;
-- SELECT * FROM customers where customerNumber != (SELECT customerNumber FROM orders order by customerNumber);

SELECT * FROM customers
LEFT JOIN orders 
ON customers.customerNumber = orders.customerNumber
WHERE orderNumber IS NULL;