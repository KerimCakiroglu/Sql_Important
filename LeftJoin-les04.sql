##############################
-- LEFT JOIN
##############################

SELECT * FROM orders;
SELECT * FROM customers;


select c.customerNumber,c.customerName, o.orderNumber from customers as c
left join orders as o
on c.customerNumber = o.customerNumber;


-- prove matching record
select * from orders where customerNumber = 103;
select * from customers where customerNumber = 103;

-- non-matching record
select * from orders where customerNumber = 125;
select * from customers where customerNumber = 125;

-- When we use INNER JOIN, the non-matching records are not going to show on the result set
-- When we use LEFT JOIN, the non-matching records on the table on the LEFT of the join will 
-- be shown
-- When we use RIGHT JOIN, the non-matching records on the table on the RIGHT of the join
-- will be shown

###################
-- when we have :
-- table1 type_of_join table2

-- inner join 
   -- matching records (table1) + matching records (table2)
-- left join 
   -- all records from table1  + only matching records (table2)
-- right join 
   --  only matching records (table1) +all records from table2
-- full join 
   -- all records from (table1)  + all records from (table2)

   

