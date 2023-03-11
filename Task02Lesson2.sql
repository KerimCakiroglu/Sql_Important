---------------
-- Task 2: 
-------------
USE classicmodels;

-- I. Display products that have a buy price greater than or equal to 50.0 that are classic cars.
select * from products where buyPrice >=50 and productLine='Classic Cars' ;

-- II. List product names and product lines that are planes or ships and display by product name in alphabetical order.
select productName,productLine from products 
where productLine ='Planes' or productLine = 'Ships' 
order by productName asc;

-- we can use IN for this sample
-- 2. way in
select * from products 
where productLine in ('Planes','Ships')
order by productName asc;

-- III. Display all information of customers that live in CA, NY, CT. We want to see
select * from customers 
where state IN ('CA','NY','CT') 
order by city desc;

