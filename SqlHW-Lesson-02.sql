---------------------
-- Homework Lesson 02:
----------
USE classicmodels;


-- 1. Display all employees whose last name ends with ‘n’
select * from employees where lastName like '%n';

# 2. Display all offices that are not located in USA.
select * from offices where NOT country = 'USA';

-- 3. Verify all orders that was shipped from January 1st of 2004 until December 31st of 2004. Order by ship date.
SELECT * FROM orders 
where status = 'Shipped' and shippedDate 
between '2004-01-01'and '2004-12-31' 
order by shippedDate;

-- 4. Display all products that have Ford in their product names and have a buy price greater than 50. 
-- Do not forget to sort products by buy price incrementing.
SELECT * FROM products
where productName like '%ford%' and buyPrice >50 
order by buyPrice asc;

-- 5. Verify all the employees who report to 1102,1088 or 1143.
SELECT * FROM employees
 where reportsTo in (1102,1088,1143);


-- 6. How to display contact first name, last name, phone number of customers who don’t have state entered.
SELECT contactFirstName,contactLastName,phone,state  FROM customers
where state is null;


