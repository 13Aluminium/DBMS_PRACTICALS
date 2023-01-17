(1) Give details of customers ANIL.
(2) Give name of customer who are borrowers and depositors and having living city nagpur
(3) Give city as their city name of customers having same living branch.
(4) Write a query to display the last name, department number, and department name for all employees.
(5) Create a unique listing of all jobs that are in department 30. Include the location of the department in the output
(6) Write a query to display the employee’s name, department number, and department name for all employees who
work in NEW YORK.
(7) Display the employee’s last name and employee number along with their manager’s last name and manager number.
Label the columns Employee, Emp#, Manager, and Mgr#, respectively.
(8) Create a query to display the name and hire date of any employee hired after employee “smith”.


SELECT * FROM DEPOSIT JOIN CUSTOMERS ON DEPOSIT.CNAME = CUSTOMERS.CNAME;

SELECT * FROM DEPOSIT FULL OUTER JOIN CUSTOMERS ON DEPOSIT.CNAME = CUSTOMERS.CNAME;

SELECT * FROM DEPOSIT;

SELECT * FROM DEPOSIT LEFT OUTER JOIN CUSTOMERS ON DEPOSIT.CNAME = CUSTOMERS.CNAME;

SELECT * FROM DEPOSIT RIGHT OUTER JOIN CUSTOMERS ON DEPOSIT.CNAME = CUSTOMERS.CNAME;

SELECT * FROM DEPOSIT JOIN CUSTOMERS 
ON DEPOSIT.CNAME = CUSTOMERS.CNAME JOIN BORROW
ON DEPOSIT.CNAME = BORROW.CNAME
WHERE DEPOSIT.CNAME = 'ANIL';

SELECT CNAME FROM DEPOSIT JOIN CUSTOMERS 
ON DEPOSIT.CNAME = CUSTOMERS.CNAME JOIN BORROW
ON DEPOSIT.CNAME = BORROW.CNAME
WHERE CUSTOMERS.CITY = 'NAGPUR';

SELECT CNAME FROM DEPOSIT JOIN CUSTOMERS 
ON DEPOSIT.CNAME = CUSTOMERS.CNAME 
WHERE CUSTOMERS.CITY = 'NAGPUR';

//ERROR AAVSE UPAR VADA MA: 
ORA-00918: column ambiguously defined

SELECT CITY FROM DEPOSIT JOIN BRANCH 
ON DEPOSIT.BNAME = BRANCH.BNAME JOIN BORROW
ON DEPOSIT.BNAME = BORROW.BNAME;

SELECT L_NAME, DEPT_NAME, DEPT_NO FROM EMPLOYEE;

SELECT * FROM JOB;

SELECT EMPLOYEE.JOB_ID, JOB_TITLE, LOCATION FROM EMPLOYEE
JOIN JOB ON EMPLOYEE.JOB_ID = JOB.JOB_ID
WHERE DEPT_NO = 30;

SELECT * FROM EMPLOYEE;

SELECT EMP_NAME, DEPT_NO, DEPT_NAME FROM EMPLOYEE
WHERE LOCATION = 'NEW YORK';

SELECT L_NAME, EMP_NO, MANAGER_ID AS "MGR#" FROM EMPLOYEE;

SELECT * FROM EMPLOYEE CROSS JOIN JOB WHERE DEPT_NO = 10;

SELECT * FROM EMPLOYEE
WHERE HIREDATE > '09-AUG-96';

(1) Give details of customers ANIL.
-SELECT * FROM DEPOSIT JOIN CUSTOMERS 
ON DEPOSIT.CNAME = CUSTOMERS.CNAME JOIN BORROW
ON DEPOSIT.CNAME = BORROW.CNAME
WHERE DEPOSIT.CNAME = 'ANIL';

(2) Give name of customer who are borrowers and depositors and having living city nagpur
-SELECT CNAME FROM DEPOSIT JOIN CUSTOMERS 
ON DEPOSIT.CNAME = CUSTOMERS.CNAME JOIN BORROW
ON DEPOSIT.CNAME = BORROW.CNAME
WHERE CUSTOMERS.CITY = 'NAGPUR';

(3) Give city as their city name of customers having same living branch.
-SELECT CITY FROM DEPOSIT JOIN BRANCH 
ON DEPOSIT.BNAME = BRANCH.BNAME JOIN BORROW
ON DEPOSIT.BNAME = BORROW.BNAME;


(4) Write a query to display the last name, department number, and department name for all employees.
-SELECT L_NAME, DEPT_NAME, DEPT_NO FROM EMPLOYEE;

(5) Create a unique listing of all jobs that are in department 30. Include the location of the department in the output
-SELECT EMPLOYEE.JOB_ID, JOB_TITLE, LOCATION FROM EMPLOYEE
JOIN JOB ON EMPLOYEE.JOB_ID = JOB.JOB_ID
WHERE DEPT_NO = 30;

(6) Write a query to display the employee’s name, department number, and department name for all employees who work in NEW YORK.
-SELECT EMP_NAME, DEPT_NO, DEPT_NAME FROM EMPLOYEE
WHERE LOCATION = 'NEW YORK';

(7) Display the employee’s last name and employee number along with their manager’s last name and manager number. Label the columns Employee, Emp#, Manager, and Mgr#, respectively.
-SELECT L_NAME, EMP_NO, MANAGER_ID AS "MGR#" FROM EMPLOYEE;

(8) Create a query to display the name and hire date of any employee hired after employee “smith”.
-SELECT * FROM EMPLOYEE
WHERE HIREDATE > '09-AUG-96';




