--------------------------------
-- TASK 2
--------------------------------

-- Write a query that returns the customer name, country, 
-- state and credit limit of customers who locate in California, USA, 
-- and have the credit limit greater than 100K.

SELECT customerName,country,state,creditLimit FROM customers
WHERE country = 'USA' AND state = 'CA' AND creditLimit > 100000;


-- Get the customer name, country and creditLimit of customers who locate in the USA or France or Germany using OR
SELECT customerName,country, creditLimit 
FROM customers
WHERE country = 'USA' or country = 'France' OR country = 'Germany';


-- Get the customer name, country and creditLimit of customers who locate in the USA or France or Germany using IN
SELECT customerName,country, creditLimit 
FROM customers
WHERE country IN ('USA','France' , 'Germany');

-- Get the customer name, country and creditLimit of customers who DON'T locate in the USA or France or Germany
SELECT customerName,country, creditLimit 
FROM customers
WHERE country NOT IN ('USA','France' , 'Germany');


-- SELECT customerName,country, creditLimit 
-- FROM customers
-- WHERE NOT country = 'USA' AND NOT country = 'France' AND NOT country = 'Germany';



-- Use the BETWEEN operator to find products whose buy prices between  90 and 100

SELECT * FROM products WHERE buyPrice BETWEEN 90 AND 100;

-- Find all employees whose last names contain 'on'

SELECT * 
FROM employees 
WHERE lastName LIKE '%on%';


SELECT * 
FROM employees 
WHERE lastName 
LIKE '%a%t%';

-- Find customers who do not have a sales representative
SELECT * 
FROM customers
WHERE salesRepEmployeeNumber IS NULL;







