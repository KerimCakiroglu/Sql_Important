---------------
-- IN / BETWEEN
-------------

-- in operator
-- 1 way
select * FROM employees where lastName = 'Patterson' or lastName='Bondur';
-- 2nd way
select * FROM employees where lastName in ('Patterson','Firrelli','Bondur');

-- between 

select * from customers where salesRepEmployeeNumber  >=1300 and salesRepEmployeeNumber <=1400;

select * from customers where salesRepEmployeeNumber between 1300 and 1400;

