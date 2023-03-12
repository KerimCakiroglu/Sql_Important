--------
-- TASK 1 - RECAP01
----------
-- Select the unique states of customers from the customers table.
SELECT DISTINCT state 
FROM customers
ORDER BY state;

-- Use the LIMIT clause to find 5 customers who have the lowest credits, but not zero

SELECT * FROM customers
WHERE creditLimit > 0
ORDER BY creditLimit ASC
LIMIT 5;
