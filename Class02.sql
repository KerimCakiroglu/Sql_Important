-------
-- ORDER BY
--------

-- This. statement tells mySQL that I want to use this. schema
USE classicmodels;

-- display employee ordered by their last names
select * from employees order by lastName ASC;

-- display employee ordered by employeeNumber in descending order
select * from employees order by employeeNumber desc;

-- display employee ordered by their last names
--  those that have the same last name willl be ordered by firstNAme
select * from employees order by lastName ASC,firstName;

-- display
select * from employees 
where officeCode = 4 
order by firstName;


