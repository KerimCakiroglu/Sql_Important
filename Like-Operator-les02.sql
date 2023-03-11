---------
-- like
-----------
-- employees whose lastName starts with B and anything after that
select * from employees where lastName like 'b%';

-- employees whose firstName starts with L and ends with E
select * from employees where firstName like 'L%E';

-- customers whose customerName has "la". anywhere
select * from customers where customerName like '%la%';

-- customers whose contactFirstName starts with "jan"
select * from customers where contactFirstName like 'jan%';

-- customers whose contactFirstName starts with "j", has one other letter, has an "n" and has anything at the end
select * from customers where contactFirstName like 'j_n%';

-- customer. whose phone number ends with 5555 
select * from customers where phone like '%5555';
