--------------
-- Group By 
----------------

select * from products;


-- using count(*) -> Aggregate 110 records innto 1 record
select count(*) from products;

-- if we use group by, it will show all records, for each category
-- Aggregate 110 records for each category (so 110 records into 7 categories)
select productLine, count(*) from products group by productLine ;

--------------------------------
-- GROUP BY: it applies an aggregate function to specific categories above
-- Counting would include all the records in our table. With group by, it only counts by category
--------------------------------

SELECT COUNT(*) FROM products;

-- We can filter using WHERE and then use the aggregate function on that set
SELECT COUNT(*) FROM products WHERE productLine = 'Motorcycles';
SELECT productLine, COUNT(*), MAX(buyPrice), MIN(buyPrice) FROM products WHERE productLine = 'Planes';

-- Or we can use GROUP BY
SELECT productLine, COUNT(*), MAX(buyPrice), MIN(buyPrice) FROM products GROUP BY productLine;


-- The order of keywords: SELECT ----- FROM ----- WHERE ----- GROUP BY ----- ORDER BY


SELECT * FROM employees;

-- How many employees report to each person
SELECT reportsTo, COUNT(*) FROM employees GROUP BY reportsTo;

-- How many employees do we have for each job title
SELECT jobTitle, COUNT(*) FROM employees group by jobTitle;




