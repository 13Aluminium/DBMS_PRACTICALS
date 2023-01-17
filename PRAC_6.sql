(1) List total deposit of customer having account date after 1-jan-96.
- SELECT * FROM He

(2) List total deposit of customers living in city Nagpur.
-

(3) List maximum deposit of customers living in bombay.
-

(4) Display the highest, lowest, sum, and average salary of all employees. Label the columns Maximum, Minimum,
Sum, and Average, respectively. Round your results to the nearest whole number.
-

(5) Write a query that displays the difference between the highest and lowest salaries. Label the column DIFFERENCE.
-

(6) Create a query that will display the total number of employees and, of that total, the number of employees hired in
1995, 1996, 1997, and 1998
-

(7) Find the average salaries for each department without displaying the respective department numbers.
-

(8) Write a query to display the total salary being paid to each job title, within each department.
-

(9) Find the average salaries > 2000 for each department without displaying the respective department numbers.
-
	
(10) Display the job and total salary for each job with a total salary amount exceeding 3000 and sorts the list by the total
salary.
-

(11) List the branches having sum of deposit more than 5000 and located in city bombay.
-


(1) List total deposit of customer having account date after 1-jan-96.
SELECT SUM(AMOUNT) FROM DEPOSIT WHERE ADATE>'1-JAN-96';
SELECT * FROM DEPOSIT

(2) List total deposit of customers living in city Nagpur.
SELECT SUM(AMOUNT) FROM DEPOSIT JOIN CUSTOMERS ON DEPOSIT.CNAME=CUSTOMERS.CNAME WHERE CITY='NAGPUR';

(3) List maximum deposit of customers living in bombay.
SELECT MAX(AMOUNT) FROM DEPOSIT JOIN CUSTOMERS ON DEPOSIT.CNAME=CUSTOMERS.CNAME WHERE CITY='BOMBAY';

(4) Display the highest, lowest, sum, and average salary of all employees. Label the columns Maximum, Minimum,Sum, and Average, respectively. Round your results to the nearest whole number.
SELECT MAX(EMP_SAL) AS MAXIMUM, MIN(EMP_SAL) AS MINIMUM , SUM(EMP_SAL) AS SUM , ROUND(AVG(EMP_SAL)) AS AVERAGE FROM EMPLOYEE
SELECT * FROM EMPLOYEE

(5) Write a query that displays the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(EMP_SAL)-MIN(EMP_SAL) AS DIFFERENCE FROM EMPLOYEE


(6) Create a query that will display the total number of employees and, of that total, the number of employees hired in 1995, 1996, 1997, and 1998
SELECT COUNT(*) FROM EMPLOYEE WHERE HIREDATE LIKE '%95' OR HIREDATE LIKE '%96' OR HIREDATE LIKE '%97' OR HIREDATE LIKE '%98'
SELECT * FROM EMPLOYEE

// CORRECT ONE 
SELECT TO_CHAR(HIREDATE, 'YYYY'), COUNT(*)
FROM EMPLOYEE GROUP BY TO_CHAR(HIREDATE, 'YYYY')
ORDER BY TO_CHAR(HIREDATE, 'YYYY');

(7) Find the average salaries for each department without displaying the respective department numbers.
-SELECT DEPT_NAME, AVG(EMP_SAL) FROM EMPLOYEE 
GROUP BY DEPT_NAME;

(8) Write a query to display the total salary being paid to each job title, within each department.
-SELECT JOB_TITLE, SUM(EMP_SAL) FROM EMPLOYEE JOIN JOB
ON EMPLOYEE.JOB_ID = JOB.JOB_ID 
GROUP BY JOB_TITLE;

(9) Find the average salaries > 2000 for each department without displaying the respective department numbers.
-SELECT DEPT_NAME, AVG(EMP_SAL) FROM EMPLOYEE 
GROUP BY DEPT_NAME 
HAVING AVG(EMP_SAL) > 2000;

(10) Display the job and total salary for each job with a total salary amount exceeding 3000 and sorts the list by the total salary.
-

(11) List the branches having sum of deposit more than 5000 and located in city bombay.
-

SELECT BRANCH.BNAME FROM DEPOSIT JOIN BRANCH ON BRANCH.BNAME=DEPOSIT.BNAME WHERE DEPOSIT.AMOUNT > 5000 AND BRANCH.CITY='BOMBAY';
-
