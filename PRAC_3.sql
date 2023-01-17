-- (1) List total deposit from deposit.
SELECT SUM(AMOUNT) FROM DEPOSIT

-- (2) List total loan from karolbagh branch
SELECT SUM(AMOUNT) FROM DEPOSIT WHERE BNAME='KAROLBAGH'

-- (3) Give maximum loan from branch vrce.
SELECT MAX(AMOUNT) FROM DEPOSIT WHERE BNAME='VRCE'

-- (4) Count total number of customers
SELECT COUNT(CNAME) FROM CUSTOMERS

-- (5) Count total number of customer’s cities.
SELECT COUNT(*) FROM  CUSTOMERS

-- (6)Create table supplier from employee with all the columns.
CREATE TABLE SUPPLIER AS SELECT *FROM EMPLOYEE
SELECT *FROM SUPPLIER

-- (7)Create table sup1 from employee with first two columns.
CREATE TABLE SUPP1 AS SELECT EMP_NO,EMP_NAME FROM EMPLOYEE 
SELECT *FROM SUPP1

-- (8)Create table sup2 from employee with no data
CREATE TABLE SUPP2 AS SELECT *FROM  EMPLOYEE WHERE 1=2
SELECT *FROM SUPP2

-- (9) Insert the data into sup2 from employee whose second character should be ‘n’ and string should be 5 characters long in employee name field.
INSERT INTO SUPP2 SELECT *FROM EMPLOYEE WHERE EMP_NAME LIKE '_N___'
SELECT * FROM SUPP2

-- (10)Delete all the rows from sup1.
DELETE FROM SUPP1

-- (11)Delete the detail of supplier whose sup_no is 103.
DELETE FROM SUPPLIER WHERE EMP_NO=103

-- (12) Rename the table sup2.
ALTER TABLE SUPP2 RENAME TO SUPPLIER2

-- (13) Destroy table sup1 with all the data.
-DROP TABLE SUPP1

-- (14) Update the value dept_no to 10 where second character of emp. name is ‘m’.
UPDATE EMPLOYEE SET DEPT_NO=10 WHERE EMP_NAME LIKE '_M%'
SELECT * FROM EMPLOYEE

-- (15) Update the value of employee name whose employee number is 103.
UPDATE EMPLOYEE SET EMP_NAME='BLACKPANTHER' WHERE EMP_NO=103
SELECT * FROM EMPLOYEE

-- (16) Add one column phone to employee with size of column is 10.
ALTER TABLE EMPLOYEE ADD PHONE NUMBER(10)
SELECT * FROM EMPLOYEE

-- (17) Modify the column emp_name to hold maximum of 30 characters.
ALTER TABLE EMPLOYEE MODIFY EMP_NAME VARCHAR2(30)
SELECT * FROM EMPLOYEE

-- (18) Count the total no as well as distinct rows in dept_no column with a condition of salary greater than 1000 of employee
SELECT COUNT(DISTINCT DEPT_NO),COUNT(*) FROM EMPLOYEE WHERE EMP_SAL>1000
SELECT * FROM EMPLOYEE

-- (19) Display the detail of all employees in ascending order, descending order of their name and no.
SELECT EMP_NAME FROM EMPLOYEE ORDER BY EMP_NAME ASC
SELECT EMP_NO FROM EMPLOYEE ORDER BY EMP_NO ASC
SELECT EMP_NAME FROM EMPLOYEE ORDER BY EMP_NAME DESC
SELECT EMP_NO FROM EMPLOYEE ORDER BY EMP_NO DESC

-- (20) Display the dept_no in ascending order and accordingly display emp_comm in descending order.
SELECT DEPT_NO, EMP_COMM FROM EMPLOYEE ORDER BY DEPT_NO ASC,EMP_COMM DESC

-- (21) Update the value of emp_comm to 500 where dept_no is 20.
UPDATE EMPLOYEE SET EMP_COMM=500 WHERE DEPT_NO=20
Select * from employee

-- (22) Display the emp_comm in ascending order with null value first and accordingly sort employee salary in descending order.
SELECT EMP_COMM FROM EMPLOYEE ORDER BY EMP_COMM ASC NULLS FIRST
SELECT EMP_SAL FROM EMPLOYEE ORDER BY EMP_SAL DESC

-- (23) Display the emp_comm in ascending order with null value last and accordingly sort emp_no in descending order.
SELECT EMP_COMM FROM EMPLOYEE ORDER BY EMP_COMM ASC NULLS FIRST
