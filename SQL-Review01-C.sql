--------
-- usin MySQL Limit examples
----------

-- LIMIT what you are geting first 5 row
-- mic SQL is use for TOP 5 command
SELECT customerNumber,customerName,creditLimit
FROM customers
LIMIT 5;

-- This statement uses the LIMIT clause to get the top ten customers who have the highest credit
SELECT customerNumber,customerName,creditLimit
FROM customers
ORDER BY creditLimit DESC
LIMIT 10;