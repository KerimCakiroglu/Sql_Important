------------
-- HAVING , AS
------------

SELECT * FROM products;

-- Filter the rows with more than 5000 in stock
SELECT * FROM products where quantityInStock > 5000;

-- we can use this as an aggregate funstion to sum only records with higher amount than 5000
select productLine,sum(quantityInStock)  from products  where quantityInStock > 5000;

-- group the aggregate result for each category
select productLine,sum(quantityInStock)  from products  group by productLine;

-- 
select productLine,sum(quantityInStock)  from products where quantityInStock > 5000  group by productLine;

-- what if we want to see only some categories
select productLine,sum(quantityInStock) as Total  from products  group by productLine having Total>50000;

-- the order of the keywords:
-- SELECT (agg functions) FROM table WHERE (filter records) GROUP BY (the category column) HAVING (filter groups)

--------------------------------
-- AS
--------------------------------

-- 1. The column name of the result table will change to the Alias we use
-- 2. We can use that Alias to refer to the original object in any part of the query
SELECT productLine AS Categories, SUM(quantityInStock) AS TotalStock FROM products GROUP BY Categories HAVING TotalStock > 50000;





