(1) Write a query to display the current date. Label the column Date
-SELECT SYSDATE AS CURRENT_DATE FROM DUAL;

(2) For each employee, display the employee number, salary, and salary increased by 15% and expressed as a whole
number. Label the column New Salary
-SELECT EMP_NO, EMP_SAL, ROUND(EMP_SAL+(EMP_SAL*0.15)) AS NEW_SALARY FROM EMPLOYEE;

(3) Modify your query no (2) to add a column that subtracts the old salary from the new salary. Label the column
Increase
-SELECT EMP_NO, EMP_SAL, ROUND(EMP_SAL+(EMP_SAL*0.15)) AS NEW_SALARY, ROUND(EMP_SAL*0.15) AS INCREASE FROM EMPLOYEE;

(4) Write a query that displays the employee’s names with the first letter capitalized and all other letters lowercase, and
the length of the names, for all employees whose name starts with J, A, or M. Give each column an appropriate label.
Sort the results by the employees’ last names.
-SELECT INITCAP(EMP_NAME) AS FIRST_NAME, LENGTH(EMP_NAME) AS LENGTH FROM EMPLOYEE WHERE EMP_NAME LIKE 'A%' OR EMP_NAME LIKE 'M%' OR EMP_NAME LIKE 'J%' ORDER BY L_NAME;  

(5) Write a query that produces the following for each employee:
<employee last name> earns <salary> monthly
- SELECT L_NAME||' '||'  EARNS  '|| EMP_SAL ||'  MONTHLY' AS COMBINED FROM EMPLOYEE;

(6) Display the name, date, number of months employed and day of the week on which the employee has started. Order
the results by the day of the week starting with Monday.
- SELECT EMP_NAME AS NAME,HIREDATE AS DATTE,ROUND(MONTHS_BETWEEN(SYSDATE,HIREDATE)) AS MONTHS,TO_CHAR(HIREDATE,'DAY') AS DAYS FROM EMPLOYEE ORDER BY TO_CHAR(HIREDATE,'D');

-SELECT EMP_NAME AS NAME,HIREDATE AS DATE,ROUND(MONTHS_BETWEEN(SYSDATE,HIREDATE)) AS MONTHS,TO_CHAR(HIREDATE,'DAY') AS DAY FROM EMPLOYEE ORDER BY TO_CHAR(HIREDATE,'DAY');(KEVAL NI QUERY)
(7) Display the date of emp in a format that appears as Seventh of June 1994 12:00:00 AM.
-SELECT TO_CHAR(HIREDATE, 'DDSPTH "OF" MONTH YYYY HH:MI:SS AM') AS "DATE AND TIME" FROM EMPLOYEE;

//Thi is an important query.

(8) Write a query to calculate the annual compensation of all employees (sal +comm.).
- UPDATE EMPLOYEE SET EMP_COMM = 0 WHERE EMP_COMM IS NULL;
- SELECT (EMP_COMM + EMP_SAL) AS ANNUAL_COMPENSATION FROM EMPLOYEE;

SELECT * FROM EMPLOYEE