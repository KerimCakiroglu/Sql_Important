--------
-- Sorting data
-- ORDER BY clause
----------

SELECT contactLastName, contactFirstName 
FROM customers
ORDER BY contactLastName ASC; -- ASC is default (ASCENDING ORDER)

-- If you want to sort customer by the last name in descending order, you use the DESC
SELECT contactLastName, contactFirstName 
FROM customers
ORDER BY contactLastName DESC; -- DESCENDING ORDER

-- Using MySQL ORDER BY clause to sort values in multiple columns example
SELECT contactLastName, contactFirstName 
FROM customers
ORDER BY contactLastName DESC, contactFirstName ASC;


-- Using MySQL ORDER BY to sort a result set by an expression example
-- SELECT * FROM orderdetails;
SELECT * FROM orderdetails;
SELECT orderNumber,quantityOrdered*priceEach
FROM orderdetails
ORDER BY orderNumber*priceEach desc;

-- To make the query more readable, you can assign the expression in the SELECT clause a column alias and use that column alias in the ORDER BY clause
SELECT * FROM orderdetails;
SELECT orderNumber,quantityOrdered,priceEach,quantityOrdered*priceEach as subTotal
FROM orderdetails
ORDER BY subTotal desc;









