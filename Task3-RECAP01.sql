--------------------------------
-- TASK 3 -> UNTIL 2:20
--------------------------------

-- Find Customers that have made a total of more than 100K payment.

SELECT customerNumber ,SUM(amount) AS TOTAL
FROM payments 
GROUP BY customerNumber
HAVING TOTAL > 100000
ORDER BY TOTAL;
