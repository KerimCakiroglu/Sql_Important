

-----------------
-- Homework 1:
---------------------------
USE LibraryManagement;

 --   i. How can we display the name of the book with id 5?
 select BookName from book where Bookid = 5;
 
 --  ii. How can you display unique book category ids from the “book” table?
 select distinct BookCategoryId from book;
 
 # iii. How to display student name and student discipline for student with id 7 ?
 select StudentName, StudentDiscipline from student where StudentId = 7;
 
  #  iv. How to display all the information of the books that have a category greater or equal to 3?
  
  select * from book where BookCategoryId >=3;
  
  