-- SQL is case insensitive
select studentname FROM student;
-- I. How can you display all the data in “book” table?
SELECT * FROM book;
-- II. How can you display Book Name and Category Id from “book” table?
SELECT BookName, BookCategoryId FROM book;
-- III. How can you display all student names from “student” table?
SELECT StudentName FROM student;
-- IV. How can you display book id, student id, borrow date from “bookborrow”?
SELECT BookId, StudentId, BorrowDate FROM bookborrow;
-- V. Please display all information from “bookcategory” Table?
SELECT * FROM bookcategory;
-- --------------------------------
-- DISTINCT
-- --------------------------------
SELECT DISTINCT BookCategoryId FROM book;
SELECT DISTINCT StudentDiscipline FROM student; -- showing all differnt values that exist in the StudentDiscipline field
-- --------------------------------
-- Filtering data using WHERE
-- --------------------------------
-- We are NOT using qoutes for numbers
SELECT * FROM book WHERE BookCategoryId < 3;
-- We use qoutes for VARCHAR
SELECT * FROM book WHERE BookName = 'SQL';
-- ------------------------------------
-- Queries on our HRM Website Database
-- ------------------------------------
SELECT * FROM prod_orangehrm.hs_hr_employee;
SELECT * FROM prod_orangehrm.hs_hr_employee WHERE emp_firstname = 'Jacqueline';
SELECT * FROM prod_orangehrm.hs_hr_employee WHERE emp_lastname = 'white'
