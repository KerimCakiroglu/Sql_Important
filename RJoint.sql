#########
-- Right Join
#########

SELECT * FROM employees ;
select * FROM customers;


SELECT customerName, lastName,firstName 
FROM customers
INNER join employees 
ON customers.salesRepEmployeeNumber = employeeNumber;

SELECT customerName, lastName,firstName 
FROM customers
RIGHT join employees 
ON customers.salesRepEmployeeNumber = employees.employeeNumber;


SELECT customerName, lastName,firstName 
FROM customers
LEFT join employees 
ON customers.salesRepEmployeeNumber = employees.employeeNumber;