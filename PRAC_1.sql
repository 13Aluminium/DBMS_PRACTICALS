CREATE TABLE DEPOSIT (ACTNO VARCHAR2(5), CNAME VARCHAR2(18), BNAME VARCHAR2(18), AMOUNT NUMBER (8,2), ADATE DATE);

CREATE TABLE BRANCH (BNAME VARCHAR2(18), CITY VARCHAR2(18));

CREATE TABLE CUSTOMERS (CNAME VARCHAR2(19), CITY VARCHAR2(18));

CREATE TABLE BORROW (LOANNO VARCHAR2(5), CNAME VARCHAR2(18), BNAME VARCHAR2(18), AMOUNT NUMBER (8,2));

Insert into deposit values(100, 'ANIL', 'VRCE', 1000.00, '1-MAR-95');
Insert into deposit values(101, 'SUNIL', 'AJNI', 5000.00, '4-JAN-96');
Insert into deposit values(102, 'MEHUL', 'KAROLBAGH', 3500.00, '17-NOV-95');
Insert into deposit values(104, 'MADHURI', 'CHANDI', '1200.00', '17-DEC-95');
Insert into deposit values(105, 'PRMOD', 'M.G.ROAD', 3000.00, '27-MAR-96');
Insert into deposit values(106, 'SANDIP', 'ANDHERI', 2000.00, '31-MAR-96');
Insert into deposit values(103, 'KEVAL', 'GB ROAD', 42069.00, '5-MAR-95');
Insert into deposit values(107, 'SANDIP', 'ANDHERI', 2000.00, '31-MAR-96');
Insert into deposit values(108, 'KRANTI', 'NEHRU PLACE', 5000.00, '2-JUL-95');
Insert into deposit values(109, 'MINU', 'POWAI', 7000.00, '10-AUG-95');

Select * from deposit;

Insert into branch values('VRCE', 'NAGPUR');
Insert into branch values('AJNI', 'NAGPUR');
Insert into branch values('KAROLBAGH', 'DELHI');
Insert into branch values('CHANDI','NAGPUR');
Insert into branch values('DHARAMPETH','NAGPUR');
Insert into branch values('M.G.ROAD', 'BANGLORE');
Insert into branch values('ANDHERI',  'BOMBAY');
Insert into branch values('VIRAR',  'BOMBAY');
Insert into branch values('NEHRU PLACE', 'DELHI');
Insert into branch values('POWAI',  'BOMBAY');

Select * from branch;

Insert into CUSTOMERS values('ANIL',  'CALCUTTA');
Insert into CUSTOMERS values('SUNIL', 'DELHI');
Insert into CUSTOMERS values('MEHUL', 'BARODA');
Insert into CUSTOMERS values('MANDAR', 'PATNA');
Insert into CUSTOMERS values('MADHURI', 'NAGPUR');
Insert into CUSTOMERS values('PRAMOD', 'NAGPUR');
Insert into CUSTOMERS values('SANDIP', 'SURAT');
Insert into CUSTOMERS values('KEVAL',  'AHMEDABAD');
Insert into CUSTOMERS values('SHIVANI',  'BOMBAY');
Insert into CUSTOMERS values('KRANTI',  'BOMBAY');
Insert into CUSTOMERS values('MINU',  'BOMBAY');

Select * from customers;


Update deposit set  CNAME = 'SHIVANI', BNAME = 'VIRAR', AMOUNT = 1000.00, ADATE = '5-SEP-95' where ACTNO = 107;

Insert into borrow values(201, 'ANIL', 'VRCE', 1000.00);
Insert into borrow values(206, 'MEHUL', 'AJNI', 5000.00);
Insert into borrow values(311, 'SUNIL', 'DHARAMPETH', 3000.00);
Insert into borrow values(321, 'MADHURI', 'ANDHERI', 2000.00);
Insert into borrow values(375, 'PRMOD', 'VIRAR', 8000.00);
Insert into borrow values(481, 'KRANTI', 'NEHRU PLACE', 3000.00);

Select * from borrow;





