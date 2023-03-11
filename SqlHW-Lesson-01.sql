-- i. How can we display the name of the book with id 5?

SELECT BookName FROM book where Bookid=5;


 --   ii. How can you display unique book category ids from the “book” table?
 SELECT DISTINCT BookCategoryId from  book;
 
 --   iii. How to display student name and student discipline for student wibookborrowbookcategoryth id 1006?
 SELECT StudentName,StudentDiscipline FROM student where  StudentId =1006;
 
--    iv. How to display all the information of the books that have a category greater or equal to 3?
Select * from book where BookCategoryId >=3;