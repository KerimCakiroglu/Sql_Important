##################
-- INNER JOIN
#################

select * from employees;
select * from offices;

-- selct all columns from both
select * from employees inner join offices on employees.officeCode = offices.officeCode;

-- specifying certain columns
select employees.firstName, employees.lastName, offices.city, offices,country from employees inner join offices on employees.officeCode = offices.officeCode;

-- using alias
select e.firstName,e.lastName,o.city,o.country from employees as e inner join offices as o on e.officeCode = o.officeCode;


################

select * from products;
select * from productlines;

select p1.productCode, p1.productName, p2.textDescription from products as p1 Inner join productlines as p2 on p1.productLine = p2.productLine;


