--------
-- MySQL DISTINCT examples
----------

SELECT  lastName FROM employees ORDER BY lastName;
-- As clearly shown in the output, some employees have the same last name e.g, Bondur,Firrelli

-- This statement uses the DISTINCT clause to select unique last names from the employees table
SELECT distinct lastName FROM employees ORDER BY lastName;

-- MySQL DISTINCT with multiple columns
SELECT distinct lastName, firstName FROM employees ORDER BY lastName;