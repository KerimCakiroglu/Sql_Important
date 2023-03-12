--------------------------------
-- HRMS DB Queries
--------------------------------

-- USE prod_orangehrm;

SELECT * FROM prod_orangehrm.hs_hr_employee;

-- Display the number of employees per job title
SELECT job_title_code, COUNT(job_title_code) AS Total FROM prod_orangehrm.hs_hr_employee GROUP BY job_title_code HAVING Total > 5;

-- Display the count of employees according to gender (if provided)
SELECT emp_gender, COUNT(*) FROM hs_hr_employee WHERE emp_gender IS NOT NULL GROUP BY emp_gender;