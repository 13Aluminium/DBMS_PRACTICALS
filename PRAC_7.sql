Pracical - 7:

(1) Write a query to display the last name and hire date of any employee in the same department as smith. Exclude
smith
-SELECT L_NAME, HIREDATE FROM EMPLOYEE
WHERE DEPT_NAME = (SELECT  DEPT_NAME FROM EMPLOYEE WHERE EMP_NAME = 'SMITH') AND EMP_NAME != 'SMITH';

(2) Give name of customers who are depositors having same branch city of mr. sunil.
-SELECT CNAME FROM DEPOSIT JOIN BRANCH
ON DEPOSIT.BNAME = BRANCH.BNAME
WHERE CITY = (SELECT CITY FROM BRANCH JOIN DEPOSIT ON BRANCH.BNAME = DEPOSIT.BNAME WHERE CNAME = 'SUNIL' );

(3) Give deposit details and loan details of customer in same city where pramod is living.
- UPDATE CUSTOMERS SET CNAME = 'PRMOD' WHERE CNAME = 'PRAMOD'
-SELECT * FROM CUSTOMERS
-SELECT * FROM DEPOSIT JOIN BORROW
 ON DEPOSIT.CNAME = BORROW.CNAME JOIN CUSTOMERS
 ON DEPOSIT.CNAME = CUSTOMERS.CNAME
 WHERE CITY = (SELECT CITY FROM CUSTOMERS WHERE CNAME = 'PRMOD');


(4) Create a query to display the employee numbers and last names of all employees who earn more than the average
salary. Sort the results in ascending order of salary.
-SELECT EMP_NO, L_NAME FROM EMPLOYEE
 WHERE EMP_SAL > (SELECT AVG(EMP_SAL) FROM EMPLOYEE)
ORDER BY EMP_SAL;

(5) Give names of depositors having same living city as mr. anil and having deposit amount greater than 2000
- SELECT DEPOSIT.CNAME FROM CUSTOMERS JOIN DEPOSIT 
 ON CUSTOMERS.CNAME = DEPOSIT.CNAME 
 WHERE CITY = (SELECT CITY FROM CUSTOMERS WHERE CNAME = 'ANIL') AND AMOUNT > 2000; 

(6) Display the last name and salary of every employee who reports to ford.
- NOT TO BE PERFORMED

(7) Display the department number, name, and job for every employee in the accounting department.
-

(8) List the name of branch having highest number of depositors.
- SELECT BNAME FROM BRANCH GROUP BY
 BNAME 

(9) Give the name of cities where in which the maximum numbers of branches are located.
-

(10) Give name of customers living in same city where maximum depositors are located.
-
