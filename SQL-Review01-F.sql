--------------------------------
-- FUNCTIONS
--------------------------------
-- SINGLE
-- Functions, single row Functions
SELECT lastName, firstName, length(lastName), lower(firstName),upper(lastName)
FROM employees
;

-- Functions, MULTIPLE row Functions
SELECT max(officeCode)
FROM employees;

SELECT MIN(officeCode)
FROM employees;

--------------------------------
-- GROUPING DATA 
-- GROUP BY clause
--------------------------------

SELECT status FROM orders ORDER BY status;

SELECT DISTINCT status FROM orders ORDER BY status;

-- GROUP BY clause returns unique occurences of status values
SELECT status FROM orders GROUP BY status;

SELECT * FROM orders;
-- COUNTING all the orders, GROUP BY is not used
SELECT COUNT(*) FROM orders;

-- COUNTING all the orders, GROUP BY is used
SELECT COUNT(*) FROM orders GROUP BY status;

-- using MySQL GROUP BY with aggregate functions
SELECT status,COUNT(*) 
FROM orders 
GROUP BY status;

-- using HAVING for filtering
SELECT status,COUNT(*) 
FROM orders 
GROUP BY status
HAVING COUNT(*) = 6;



SELECT status,COUNT(*)
FROM orders
WHERE customerNumber >= 300
GROUP BY status
HAVING COUNT(*) > 10;











