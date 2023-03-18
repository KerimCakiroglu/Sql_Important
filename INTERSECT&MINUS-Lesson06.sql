-- INTERSECT and MINUS Operators are not supported on MYSQL but we can use JOINS to perform the same actions

##################
-- INTERSECT
##################
-- we can use DISTINCT and SUBQUERY to do the same function as INTERSECT in MYQSL
SELECT DISTINCT customerNumber 
FROM customers
WHERE customerNumber IN (SELECT customerNumber FROM orders);


##################
-- MINUS
##################
-- we can use Left Join to and where to do the same function as MINUS would
	-- we are keeping all records of customers, only matching records of orders, and we are filtering the occurences of the customerNumber on Orders
SELECT 
    c.customerNumber
FROM 
    customers AS c
LEFT JOIN orders AS o
    ON c.customerNumber = o.customerNumber
WHERE 
    o.customerNumber IS NULL; 