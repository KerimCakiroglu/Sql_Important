--------
-- Is null
---------

USE classicmodels;


-- display all the offices
select * from offices;

-- display all the offices that dont have a state; that missing
select * from offices where state IS NULL;

-- display all the offices that dont have a state; the state is NOT missing
select * from offices where state is not null;
