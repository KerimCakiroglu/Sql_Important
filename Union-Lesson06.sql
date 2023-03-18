##########
-- Union
#############

SELECT contactFirstName, contactLastName FROM customers
UNION
SELECT firstName,lastName FROM employees;



-- MODIFY

SELECT contactFirstName as FirstName, contactLastName as LastName, 'Customers' as ContactType FROM customers
UNION
SELECT firstName,lastName,'Employees' as ContactType FROM employees order by FirstName,LastName;

-- MODIFy UNION ALL
# allowing duplicates #
SELECT contactFirstName as FirstName, contactLastName as LastName, 'Customers' as ContactType FROM customers
UNION ALL
SELECT firstName,lastName,'Employees' as ContactType FROM employees order by FirstName,LastName;


##########
-- INTERSECT
#############

SELECT contactFirstName as FirstName, contactLastName as LastName, 'Customers' as ContactType FROM customers
UNION 
SELECT firstName,lastName,'Employees' as ContactType FROM employees order by FirstName,LastName;

#############