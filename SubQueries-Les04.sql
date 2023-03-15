SELECT * FROM payments;


-- HOW can we get max amount"

##################
-- INNER JOIN
#################

-- this returns the highest amount, and the first record for customerNumber
select customerNumber ,max(amount) from payments;

-- OUTER QUERY
-- this is how i can get the info for the customer with the highest amount
SELECT * FROM payments WHERE amount = 120166.58;


-- INNER QUERY
-- how can i get the info need to filter
SELECT max(amount) from payments;

-- SUBQUERY :
SELECT * FROM payments WHERE amount =(SELECT max(amount) from payments);

-- How do we get the info about the average payment from the payment table?

-- INNER QUERY
-- INNER QUERY: first we need to write: how we get the average value?
SELECT avg(amount) from payments;

-- OUTER QUERY: now we select what we want to show on the table	
		-- we want to see all records with an amount higher than the average
SELECT * FROM payments WHERE amount > (SELECT avg(amount) from payments);


-- find all employees who work in office located in the USA


SELECT * FROM employees;
SELECT * FROM offices;

-- offices located in the USA
SELECT officeCode FROM offices WHERE country = 'USA';

-- employees working in a set of offices: 
SELECT * FROM employees WHERE officeCode IN (1,2,3);

-- using subquery
SELECT * FROM employees WHERE officeCode IN (SELECT officeCode FROM offices WHERE country = 'USA');






