#########
-- Self Join
#########

SELECT * 
FROM employees e1 
INNER JOIN employees e2
ON e1.reportsTo = e2.employeeNumber
;


SELECT e1.employeeNumber,e1.firstName,e1.lastName,
e2.firstName,e2.lastName
FROM employees e1 
INNER JOIN employees e2
ON e1.reportsTo = e2.employeeNumber
;

## Note you can use without AS

###Concat
SELECT e1.employeeNumber,Concat(e1.firstName,' ',e1.lastName) AS EmplpyeeName,
Concat(e2.firstName,' ',e2.lastName) ManagerName
FROM employees e1 
INNER JOIN employees e2
ON e1.reportsTo = e2.employeeNumber
;

