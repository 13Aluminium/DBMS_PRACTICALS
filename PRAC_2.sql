CREATE TABLE Job(
job_id Varchar2(15),
job_title Varchar2(30),
min_sal Number(7,2),
max_sal Number(7,2)
);

Select * from Job;

INSERT INTO JOB VALUES ('IT_PROG','PROGRAMMER',4000.00,10000.00);
INSERT INTO JOB VALUES ('MK_MGR','MARKETING MANAGER',9000.00,15000.00);
INSERT INTO JOB VALUES ('FI_MGR','FINANCE MANAGER',8200.00,12000.00);
INSERT INTO JOB VALUES ('FI_ACC','ACCOUNT',4200.00,9000.00);
INSERT INTO JOB VALUES ('LEC','LECTURER',6000.00,17000.00);
INSERT INTO JOB VALUES ('COMP_OP','COMPUTER OPERATOR',1500.00,3000);





CREATE TABLE Employee(
emp_no Number(3), 
emp_name Varchar2(30),
emp_sal Number(8,2),
emp_comm Number(6,1),
dept_no Number(3),
l_name Varchar2(30),
dept_name Varchar2(30),
job_id Varchar2(15),
location Varchar2(15),
manager_id Number(5),
hiredate Date
);


INSERT INTO EMPLOYEE VALUES(101,'SMITH',800,NULL,20,'SHAH','MACHINE LEARNING','FI_MGR','TORONTO',105,'09-AUG-96');
INSERT INTO EMPLOYEE VALUES(102,'SNEHAL',1600,300,25,'GUPTA','DATA SCIENCE','LEC','LAS VEGAS',NULL,'14-MAR-96');
INSERT INTO EMPLOYEE VALUES(103,'ADAMA',1100,0,20,'WALES','MACHINE LEARNING','MK_MDR','ONTARIO',105,'30-NOV-95');
INSERT INTO EMPLOYEE VALUES(104,'AMAN',3000,NULL,15,'SHARMA','VIRTUAL REALITY','COMP_OP','MEXICO',12,'02-OCT-97');
INSERT INTO EMPLOYEE VALUES(105,'ANITA',5000,50000,10,'PATEL','BIG DATA ANALYTICS','COMP_OP','GERMANY',107,'01-JAN-98');
INSERT INTO EMPLOYEE VALUES(106,'SNEHA',2450,24500,10,'JOSEPH','BIG DATA ANALYTICS','FI_ACC','MELBOURNE',105,'26-SEP-97');
INSERT INTO EMPLOYEE VALUES(107,'ANAMIKA',2975,NULL,30,'JHA','ARTIFICIAL INTELLIGENCE','IT_PROG','NEW YORK',NULL,'15-JUL-97');


SELECT * FROM EMPLOYEE;





CREATE TABLE deposit1
(
a_no Varchar2(5),
cname Varchar2(15),
bname Varchar2(10),
amount Number(7,2),
ADate Date
);


INSERT INTO DEPOSIT1 VALUES ('101','ANIL','ANDHERI',7000.00,'01-JAN-06');
INSERT INTO DEPOSIT1 VALUES ('102','SUNIL','VIRAR',5000.00,'15-JUL-06');
INSERT INTO DEPOSIT1 VALUES ('103','JAY','VILLEPARLE',6500.00,'12-MAR-06');
INSERT INTO DEPOSIT1 VALUES ('104','VIJAY','ANDHERI',8000.00,'17-SEP-06');
INSERT INTO DEPOSIT1 VALUES ('105','KEYUR','DADAR',7500.00,'19-NOV-06');
INSERT INTO DEPOSIT1 VALUES ('106','MAYUR','BORIVALI',5500.00,'21-DEC-06');

SELECT * FROM DEPOSIT1;


Perform following queries
(1) Retrieve all data from employee, jobs and deposit.
- Select * from employee, job, deposit;

(2) Give details of account no. and deposited rupees of customers having account opened between dates 01-01-06 and 25-07-06.
- Select a_no, amount from deposit1 where a_date between '01-jan-06' and '25-jul-06';

(3) Display all jobs with minimum salary is greater than 4000.
- Select * from job where min_sal > 4000;

(4) Display name and salary of employee whose department no is 20. Give alias name to name of employee.
- Select name, salary

(5) Display employee no, name and department details of those employee whose department lies in (10,20).
(6) Display the non-null values of employees.
(7) Display name of customer along with its account no (both columns should be displayed as one) whose amount is
not equal to 8000 Rs.
(8) Display the content of job details with minimum salary either 2000 or 4000.

To study various options of LIKE predicate
(1) Display all employee whose name start with ‘A’ and third character is ‘a’.
(2) Display name, number and salary of those employees whose name is 5 characters long and first three characters are
‘Ani’.
(3) Display all information of employee whose second character of name is either ‘M’ or ‘N’.
(4) Find the list of all customer name whose branch is in ‘andheri’ or ‘dadar’ or ‘virar’.
(5) Display the job name whose first three character in job id field is ‘FI_’.
(6) Display the title/name of job who’s last three character are ‘_MGR’ and their maximum salary is greater than Rs
12000.
(7) Display the non-null values of employees and also employee name second character should be ‘n’ and string should
be 5-character long.
(8) Display the null values of employee and also employee name’s third character should be ‘a’.
(9) What will be output if you are giving LIKE predicate as ‘%\_%’ ESCAPE ‘\’

