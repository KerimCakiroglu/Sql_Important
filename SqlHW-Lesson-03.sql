---------------------
-- Homework Lesson 03:
----------

-- Homework: 
   
-- i. Verify how many Motorcycles we have in the products table
select productLine,count(*) from products where productLine = 'Motorcycles';

-- ii. Find the largest, smallest and average amount of payments
select * from payments;
select min(amount) as Smallest ,max(amount) Largest ,avg(amount) as Average from payments;

-- iii. Find the total amount of payments for every 'customerNumber' in payments table
select *  from payments ;
select customerNumber ,sum(amount) as Total from payments group by customerNumber;

-- iV. Find the total amount of payments for every 'customerNumber' that has payed less than 50000 in total.
select customerNumber ,sum(amount) as Total from payments group by customerNumber HAVING Total <50000;







