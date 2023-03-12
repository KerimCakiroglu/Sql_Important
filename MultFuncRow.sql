--------------
-- Multiple Row (Aggregate) Functions 
----------------

-- Mutiple record functions - aka - aggregate funnctions

select buyPrice from products order by buyPrice desc;

-- get the max buyprice
select max(buyPrice) from products;

-- get the minimum buyPrice
select min(buyPrice) from products;

-- get the sum of the buy price column
select sum(buyPrice) from products;

-- get the avarage of the buyprice column
select avg(buyPrice) from products;

-- get the number of rows (values) in the buyPrice column
select count(buyPrice) from products;

-- we can use also use  Count(buyPrice)
select count(*) from products;

-- we can filter before calcuation. the max
select max(buyPrice) from products;
select max(buyPrice) from products where productline = 'Motorcycles';


select * from orders;

select max(shippedDate) from orders;
select min(shippedDate) from orders;

-- be careful on combining results from aggregate functions with other fields
select productLine, buyPrice from products;
select productLine, max(buyPrice)from products;

-- This does not. give us the MAX buy price with its respective information
-- it actually gives the MAX buyPrice on the table combined with the first row of the result set
select  *, max(buyPrice)from products;




