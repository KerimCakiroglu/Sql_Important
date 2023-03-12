--------
-- Filtering Data 
-- Where clause
----------
-- Let's use the employees table from the sample database for the demonstration.
-- Using MySQL WHERE clause with equal operator example
SELECT lastName,firstName,jobTitle 
FROM employees
WHERE jobTitle = 'Sales Rep';

-- using MySQL where clause with AND operator
SELECT lastName,firstName,jobTitle ,officeCode
FROM employees
WHERE jobTitle = 'Sales Rep' and officeCode = 1;

-- using MySQL where clause with OR operator
SELECT lastName,firstName,jobTitle ,officeCode
FROM employees
WHERE jobTitle = 'Sales Rep' or officeCode = 1;


-- using MySQL BETWEEN clause with AND operator 
SELECT lastName,firstName,jobTitle ,officeCode
FROM employees
WHERE  officeCode BETWEEN 1 AND 3
ORDER BY officeCode;


-- using MySQL IN operator for specific values  
SELECT lastName,firstName,jobTitle ,officeCode
FROM employees
WHERE  officeCode IN (1,3,5,7)
ORDER BY officeCode;

-- Using MySQL WHERE with the LIKE operator example
SELECT lastName,firstName
FROM employees
WHERE  lastName LIKE '%son'
ORDER BY lastName
;

-- using MySQL LIKE with underscore(_) wildcard examples
SELECT lastName,firstName
FROM employees
WHERE  firstName LIKE '___ry';

-- using MySQL LIKE with underscore(_) that  have only have 4 letters in their name
SELECT lastName,firstName
FROM employees
WHERE  firstName LIKE '_____'; -- 4 underscores

-- WHERE ... IS NULL
-- Using MySQL WHERE clause with the IS NULL operator
SELECT lastName,firstName,reportsTo
FROM employees
WHERE reportsTo IS NULL;

-- COMPARISON
-- Using MySQL WHERE clause with comparison operators
SELECT lastName,firstName,officeCode
FROM employees
WHERE officeCode > 5;

SELECT lastName,firstName,officeCode
FROM employees
WHERE officeCode <= 3;

-- ! NOT OPERATOR
SELECT lastName,firstName,officeCode
FROM employees
WHERE officeCode != 3;


SELECT *
FROM employees
WHERE jobTitle != 'Sales Rep'; -- is different from sales repair

SELECT *
FROM employees
WHERE jobTitle = 'Sales Rep';



