--------------
-- Task 1: 
----------------

# 1. Display employees last name in uppercase, first name in lowercase
-- the records are obtained from the db, and then the function is applied to them

select upper(lastName), lower(firstName) from employees;


# 2. Display the product lines in uppercase from productlines
select upper(productline) from productlines;