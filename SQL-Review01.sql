--------
-- Querying data
-- SELECT statement
----------
-- Lets use the employees table in the sample database to demostrate how to use the SELECT statement
SELECT * FROM classicmodels.employees;

use classicmodels;
-- using the mySql SELECT statement to retrive data from a single column
SELECT lastName FROM employees;

-- using the mySql SELECT statement to retrive data from multiple column
SELECT lastName,firstName FROM employees;

-- using the mySql SELECT statement to retrive data from all column
SELECT * FROM employees;
SELECT lastName,firstName,email,employeeNumber,extension,officeCode,jobTitle FROM employees;

-- The SELECT * is often called "select star" or "select all" since you select all data from a table.

################################
-- Notes about SELECT *
-- The SELECT * returns data from the columns that you may not use.
-- It produces unnecessary I/O disk and network traffic between the MySQL database server and application.
-- Using the SELECT * may expose sensitive information to unauthorized users.
################################

