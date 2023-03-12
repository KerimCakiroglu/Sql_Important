--------------------------------
-- BREAK
--------------------------------
-------- From previous example --------
-- WHERE statement will filter before GROUP BY
-- HAVING statement will filter after GROUP BY
SELECT status, COUNT(*)
FROM orders
WHERE customerNumber >= 300
GROUP BY status
HAVING COUNT(*) > 10;
--------------------------------

SELECT customerNumber, amount FROM payments;

-- Customer and how many payments they have made
SELECT customerNumber, COUNT(amount)
FROM payments
GROUP BY customerNumber;

-- Customer and total payments they have made
SELECT customerNumber, SUM(amount)
FROM payments
GROUP BY customerNumber;

-- Customer with more than 5 payments
SELECT customerNumber, COUNT(amount)
FROM payments
GROUP BY customerNumber
HAVING COUNT(amount) > 5;

-- Same query using Alias
SELECT customerNumber, COUNT(amount) AS payCount
FROM payments
GROUP BY customerNumber
HAVING payCount > 5;
