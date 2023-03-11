---------------
-- And / Or / NOT
-------------

-- and operator
select * from employees
where lastName ='Patterson' and jobTitle = 'Sales Rep';


-- or operator
select * from employees
where lastName ='Firrelli' or lastName = 'Bondur';

-- not operator
-- 1 way
select * from employees where jobTitle !='Sales Rep' ;
-- 2 way 
select * from employees where not jobTitle ='Sales Rep';
