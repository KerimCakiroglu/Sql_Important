-------
-- Single Row Functions
-------
select*from products;
select productLine,upper(productLine),lower(productline) from products;

select * from customers;
select *, lower(contactLastName), upper(contactFirstName) from customers;

-- if db is case-sensitive, this will only show the last names exactly as 'bow'
SELECT * FROM employees WHERE lastName = 'bow';

-- it is still working, because our database is not case sensitive-- if db is case-sensitive, this will only show the last names exactly as 'bow'
SELECT * FROM employees WHERE lastName = 'bow';

-- it is still working, because our database is not case sensitive
SELECT * FROM employees WHERE LOWER(lastName) = 'bow';


-- upper() returns a new value as 'KING' and we compare to our search keyword
SELECT * FROM customers WHERE UPPER(contactLastName) = 'KING';


-- how to check if your db is case sensitive

SELECT * FROM customers;
-- if the results are different when you try with 'Schmitt' vs 'schmitt', then db is not case sensitive
SELECT * FROM customers WHERE contactLastName = 'schmitt';




