------CUSTOMER TABLE---


CREATE TABLE SALESPERSON (
  SNUM  NUMBER PRIMARY KEY,
  SNAME VARCHAR2(20),
  CITY VARCHAR2(20),
  COMM  NUMBER
);

CREATE TABLE SALESPERSON (
   SNUM NUMBER PRIMARY KEY,
   SNAME VARCHAR2(20),
   CITY VARCHAR2(20),
   COMM NUMBER );
   

CREATE TABLE CUSTOMER (
CNUM NUMBER PRIMARY KEY,
CNAME VARCHAR2(20),
CITY VARCHAR2(20),
RATING NUMBER
SNUM NUMBER, FOREIGN KEY(SNUM) REFRENCES SALESPERSON(SNUM)
);



CREATE TABLE CUSTOMER (
CNUM NUMBER PRIMARY KEY,
CNAME VARCHAR2(30),
CITY VARCHAR2(30),
RATING NUMBER,
SNUM NUMBER, FOREIGN KEY (SNUM) REFERENCES SALESPERSON(SNUM)
);


CREATE TABLE ORDERS (

ONUM NUMBER
AMOUNT NUMBER,
ODATE DATE,
CNUM NUMBER, FOREIGNKEY(CNUM) REFERENCES CUSTOMER (CNUM)
SNUM NUMBER, FOREIGN KEY(SNUM) REFERENCES SALESPERSON(SNUM)



CREATE TABLE ORDERS (
ONUM NUMBER,
AMOUNT NUMBER,
ODATE DATE,
CNUM NUMBER , FOREIGN KEY(CNUM) REFERENCES CUSTOMER(CNUM),
SNUM NUMBER , FOREIGN KEY(SNUM) REFERENCES SALESPERSON(SNUM)
);



SELECT * FROM SALESPERSON;
SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;


INSERT INTO SALESPERSON VALUES(1001, 'PEEL', 'LONDON',12);
INSERT INTO SALESPERSON VALUES(1002, 'SERRES', 'SAN JOSE',13);
INSERT INTO SALESPERSON VALUES(1004, 'MONIKA', 'LONDON',11);
INSERT INTO SALESPERSON VALUES(1007, 'RIFKIN', 'BARCELONA',10);
INSERT INTO SALESPERSON VALUES(1003, 'AXELROD', 'NEW YORK',15);
INSERT INTO SALESPERSON VALUES(1005, 'FRANC', 'LONDON',26);

SELECT * FROM SALESPERSON;

--3->INSERT  VALUES INTO CUSTOMER 

INSERT INTO CUSTOMER VALUES(2001, 'HOFFMAN', 'LONDON', 100, 1001);
INSERT INTO CUSTOMER VALUES(2002, 'GIOVANNI', 'ROME', 200, 1003);
INSERT INTO CUSTOMER VALUES(2003, 'LIU', 'SAN JOSE', 200, 1002);
INSERT INTO CUSTOMER VALUES(2004, 'GRASS', 'BERLIN', 300, 1002);
INSERT INTO CUSTOMER VALUES(2006, 'CLEMENS', 'LONDON', 100, 1001);
INSERT INTO CUSTOMER VALUES(2008, 'CISNEROS', 'SAN JOSE', 300, 1007);
INSERT INTO CUSTOMER VALUES(2007, 'PEREIRA', 'ROME', 100, 1004);

SELECT * FROM SALESPERSON;
SELECT * FROM CUSTOMER;


--4-> INSERT VALUES INTO ORDER--

INSERT INTO ORDERS VALUES(3001,18.69, TO_DATE('03-OCT-1996 12:30','DD-MM-YYYY HH24:MI'),2008, 1007);
INSERT INTO ORDERS VALUES(3003,767.19, TO_DATE('03-OCT-1996 13:45','DD-MM-YYYY HH24:MI'),2001, 1001);
INSERT INTO ORDERS VALUES(3002,1900.10, TO_DATE('03-OCT-1996 12:05','DD-MM-YYYY HH24:MI'),2007, 1004);
INSERT INTO ORDERS VALUES(3005,5160.45, TO_DATE('03-OCT-1996 14:00','DD-MM-YYYY HH24:MI'),2003, 1002);
INSERT INTO ORDERS VALUES(3006,1098.16, TO_DATE('03-OCT-1996 13:37','DD-MM-YYYY HH24:MI'),2008, 1007);
INSERT INTO ORDERS VALUES(3009,1713.23, TO_DATE('04-OCT-1996 15:21','DD-MM-YYYY HH24:MI'),2002, 1003);
INSERT INTO ORDERS VALUES(3007,75.75, TO_DATE('04-OCT-1996 16:02','DD-MM-YYYY HH24:MI'),2002, 1003);
INSERT INTO ORDERS VALUES(3008,4723.00, TO_DATE('05-OCT-1996 12:07','DD-MM-YYYY HH24:MI'),2006, 1001);
INSERT INTO ORDERS VALUES(3010,1309.95, TO_DATE('06-OCT-1996 13:12','DD-MM-YYYY HH24:MI'),2004, 1002);
INSERT INTO ORDERS VALUES(3011,9891.88, TO_DATE('06-OCT-1996 13:09','DD-MM-YYYY HH24:MI'),2006, 1001);
INSERT INTO ORDERS VALUES(3012,3455.78, TO_DATE('04-OCT-1996 15:21','DD-MM-YYYY HH24:MI'),2002, 1003);
INSERT INTO ORDERS VALUES(3013,1245.98, TO_DATE('04-OCT-1996 16:32','DD-MM-YYYY HH24:MI'),2002, 1003);
INSERT INTO ORDERS VALUES(3014,3721.53, TO_DATE('05-OCT-1996 12:45','DD-MM-YYYY HH24:MI'),2006, 1001);
INSERT INTO ORDERS VALUES(3015,734.50, TO_DATE('06-OCT-1996 13:16','DD-MM-YYYY HH24:MI'),2004, 1002);
INSERT INTO ORDERS VALUES(3016,1729.67, TO_DATE('06-OCT-1996 13:07','DD-MM-YYYY HH24:MI'),2006, 1001);

SELECT * FROM SALESPERSON;
SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;


--1--> CUSTOMER RATING = 100

SELECT RATING, CNAME FROM CUSTOMER
WHERE RATING = 100;

--2-->RECORDS WITH NULL VALUES IN CITY COLUMN

SELECT CITY,CNAME FROM CUSTOMER
WHERE CITY  IS NULL;

--3-->LARGEST ORDER TAKEN BY EACH SALESPERSON ON EACH DATE--

SELECT S.SNAME,O.ODATE,MAX(O.AMOUNT) AS LARG_ORD
FROM ORDERS O JOIN SALESPERSON S
ON O.SNUM = S.SNUM
GROUP BY S.SNAME,O.ODATE
ORDER BY O.ODATE,S.SNAME;


SELECT SNAME,ODATE,AMOUNT
FROM(
      SELECT S.SNAME,O.ODATE,O.AMOUNT,
      RANK() OVER(
      PARTITION BY O.SNUM,O.ODATE
      ORDER BY O.AMOUNT DESC
      )RNK
      FROM ORDERS O JOIN SALESPERSON S
      ON S.SNUM=O.SNUM
      )
      WHERE RNK=1
      ORDER BY ODATE,SNAME;
                    



SELECT O.ODATE, S.SNAME , MAX(O.AMOUNT) AS MAX_AMT
FROM SALESPERSON S JOIN ORDERS O
ON S.SNUM=O.SNUM
WHERE O.AMOUNT=(SELECT MAX(O.AMOUNT) FROM ORDERS O)
GROUP BY  S.SNAME,O.ODATE;





SELECT * FROM SALESPERSON;
SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;



--4--> ARRANGE CUSTOMER TABLE IN DESCENDING

SELECT CNAME,CNUM FROM CUSTOMER
ORDER BY CNUM DESC;

--5-->5.	Find which salespeople currently have orders in the Orders table.

SELECT S.SNUM,S.SNAME,O.ONUM
FROM SALESPERSON S INNER JOIN ORDERS O 
ON S.SNUM=O.SNUM
WHERE O.SNUM=S.SNUM;

SELECT S.SNAME,COUNT(O.ONUM) AS ORDERS
FROM SALESPERSON S  LEFT JOIN ORDERS O
ON S.SNUM=O.SNUM
GROUP BY S.SNAME
ORDER BY COUNT(O.ONUM)DESC;

--6-->	List names of all customers matched with the salespeople serving them.


SELECT C.CNAME,S.SNAME
FROM CUSTOMER C  LEFT JOIN SALESPERSON S
ON C.SNUM=S.SNUM;


SELECT C.CNAME,S.SNAME AS SALESPERSON_NAME
FROM CUSTOMER C JOIN SALESPERSON S
ON C.SNUM=S.SNUM;



--7-->Find the names and numbers of all salespeople who had more than one customer.


SELECT S.SNUM,S.SNAME,COUNT(C.CNAME) AS CUSTOMERS
FROM SALESPERSON S JOIN CUSTOMER C
ON S.SNUM=C.SNUM
GROUP BY S.SNUM,S.SNAME
HAVING COUNT(C.CNAME)>1;




--8-Count the orders of each of the salespeople and output the results in descending order.


SELECT S.SNUM,S.SNAME,
COUNT(DISTINCT O.ONUM) AS TOTAL_ORDERS
FROM SALESPERSON S
JOIN ORDERS O
ON S.SNUM=O.SNUM
GROUP BY S.SNUM,S.SNAME
HAVING COUNT(DISTINCT O.ONUM) >0
ORDER BY S.SNUM, S.SNAME DESC;


SELECT S.SNAME,COUNT(O.ONUM) TOTAL_ORDERS
FROM SALESPERSON S  LEFT JOIN ORDERS O
ON S.SNUM=O.SNUM
GROUP BY S.SNAME
ORDER BY COUNT(O.ONUM) DESC;



--9-->List the Customer table if and only if one or more of the customers in the Customer tables are located in San Jose.


SELECT COUNT(CNAME),CITY FROM CUSTOMER
GROUP BY CITY
HAVING COUNT(CNAME)>1;



SELECT * FROM CUSTOMER
WHERE EXISTS(
            SELECT 1
            FROM CUSTOMER 
            WHERE CITY='SAN JOSE')
            ;



SELECT * FROM CUSTOMER
WHERE CITY='SAN JOSE';


--10-->	Match salespeople to customers according to what city they lived in.


SELECT S.SNUM,C.CNUM, C.CNAME,S.SNAME,S.CITY AS SAME_CITY
FROM SALESPERSON S INNER JOIN CUSTOMER C
ON S.CITY=C.CITY;


--11-->	Find the largest order taken by each salesperson.

SELECT S.SNAME, MAX(O.AMOUNT) AS LAR_ORD, COUNT(O.ODATE) AS DAY_WISE
FROM SALESPERSON S JOIN ORDERS O
ON O.SNUM=S.SNUM
GROUP BY S.SNAME;


SELECT S.SNAME, EXTRACT(DAY FROM O.ODATE)DAY,MAX(O.AMOUNT) AS MAX_AMT
FROM SALESPERSON S JOIN ORDERS O
ON S.SNUM=O.SNUM
GROUP BY S.SNAME,EXTRACT(DAY FROM O.ODATE)



--12-->	Find customers in San Jose who has a rating above 200.

SELECT * FROM CUSTOMER
WHERE CITY ='SAN JOSE'
AND RATING >200;

--13-->	List the names and commissions of all salespeople in London.

SELECT SNAME,CITY,COMM FROM SALESPERSON
WHERE CITY ='LONDON'
ORDER BY COMM;


SELECT * FROM SALESPERSON 
WHERE CITY='LONDON';

--14-->	List all the orders of salesperson Monika from the Orders table.

SELECT S.SNAME, O.ONUM
FROM SALESPERSON S JOIN ORDERS O
ON S.SNUM=O.SNUM
WHERE S.SNAME='MONIKA';




SELECT S.SNUM,S.SNAME,O.ONUM
FROM SALESPERSON S JOIN ORDERS O
ON S.SNUM=O.SNUM
WHERE S.SNUM='1004';

--15-->	Find all customers with orders on October 3.

SELECT C.CNAME, O.ODATE
FROM ORDERS O JOIN CUSTOMER C
ON C.CNUM=O.CNUM
WHERE O.ODATE > DATE '1996-10-02' AND O.ODATE < DATE '1996-10-04';



SELECT C.CNUM,C.CNAME,O.ODATE
FROM CUSTOMER C JOIN ORDERS O 
ON C.CNUM=O.CNUM
WHERE O.ODATE>=TO_DATE('03-10-1996','DD-MM-YYYY')
AND O.ODATE < TO_DATE('04-10-1996','DD-MM-YYYY');

SELECT C.CNAME,O.ODATE
FROM CUSTOMER C JOIN ORDERS O
ON C.CNUM=O.CNUM
WHERE O.ODATE >= DATE '1996-10-03' AND O.ODATE < DATE '1996-10-04';

--16-->Give the sums of the amounts from the orders table, grouped by date, 

SELECT  O.ODATE,SUM(O.AMOUNT)  --ALWAYS USE TRUNC
FROM ORDERS O
GROUP BY O.ODATE;

SELECT TRUNC(O.ODATE) AS ORDER_DATE,
SUM(O.AMOUNT) AS AMOUNT_TABLE
FROM ORDERS O
GROUP BY TRUNC (O.ODATE)
ORDER BY ORDER_DATE;

--17-->	Eliminating all those dates where the SUM was not at least 2000.00 above the MAX amount.

SELECT TRUNC(O.ODATE) DAY_WISE, SUM(O.AMOUNT)  AS TOT_AMOUNT FROM ORDERS O
GROUP BY TRUNC(O.ODATE) 
HAVING SUM(O.AMOUNT) >=  MAX(O.AMOUNT) + 2000;

--18-->	Select all orders that had amounts that were greater than at least one of the orders from October 6.
-- AT LEAST AMOUNT GREATER THAN ORDER OCTOBER 6

SELECT * FROM ORDERS

SELECT * FROM ORDERS O
WHERE O.AMOUNT >ANY(SELECT MAX(O.AMOUNT)
                FROM ORDERS O
                WHERE TRUNC(O.ODATE)=DATE '1996-10-05');




SELECT *
FROM ORDERS O
WHERE O.AMOUNT < ANY (
SELECT MIN(O.AMOUNT) FROM ORDERS O
WHERE TRUNC(O.ODATE)=TO_DATE('05-OCT-2006', 'DD-MON-YYYY'));

--19--Write a query that uses the EXISTS operator to extract all salespeople who have customers with a rating of 300.


SELECT * FROM SALESPERSON S
WHERE EXISTS(SELECT 1
             FROM CUSTOMER C
             WHERE S.SNUM=C.SNUM
             AND C.RATING=300);



SELECT S.SNAME FROM SALESPERSON S
WHERE  NOT EXISTS ( SELECT 1
              FROM CUSTOMER C
              WHERE S.SNUM=C.SNUM
              AND C.RATING=300);
              
 
SELECT * FROM CUSTOMER;
SELECT * FROM SALESPERSON ;

--20->Find all pairs of customers having the same rating.

SELECT  DISTINCT C1.CNAME AS CUST_1 ,C2.CNAME AS CUST_2,C1.RATING,C2.RATING
FROM CUSTOMER C1 CROSS JOIN CUSTOMER C2
WHERE C1.RATING=C2.RATING;





SELECT * FROM SALESPERSON;
SELECT * FROM ORDERS;
SELECT * FROM CUSTOMER;


21-->all customers with CNUM, 1000 above the SNUM of Serres.

SELECT SNUM+1000
FROM SALESPERSON
WHERE SNAME='SERRES';


22-->Give the salespeople’s commissions as percentage instead of decimal numbers.



SELECT SNAME,(COMM*100) || '%' AS COMM_PERCENT
FROM SALESPERSON;




23-->23.	Find the largest order taken by each salesperson on each date, eliminating those MAX orders, which are less than $3000.00 in valUE;

SELECT S.SNUM,O.ONUM,MAX(O.AMOUNT),O.ODATE,S.SNAME
FROM SALESPERSON S INNER JOIN ORDERS O
ON S.SNUM=O.SNUM
 GROUP BY  S.SNUM,O.ONUM,O.ODATE,S.SNAME
 HAVING MAX(O.AMOUNT)>3000;
 
 ---OR----
 
 
 SELECT S.SNUM,S.SNAME,O.ONUM,MAX(O.AMOUNT) AS MAX_ORDER,O.ODATE
 FROM SALESPERSON S JOIN ORDERS O
 ON S.SNUM=O.SNUM
 GROUP BY S.SNUM,S.SNAME,O.ONUM,O.ODATE
 HAVING MAX(O.AMOUNT) > 3000;
 
 
 
 
 

SELECT * FROM ORDERS O;
 --24-->24.	List the largest orders on October 3, for each salesperson.
            
 
 SELECT S.SNAME,TRUNC(O.ODATE),MAX(O.AMOUNT) AS MAX_ORD
 FROM SALESPERSON S JOIN ORDERS O
 ON S.SNUM=O.SNUM
 WHERE TRUNC(O.ODATE)= DATE '1996-10-03'
 GROUP BY S.SNAME, TRUNC(O.ODATE);
 


 --25->	Find all customers located in cities where Serres (SNUM 1002) has customers.
 
 SELECT * FROM CUSTOMER;
 SELECT * FROM SALESPERSON;
 
 
 SELECT S.SNAME,C.CNAME,C.CITY
 FROM SALESPERSON S JOIN CUSTOMER C
 ON S.SNUM=C.SNUM
 WHERE S.SNAME='SERRES';

 
--26-->	Select all customers with a rating above 200.00.

SELECT CNAME,RATING FROM CUSTOMER
WHERE RATING > 200;


--27-->	Count the number of salespeople currently listing orders in the Orders table.



SELECT COUNT(*) FROM SALESPERSON S   JOIN ORDERS O
ON S.SNUM=O.SNUM;

SELECT S.SNAME, COUNT(O.ONUM) AS TOT_ORD
FROM SALESPERSON S  JOIN ORDERS O
ON S.SNUM=O.SNUM
GROUP BY S.SNAME





---28->	Write a query that produces all customers serviced by salespeople with a commission above 12%. Output the customer’s name and the salesperson‘s rate of commission.

SELECT S.SNAME,C.CNAME,S.COMM
FROM SALESPERSON S JOIN CUSTOMER C
ON S.SNUM=C.SNUM
WHERE S.COMM >12

SELECT * FROM SALESPERSON



--29->29.	Find salespeople who have multiple customers.

SELECT S.SNAME, COUNT(C.CNUM) AS MULTIPLE_CUST
FROM SALESPERSON S JOIN CUSTOMER C
ON S.SNUM=C.SNUM
HAVING COUNT(C.CNUM) >1
GROUP BY S.SNAME;


--30-->Find salespeople with customers located in their city.

SELECT S.SNAME,C.CNAME,S.CITY,C.CITY
FROM SALESPERSON S JOIN CUSTOMER C
ON S.SNUM=C.SNUM
WHERE S.CITY=C.CITY


SELECT S.SNAME,C.CNAME,S.CITY,C.CITY
FROM SALESPERSON S CROSS JOIN CUSTOMER C
WHERE S.CITY=C.CITY


--31--Find all salespeople whose name starts with ‘P’ and the fourth character is ‘I’.


SELECT * FROM SALESPERSON 
WHERE SNAME LIKE 'P__I%';

SELECT * FROM SALESPERSON
WHERE SNAME LIKE 'P__I%';



--32-->Write a query that uses a sub query to obtain all orders for the customer named ‘Cisneros’. Assume you do not know his customer number.


SELECT * FROM ORDERS O
WHERE O.ONUM IN (SELECT O1.ONUM
                 FROM ORDERS O1 JOIN 
                    CUSTOMER C
                ON C.CNUM=O1.CNUM
                WHERE C.CNAME ='CISNEROS');
                
 SELECT * FROM CUSTOMER




SELECT C.CNAME,O.ONUM
FROM CUSTOMER C JOIN ORDERS O
ON C.CNUM=O.CNUM
WHERE C.CNAME= (SELECT C.CNAME             
                FROM CUSTOMER C
                WHERE C.CNAME='CISNEROS');


SELECT C.CNAME, O.ONUM 
FROM CUSTOMER C JOIN ORDERS O
ON C.CNUM=O.CNUM
WHERE  C.CNAME = ANY(SELECT C.CNAME
                FROM CUSTOMER C
                WHERE C.CNAME  IN 'CISNEROS');


SELECT C.CNAME,COUNT(O.ONUM)
FROM CUSTOMER C JOIN ORDERS O
ON C.CNUM=O.CNUM
 WHERE C.CNAME= ( SELECT C.CNAME
                 FROM CUSTOMER C
                 WHERE C.CNAME='CISNEROS')
 GROUP BY C.CNAME;


--33.	Find the largest orders for ‘Serres’ and ‘Rifkin’.


SELECT S.SNAME,MAX(O.AMOUNT)
FROM ORDERS O JOIN SALESPERSON S
ON S.SNUM=O.SNUM
---WHERE S.SNAME IN ('SERRES','RIFKIN')
WHERE EXISTS (SELECT 1
              FROM SALESPERSON S1
              WHERE S1.SNUM=S.SNUM 
              AND S1.SNAME IN ('SERRES', 'RIFKIN'))
GROUP BY S.SNAME;


--34-->34.	Extract the Salespeople table in the following order: SNUM, SNAME, COMMISSION, CITY.


SELECT SNUM,SNAME,COMM,CITY
FROM SALESPERSON;

--35-->35.	Select all customers whose names fall in between ‘A’ and ‘G’ alphabetical range.

SELECT  C.CNUM,C.CNAME
FROM CUSTOMER C
WHERE C.CNAME BETWEEN 'A' AND 'G';

SELECT CNUM,CNAME
FROM CUSTOMER
WHERE CNAME >= 'A' AND CNAME <='H';


--36-->	Select all the possible combinations of customers that you can assign.

SELECT C1.CNUM AS CUSTOMER1,
 C1.CNAME AS CUSTOMER1,
C2.CNUM AS CUSTOMER2,
 C2.CNAME AS CUSTOMER2
FROM CUSTOMER C1   INNER JOIN CUSTOMER C2
ON C1.CNUM < C2.CNUM;



--37-->37.	Select all orders that are greater than the average for Octobeer 4'

SELECT * FROM ORDERS O
WHERE O.AMOUNT > ALL(SELECT AVG(O1.AMOUNT)
                   FROM ORDERS O1                                  --NEED CLARIFICATION
                   WHERE TRUNC(O1.ODATE)=DATE '1996-10-04'); 
 
SELECT * FROM ORDERS O
WHERE O.AMOUNT > (SELECT AVG(O1.AMOUNT)
                   FROM ORDERS O1 
                   WHERE TRUNC(O1.ODATE)=DATE '1996-10-04'); 
                       

SELECT * FROM ORDERS
WHERE AMOUNT >ANY(SELECT AVG(AMOUNT)
                FROM ORDERS
                WHERE TRUNC(ODATE)=DATE '1996-10-04');
           



--38-->38.	Write a select command using a correlated sub query that selects the names and numbers of all customers with ratings equal to the maximum for their city.

SELECT C.CNUM,C.CNAME,C.RATING
FROM CUSTOMER C
WHERE C.RATING=(SELECT MAX(C2.RATING)
                FROM CUSTOMER C2
                WHERE C2.CITY=C.CITY);



--39-->Write a query that totals the orders for each day and places the results in descending order.

SELECT TRUNC(O.ODATE) AS DAY_WISE, COUNT(O.ONUM) AS TOT_ORD
FROM ORDERS O
GROUP BY TRUNC(O.ODATE)
ORDER BY COUNT(O.ONUM) DESC;

SELECT ODATE,
SUM(AMOUNT) AS TOTAL_AMOUNT
FROM ORDERS
GROUP BY ODATE
ORDER BY TOTAL_AMOUNT DESC;


--40-->	Write a select command that produces the rating followed by the name of each customer in San Jose.

SELECT CNUM,CNAME,CITY,RATING
FROM CUSTOMER
WHERE CITY='SAN JOSE';

SELECT CNUM,CNAME,CITY,RATING
FROM CUSTOMER
GROUP BY CNUM,CNAME,CITY,RATING
HAVING CITY='SAN JOSE';

--41-->Find all orders with amounts smaller than any amount for a customer in San Jose.

SELECT O.ONUM,O.AMOUNT
FROM ORDERS O
WHERE O.AMOUNT<ANY(SELECT 
                   O1.AMOUNT
                   FROM ORDERS O1
                   JOIN CUSTOMER C1
                   ON C1.CNUM=O1.CNUM  
                   WHERE C1.CITY='SAN JOSE');



SELECT O.ONUM,O.AMOUNT,C.CITY
FROM ORDERS O JOIN CUSTOMER C
ON O.CNUM=C.CNUM
WHERE O.AMOUNT < ANY(SELECT O.AMOUNT
                     FROM ORDERS O
                     WHERE C.CITY  NOT IN 'SAN JOSE');

                   
                   
 --42-->	Find all orders with above average amounts for their customers.
 
 SELECT C.CNAME, O.AMOUNT
 FROM CUSTOMER C JOIN ORDERS O
 ON C.CNUM=O.CNUM
 WHERE O.AMOUNT > (SELECT AVG(O2.AMOUNT)
                   FROM ORDERS O2);
                   
 
 
 SELECT O.ONUM,O.AMOUNT
 FROM ORDERS O
 WHERE O. AMOUNT > ANY (SELECT AVG(O2.AMOUNT)
                        FROM ORDERS O2
                        JOIN CUSTOMER C
                        ON O2.CNUM=C.CNUM);
                   
                   
--43-->	Write a query that selects the highest rating in each city.

SELECT CITY,MAX(RATING) FROM CUSTOMER
GROUP BY CITY;

--44->44.	Write a query that calculates the amount of the salesperson’s commission on order by a customer with a rating above 100.00


SELECT S.SNAME,C.RATING,S.COMM
FROM SALESPERSON S JOIN CUSTOMER C
ON S.SNUM=C.SNUM
WHERE C.RATING >100;


--45->45.	Count the customers with rating above San Jose’s average.

SELECT C.CNUM,C.RATING                  --UNSOLVED
FROM CUSTOMER C
WHERE C.RATING > ANY
                   (SELECT AVG(C2.RATING)
                   FROM CUSTOMER C2
                   JOIN SALESPERSON S
                   ON C2.SNUM=S.SNUM
                   WHERE C.CITY ='SAN JOSE');
                   

SELECT COUNT(*) AS CUSTOMER_COUNT
FROM CUSTOMER 
WHERE RATING = ( SELECT AVG(C1.RATING)
                   FROM CUSTOMER C1
                   WHERE C1.CITY='SAN JOSE');




SELECT * FROM SALESPERSON S
SELECT * FROM CUSTOMER C

                   
                   
 --46-->46.	Write a query that produces all pairs of salespeople with themselves as well as duplicate rows with the order reversed.
 
 SELECT S.SNUM,S2.SNUM,S.SNAME,S2.SNAME
 FROM SALESPERSON S CROSS JOIN SALESPERSON S2
 GROUP BY S.SNUM,S2.SNUM,S.SNAME,S2.SNAME
 HAVING S.SNUM=S2.SNUM
 ORDER BY S.SNUM ;
-----------------------------------------
SELECT S.SNUM AS SNUM1,
       S2.SNUM AS SNUM2,
       S.SNAME AS SNAME1,
       S2.SNAME AS SNAME2
       FROM SALESPERSON S 
       CROSS JOIN SALESPERSON S2
       ORDER BY S.SNUM,S2.SNUM;


--47-->47.	Find all salespeople that are located in either Barcelona or London.

SELECT S.SNAME,S.CITY
FROM SALESPERSON S 
WHERE S.CITY IN ('BARCELONA','LONDON');


---USING HAVING

SELECT S.SNUM,S.SNAME,S.CITY
FROM SALESPERSON S
GROUP BY S.SNUM,S.SNAME,S.CITY
HAVING S.CITY IN('LONDON','BARCELONA');


--48->.	Find all salespeople with only one customer.

SELECT S.SNAME,COUNT(C.CNUM) AS TOT_CUST
FROM SALESPERSON S JOIN CUSTOMER C
ON S.SNUM=C.SNUM
HAVING COUNT(C.CNUM)=1
GROUP BY S.SNAME;




--how to find how many customers each salesperson have

SELECT S.SNUM,S.SNAME,COUNT(C.CNUM) AS CUST_COUNT
FROM SALESPERSON S LEFT JOIN CUSTOMER C
ON S.SNUM=C.SNUM
GROUP BY S.SNUM,S.SNAME
ORDER BY S.SNUM;



--49->49.	Write a query that joins the Customer table to itself to find all pairs of customers served by a single salesperson.

SELECT C1.CNAME AS CUSTOMER1,
       C2.CNAME AS CUSTOMER2,    --NOT UNDERSTAND
       C1.SNUM
       FROM CUSTOMER C1
       JOIN CUSTOMER C2
       ON C1.SNUM=C2.SNUM
       WHERE C1.CNUM < C2.CNUM;


--50-->	Write a query that will give you all orders for more than $1000.00.

   SELECT ONUM,AMOUNT
   FROM ORDERS
   WHERE AMOUNT > 1000;

--51-->	Write a query that lists each order number followed by the name of the customer who made that order.

SELECT C.CNAME,O.ONUM
FROM CUSTOMER C JOIN ORDERS O
ON C.CNUM=O.CNUM



--52-->	Write 2 queries that select all salespeople (by name and number) who have customers in their cities who they do not service, one using a join and one a correlated subquery. Which solution is more elegant


SELECT S.SNAME,C.CNAME, S.CITY,C.CITY
FROM SALESPERSON S CROSS JOIN CUSTOMER C
WHERE S.CITY=C.CITY AND S.SNUM<>C.SNUM

SELECT S.SNAME,C.CNAME,S.CITY,C.CITY
FROM SALESPERSON S  CROSS JOIN CUSTOMER C
WHERE S.CITY = ANY(SELECT C1.CITY
                   FROM CUSTOMER C1
                   WHERE S.SNUM=C.SNUM);


--USING SUBQUERY---

   --AVOIDING DUPLICA
            
 SELECT S.SNAME
 FROM SALESPERSON S
 WHERE EXISTS
 (SELECT 1
 FROM CUSTOMER C
 WHERE S.CITY=C.CITY
 AND S.SNUM<>C.SNUM);


--53-->	Write a query that selects all customers whose ratings are equal than ANY (in the SQL sense) of Serres.



SELECT C.CNAME,C.RATING
FROM CUSTOMER C
WHERE C.RATING = ANY(SELECT C2.RATING
                    FROM CUSTOMER C2
                    JOIN SALESPERSON S
                    ON C2.SNUM=S.SNUM
                    WHERE S.SNAME='SERRES');
   

SELECT * FROM CUSTOMER
SELECT * FROM SALESPERSON S



SELECT S.SNUM, S.SNAME,C.CNUM,C.RATING
 FROM SALESPERSON S JOIN CUSTOMER C        --EXTRACED SERRES CUST
 ON S.SNUM=C.SNUM
 WHERE C.RATING IN (200, 300)
 GROUP BY S.SNUM,S.SNAME,C.CNUM,C.RATING
 --HAVING S.SNAME='SERRES';
 
 ------
 
 
 
--54-->	Write2 queries that will produce all orders taken on October3 or October 4.

SELECT O.ONUM, TRUNC(O.ODATE) 
FROM ORDERS O
WHERE TRUNC(O.ODATE) BETWEEN DATE '1996-10-03' AND DATE '1996-10-04';


SELECT *
FROM ORDERS O 
WHERE TRUNC(O.ODATE) BETWEEN
                       TO_DATE('03-OCT-1996','DD-MON-YYYY') AND
                       TO_DATE('04-OCT-1996', 'DD-MON-YYYY' )

                   
 --USING ANSI DATE RANGE--
 
 SELECT * FROM ORDERS 
 WHERE ODATE >= DATE '03-OCT-1996' AND  ODATE <  DATE '05-OCT-1996';                --oracle does not accept (mon) format
 
 SELECT * FROM ORDERS                                                        ---DATE FORMAT ACCEPT ON YYYY-MM-DD FORMAT 
 WHERE ODATE >= DATE '1996-10-03' AND ODATE < DATE '1996-10-05';


--55.	Write a query that produces all pairs of orders by a given customer. Name that customer and eliminate duplicates.

SELECT C.CNUM,C.CNAME, COUNT(O.ONUM) AS CUST_ORDERS
FROM CUSTOMER C  JOIN ORDERS O
ON C.CNUM=O.CNUM
GROUP BY C.CNUM,C.CNAME
ORDER BY COUNT(O.ONUM);  --WE CAN WRITE BOTH O.ONUM,C.CNUM


SELECT DISTINCT C.CNUM,C1.CNUM,C.CNAME,COUNT(O.ONUM)
FROM CUSTOMER C JOIN CUSTOMER C1
ON C.CNUM=C1.CNUM
JOIN ORDERS O
ON C1.CNUM=O.CNUM
GROUP BY C.CNUM,C1.CNUM,C.CNAME;


--56--	Find only those customers whose ratings are higher than every customer in Rome.

SELECT * FROM CUSTOMER C
WHERE C.RATING > ANY(SELECT C2.RATING
                    FROM CUSTOMER C2
                    WHERE C2.CITY='ROME');
 
 SELECT * FROM CUSTOMER
 WHERE RATING > ALL(SELECT RATING
                   FROM CUSTOMER WHERE CITY='ROME');
 
 ---AMOUNT > THAN ANY ORDER AMOUNT OF CUSTOMER 2001; 
 
                  
 SELECT O.AMOUNT FROM ORDERS O
 WHERE O.AMOUNT > ANY (SELECT O1.AMOUNT
                     FROM ORDERS O1
                     JOIN CUSTOMER C
                     ON C.CNUM=O1.CNUM
                     WHERE C.CNUM=2001);

                  
 
 

SELECT * FROM CUSTOMER C
SELECT * FROM ORDERS O 
 

---Orders smaller than all orders of customer 3001

SELECT * FROM ORDERS O
WHERE O.AMOUNT < ANY(SELECT 
                       MIN(O1.AMOUNT)
                       FROM ORDERS O1
                       JOIN CUSTOMER C
                       ON C.CNUM=O1.CNUM
                       WHERE C.CNUM=2001);






SELECT C.CNUM,O.ONUM,O.AMOUNT
FROM CUSTOMER C JOIN ORDERS O
ON C.CNUM=O.CNUM
WHERE O.AMOUNT <ALL (SELECT O1.AMOUNT
                     FROM ORDERS O1
                     JOIN CUSTOMER C
                     ON O1.CNUM=C.CNUM
                     WHERE C.CNUM=2001);



--57--find customer who have not placed any orders

SELECT C.CNAME,COUNT(O.ONUM) AS TOT_ORD
FROM CUSTOMER C JOIN ORDERS O
ON C.CNUM=O.CNUM
HAVING COUNT(C.CNUM) <1
GROUP BY C.CNAME;


SELECT C.CNAME,COUNT(O.ONUM)
FROM CUSTOMER C  LEFT JOIN ORDERS O
ON C.CNUM=O.CNUM
HAVING COUNT(O.ONUM)=0
GROUP BY C.CNAME;

  --OR---
  
SELECT * FROM CUSTOMER C
WHERE NOT EXISTS (
SELECT 1
FROM ORDERS O
WHERE C.CNUM=O.CNUM);



--57--	Write a query on the customers table whose output will exclude all customers with a rating < = 100.00, unless they are located in Rome.

SELECT C.CNAME,C.RATING,C.CITY
FROM CUSTOMER C
WHERE C.RATING =ANY(SELECT C1.RATING
                    FROM CUSTOMER C1
                    WHERE C1.CITY IN 'ROME' AND C1.RATING >100);
                    


SELECT * FROM CUSTOMER
WHERE RATING > ANY (SELECT RATING
FROM CUSTOMER WHERE CITY = 'ROME');



--58-->	Find all rows from the Customer table for which the salesperson number is 1001.

SELECT S.SNUM,S.SNAME,C.CNUM,C.CNAME
FROM CUSTOMER C JOIN SALESPERSON S
ON C.SNUM=S.SNUM
WHERE S.SNUM=1001;
 
 

--59--Find the total amount in Orders for each salesperson for which this total is greater than the amount of the largest order in the table.


--CORRECT
SELECT S.SNAME,SUM(O.AMOUNT) AS TOT_ORD
FROM SALESPERSON S JOIN ORDERS O
ON S.SNUM=O.SNUM
HAVING SUM(O.AMOUNT) > ALL(SELECT MAX(O.AMOUNT)
                            FROM ORDERS O)
GROUP BY S.SNAME;
                           

SELECT * FROM ORDERS



--60--	Write a query that selects all orders that have Zeroes or NULL in the Amount field.


SELECT * FROM ORDERS
WHERE AMOUNT IS NULL;

OR
SELECT * FROM ORDERS 
WHERE AMOUNT = NULL;




--61-->Produce all combinations of salespeople and customer names such that the former precedes the latter alphabetically, and the latter has a rating of less than 200.

SELECT S.SNAME,C.CNAME FROM SALESPERSON S
 CROSS JOIN CUSTOMER C
 ON C.SNUM=S.SNUM          ---NO NEED OF ON IN CROSS JOIN
WHERE S.SNAME<C.CNAME AND C.RATING < 200;

SELECT S.SNAME,C.CNAME ,C.RATING FROM SALESPERSON S 
CROSS JOIN CUSTOMER C
WHERE S.SNAME < C.CNAME
AND C.RATING <200;


--62-->62.	List all salespeople’s names and the commission they have earned.

SELECT SNUM,SNAME,COMM
FROM SALESPERSON;


--63-->Write a query that produces the names and cities of all customers with the same rating as Hoffman.
-- Write the query using Hoffman’s CNUM rather than his rating, so that it would still be usable if his rating changed.

              
SELECT CNAME,CITY,RATING FROM CUSTOMER 
WHERE RATING = (SELECT C1.RATING 
               FROM CUSTOMER C1
               WHERE C1.CNUM=2001)
               AND CNUM<>2001;



--64-->	Find all salespeople for whom there are customers that follow them in alphabetical order.

SELECT S.SNAME,C.CNAME
FROM SALESPERSON S   JOIN CUSTOMER C
ON S.SNUM=C.SNUM
WHERE C.CNAME <S.SNAME;


SELECT S.SNUM,S.SNAME
FROM SALESPERSON S
WHERE EXISTS ( SELECT 1
             FROM CUSTOMER C
             WHERE C.SNUM=S.SNUM
             AND C.CNAME >S.SNAME);




SELECT DISTINCT S.SNAME,C.CNAME
FROM SALESPERSON S JOIN CUSTOMER C
ON S.SNUM=C.SNUM
WHERE S.SNAME < C.CNAME;


--65-->Write a query that produces the names and ratings of all customers of all who have above average orders.


SELECT C.CNAME,C.RATING, O.AMOUNT
FROM CUSTOMER C JOIN ORDERS O
ON C.CNUM=O.CNUM
WHERE O.AMOUNT > ALL(SELECT AVG(O.AMOUNT)
                     FROM ORDERS O)

GROUP BY C.CNAME,C.RATING, O.AMOUNT;






--66-->66.	Find the sum of all purchases from the Orders table.


SELECT SUM(O.AMOUNT)
FROM ORDERS O;

SELECT C.CNAME,SUM(O.AMOUNT)
FROM CUSTOMER C JOIN ORDERS O
ON C.CNUM=O.CNUM
GROUP BY C.CNAME;




--67-->	Write a select command that produces the order number, amount, and date for all rows in the Order table.

SELECT * FROM ORDERS;



--68-->68.	COUNT the number of not null rating fields in the Customer table including duplicates.




SELECT COUNT(RATING) AS NOT_NULL_RATING   --COUNT NEVER RETURN DUPLCATE
FROM CUSTOMER;

SELECT CNAME FROM CUSTOMER
WHERE CNAME IS NOT NULL;

--


--69-->69.	Write a query that gives the names of both the salesperson and the customer for each order after the order number.

SELECT S.SNAME,C.CNAME,O.ONUM
FROM SALESPERSON S JOIN CUSTOMER C
ON S.SNUM=C.SNUM
JOIN ORDERS O
ON C.CNUM=O.CNUM



--70-->List the commissions of all salespeople servicing customers in London.

SELECT S.SNUM,S.SNAME,S.COMM,C.CNUM,C.CNAME,C.CITY
FROM SALESPERSON S JOIN CUSTOMER C
ON S.SNUM=C.SNUM
WHERE C.CITY='LONDON';



--71-->Write a query using ANY or ALL that will find all salespeople who have no customers located in their city.

SELECT S.SNAME,C.CNAME,S.CITY,C.CITY
FROM SALESPERSON S JOIN CUSTOMER C
ON S.SNUM=C.SNUM  
WHERE S.CITY<>ANY(SELECT C1.CITY
                   FROM CUSTOMER C1 
                    JOIN SALESPERSON S
                    ON C1.CITY=S.CITY
                    )
                    AND S.CITY<>C.CITY;
                    
                    
                    
    







         
SELECT * FROM SALESPERSON S          --TACTICAL QUESTION
WHERE S.CITY <> ANY ( SELECT C.CITY
                       FROM CUSTOMER C
                       WHERE C.SNUM=S.SNUM)
                       
                       AND S.SNUM NOT IN (
                       SELECT C.SNUM 
                       FROM CUSTOMER C
                       WHERE C.CITY=S.CITY);
           



               
 SELECT * FROM SALESPERSON S
 WHERE S.CITY <> ALL (
         SELECT C.CITY
         FROM CUSTOMER C
         WHERE S.SNUM=C.SNUM);
               
--USING EXISTS

SELECT * FROM SALESPERSON S
WHERE   NOT EXISTS (
        SELECT 1 
        FROM CUSTOMER C
        WHERE C.SNUM=S.SNUM
        AND C.CITY=S.CITY  ); 
        
    
---cust with the same city
SELECT * FROM SALESPERSON S
WHERE EXISTS (
SELECT 1
FROM CUSTOMER C
WHERE C.SNUM=S.SNUM    
AND C.CITY=S.CITY);
        
 
---72--   Write a query using the EXISTS operator that selects all salespeople with customers located in their cities who are not assigned to them.

SELECT S.SNAME,C.CNAME,S.CITY,C.CITY
FROM SALESPERSON S JOIN CUSTOMER C
ON S.CITY=C.CITY
WHERE S.SNUM<>C.SNUM;

                
SELECT * FROM SALESPERSON S
WHERE NOT EXISTS(SELECT 1
                  FROM CUSTOMER C1
                  WHERE C1.SNUM=S.SNUM
                  AND C1.CITY=S.CITY);


--73-->73.	Write a query that selects all customers serviced by Peel or Motika.

SELECT * FROM SALESPERSON S
WHERE EXISTS (SELECT 1
FROM CUSTOMER C
WHERE C.SNUM=S.SNUM AND S.SNAME IN ('PEEL','MOTIKA'));

SELECT * FROM CUSTOMER C
WHERE EXISTS (SELECT 1
             FROM SALESPERSON S
             WHERE S.SNUM=C.SNUM
             AND S.SNAME IN ('PEEL', 'MONIKA'));             
                
        
 
--74-->	Count the number of salespeople registering orders for each day. (If a salesperson has more than one order on a given day, he or she should be counted only once.).

SELECT S.SNAME,TRUNC(O.ODATE)AS DAY_WISE, COUNT(O.ONUM) TOT_ORD
FROM SALESPERSON S JOIN ORDERS O
ON S.SNUM=O.SNUM
GROUP BY S.SNAME, TRUNC(O.ODATE)




--EACH SALESPERSON ORDERS

SELECT S.SNAME,COUNT(O.ONUM) AS TOTAL_ORDERS
FROM SALESPERSON S JOIN ORDERS O
ON S.SNUM=O.SNUM
GROUP BY S.SNAME;


--75-->75.	Find all orders attributed to salespeople in London.

SELECT S.SNUM,S.SNAME,S.CITY,O.ONUM
FROM SALESPERSON S JOIN ORDERS O
ON S.SNUM=O.SNUM
WHERE S.CITY='LONDON';

     
--76-->76.	Find all orders by customers not located in the same cities as their salespeople.

SELECT O.ONUM,C.CNAME,S.SNAME,C.CITY,S.CITY
FROM SALESPERSON S JOIN CUSTOMER C
ON S.SNUM=C.SNUM
JOIN ORDERS O
ON O.CNUM=C.CNUM
WHERE S.CITY<>C.CITY;



---WITH SAME ORDERS

SELECT O.ONUM,C.CNAME,S.SNAME,C.CITY,S.CITY
FROM SALESPERSON S JOIN CUSTOMER C
ON S.SNUM=C.SNUM
JOIN ORDERS O
ON O.CNUM=C.CNUM
WHERE C.CITY=S.CITY;


SELECT * FROM CUSTOMER


--77->77.	Find all salespeople who have customers with more than one current order.



SELECT COUNT(S.SNUM) AS TOT_CUST_ID,S.SNAME,C.CNUM AS CUST_ID,C.CNAME,COUNT(O.ONUM) AS TOT_ORDRS
FROM SALESPERSON S JOIN CUSTOMER C
ON S.SNUM=C.SNUM JOIN ORDERS O
ON C.CNUM=O.CNUM
GROUP BY C.CNAME,C.CNUM,S.SNAME
HAVING COUNT(O.ONUM) > 1
ORDER BY COUNT(O.ONUM);


              


--78-->78.	Write a query that extracts from the Customer table every customer assigned to a salesperson who currently 
--has at least one other customer (besides the customer being selected) with orders in the Orders table.

SELECT C.CNUM,C.CNAME
FROM CUSTOMER C             --NOT UNDERSTAND
WHERE EXISTS (SELECT 1
             FROM CUSTOMER C2
             JOIN ORDERS O
             ON C2.CNUM=O.CNUM
             WHERE C2.SNUM=C.SNUM
             AND C2.CNUM<>C.CNUM);



  



SELECT * FROM SALESPERSON
SELECT * FROM CUSTOMER
SELECT * FROM ORDERS





--79-->.	Write a query that selects all customers whose name begins with ‘C’.

SELECT * FROM CUSTOMER 
WHERE CNAME LIKE ('C%');

SELECT CNAME FROM CUSTOMER 
GROUP BY CNAME
HAVING CNAME LIKE ('C%');



--80-->	Write a query on the Customers table that will find the highest rating in each city. Put the output in this form:  for the city (city) the highest rating is : (rating).


SELECT CITY, MAX(RATING) AS HIGHEST_RATING
FROM CUSTOMER
GROUP BY CITY;
       

--81-->81.	Write a query that will produce the Snum values of all salespeople with orders currently in the Orders table without any repeats.


SELECT S.SNUM,S.SNAME,COUNT(O.ONUM) AS TOT_ORDRS
FROM SALESPERSON S JOIN ORDERS O
ON S.SNUM=O.SNUM
GROUP BY S.SNUM,S.SNAME
ORDER BY S.SNUM;


--82-->	Write a query that lists customers in descending order of rating. Output the rating field first, followed by the customers’ names and numbers.

SELECT C.RATING ,C.CNUM,C.CNAME
FROM CUSTOMER C
GROUP BY C.RATING,C.CNUM,C.CNAME
ORDER BY C.RATING DESC;



--83-->83.	Find the average commission for salespeople in London.

SELECT AVG(COMM) AS AVG_COMMISSION FROM SALESPERSON 
WHERE CITY='LONDON';


SELECT S.CITY,AVG(S.COMM) AS AVG_COMMISION_LONDON
FROM SALESPERSON S
GROUP BY S.CITY
HAVING S.CITY='LONDON';


-----84------

SELECT O.* FROM ORDERS O       --NOT UNDERSTAND
WHERE O.SNUM=(SELECT C.SNUM
             FROM CUSTOMER C
             WHERE C.CNAME='HOFFMAN');
          
SELECT * FROM SALESPERSON
SELECT * FROM CUSTOMER
SELECT * FROM ORDERS
          
--85-->.	Find all salespeople whose commission is in between 10 and 12 both inclusive.
 SELECT * FROM SALESPERSON S
 WHERE COMM BETWEEN 10 AND 12;


--86-->	Write a query that will give you the names and cities of all salespeople in London with commission above 10

SELECT S.SNUM,S.SNAME,S.CITY,S.COMM
FROM SALESPERSON S
WHERE S.CITY='LONDON' AND S.COMM > 10;


--87->87.	What will be the output from the following query? 
SELECT * FROM ORDERS WHERE (AMOUNT < 1000 OR NOT (ODATE =DATE '10/03/1996' 'DD-MM-YYYY' AND CNUM > 2003));

SELECT O.* FROM ORDERS O JOIN CUSTOMER C
ON C.CNUM=O.CNUM
WHERE O.AMOUNT < 1000 OR O.ODATE=TO_DATE( '10-OCT-1996' ,'DD-MON-YYYY') AND C.CNUM >2003;


--88-->88.	Write a query that selects each customer’s smallest order.


SELECT C.CNAME,MIN(O.AMOUNT)AS MIN_ORD
FROM CUSTOMER C JOIN ORDERS O
ON C.CNUM=O.CNUM
GROUP BY C.CNAME


SELECT * FROM CUSTOMER
SELECT * FROM ORDERS

--89-->	Write a query that selects the first customer in alphabetical order whose name begins with ‘G’.

SELECT C.CNUM,C.CNAME FROM CUSTOMER C
WHERE C.CNAME LIKE ('G%');

--90-->90.	Write a query that counts the number of different not NULL city values in the Customers table.

SELECT COUNT(CITY) FROM CUSTOMER;

--91-->91.	Find the average amount from the Orders table.

SELECT AVG(AMOUNT) FROM ORDERS;

--92-->	What would be the output from the following query?
SELECT O.* FROM ORDERS O JOIN SALESPERSON S  ON S.SNUM=O.SNUM WHERE NOT  O.ODATE =DATE '1996-10-03'  OR S.SNUM>1006 AND O.AMOUNT >=1500;


--93->93.	Find all customers who are not located in San Jose & whose rating is above 200.

SELECT * FROM CUSTOMER 
WHERE CITY NOT IN ('SAN JOSE') AND RATING > 200;

--94-->	Give a simpler way to write this query:
SELECT Snum, Sname, city, Comm FROM salespeople WHERE (Comm>0.12 and Comm <0.14);

SELECT * FROM SALESPERSON S
WHERE COMM > 12 AND COMM <14;

SELECT * FROM SALESPERSON S
WHERE COMM BETWEEN 13 AND 14;


--95-->Evaluate the following query:  -

SELECT O.* FROM ORDERS O JOIN SALESPERSON S          --not understand
ON S.SNUM=O.SNUM
 WHERE NOT ((O.ODATE = DATE '1996-10-03' AND S.SNUM>1002) OR O.AMOUNT >2000);


--96-->;	Which salespeople attend to customers not in the city they have been assigned to?


SELECT * FROM SALESPERSON S
 WHERE S.CITY <> ALL (
                    SELECT C.CITY
                    FROM CUSTOMER C
                    WHERE C.SNUM=S.SNUM);


--97-->	Which salespeople get commission greater than 0.11 and serving customers rated less than 250?

SELECT S.SNAME,C.RATING,S.COMM
FROM SALESPERSON S JOIN CUSTOMER C
ON S.SNUM=C.SNUM
WHERE S.COMM>11 AND C.RATING < 250;



--98-->	Which salespeople have been assigned to the same city but get different commission percentages?
   
SELECT S.SNAME,C.CNAME,S.CITY,C.CITY,S.COMM
FROM SALESPERSON S JOIN CUSTOMER C --FRANC GETS DIFF COMM
ON S.CITY=C.CITY;




SELECT * FROM SALESPERSON S
WHERE S.CITY = ALL( SELECT S1.CITY              --NOT SOLVED
                    FROM SALESPERSON S1
                    WHERE S.SNUM=S1.SNUM
                    AND S.COMM<>S1.COMM);

--99-->99.	Which salesperson has earned the most by way of commission?

SELECT S.SNUM,S.SNAME, MAX(S.COMM)
FROM SALESPERSON S
GROUP BY S.SNUM,S.SNAME
ORDER BY MAX(S.COMM) DESC;


SELECT MAX(S.COMM)
FROM SALESPERSON S

SELECT MAX(S.COMM), S.SNAME 
FROM SALESPERSON S
GROUP BY S.SNAME
ORDER BY MAX(S.COMM) DESC;

--100-->Does the customer who has placed the maximum number of orders have the maximum rating?

SELECT C.CNUM,COUNT(O.ONUM) AS TOTAL_ORDRS, C.RATING,C.CNAME
FROM CUSTOMER C JOIN ORDERS O
ON C.CNUM=O.CNUM
GROUP BY C.CNUM,C.RATING,C.CNAME              --NO DOESTN'T HAVE MAX RATING TO THE CUSTOMER WHO PLACED MORE ORDERS
ORDER BY COUNT(O.ONUM) DESC;


--101-->101.	Has the customer who has spent the largest amount of money been given the highest rating?

SELECT C.CNUM,C.CNAME,SUM(O.AMOUNT) AS LARGEST_AMT,C.RATING
FROM CUSTOMER C JOIN ORDERS O
ON C.CNUM=O.CNUM                         --NO CONDITION NOT SATISFIED
GROUP BY C.CNUM,C.CNAME,C.RATING
ORDER BY SUM(O.AMOUNT);



--102-->102.	List all customers in descending order of customer rating.

SELECT * FROM CUSTOMER
ORDER BY RATING DESC;


--103-->103.	On which days has Hoffman placed orders?


SELECT C.CNUM,C.CNAME,O.ONUM,O.ODATE
FROM CUSTOMER C JOIN ORDERS O
ON C.CNUM=O.CNUM
WHERE CNAME='HOFFMAN';

--104-->104.	Do all salespeople have different commissions?

SELECT * FROM SALESPERSON S1
        WHERE S1.COMM = ALL (
                                SELECT S2.COMM
                                 FROM SALESPERSON S2
                                WHERE S1.COMM=S2.COMM); 
                                
 SELECT CASE 
 WHEN COUNT(*)=COUNT(DISTINCT COMM)
   THEN 'YES'
     ELSE 'NO'
       END AS ALL_COMMISSIONS_DIFF
       FROM SALESPERSON ;


--105-->105.	Which salespeople have no orders between 10/03/1996 and 10/05/1996?

SELECT S.SNUM,S.SNAME FROM SALESPERSON S
LEFT JOIN ORDERS O           ---TRICKY ONE
 ON S.SNUM=O.SNUM
AND O.ODATE BETWEEN DATE '1996-10-03' AND DATE '1996-10-05'
WHERE O.SNUM IS NULL;

              


--106-->106.	How many salespersons have succeeded in getting orders?


SELECT S.SNUM,S.SNAME,COUNT(O.ONUM)
FROM SALESPERSON S LEFT JOIN ORDERS O
ON S.SNUM=O.SNUM
GROUP BY S.SNUM,S.SNAME
ORDER BY S.SNUM;

--107-->107.	How many customers have placed orders?

SELECT C.CNUM,C.CNAME,COUNT(O.ONUM) AS PLACED_ORDERS
FROM CUSTOMER C LEFT JOIN ORDERS O
ON C.CNUM = O.CNUM
GROUP BY C.CNUM,C.CNAME
ORDER BY C.CNUM;

--108-->1.	On which date has each salesperson booked an order of maximum value?

SELECT S.SNUM, S.SNAME,MAX(O.AMOUNT),TRUNC(O.ODATE)  AS DAYE_WISE
FROM SALESPERSON S JOIN ORDERS O
ON S.SNUM=O.SNUM
GROUP BY S.SNAME,S.SNUM,TRUNC(O.ODATE)
ORDER BY TRUNC(O.ODATE) ;

SELECT * FROM ORDERS


SELECT COUNT(S.SNUM) ,S.SNAME,MAX(O.AMOUNT),TRUNC(O.ODATE)
FROM SALESPERSON S  LEFT JOIN ORDERS O
ON  S.SNUM=O.SNUM
GROUP BY S.SNAME,TRUNC(O.ODATE)
ORDER BY MAX(O.AMOUNT);


--109-->109.	Who is the most successful salesperson?

SELECT  S.SNUM,S.SNAME,
COUNT(O.ONUM) AS TOT_ORDRS,SUM(O.AMOUNT),S.COMM
FROM SALESPERSON S JOIN CUSTOMER C
ON S.SNUM=C.SNUM
JOIN ORDERS O
ON S.SNUM=O.SNUM
GROUP BY S.SNUM ,S.SNAME,S.COMM
ORDER BY SUM(O.AMOUNT) DESC;




--110.	Who is the worst customer with respect to the company?

SELECT C.CNUM,C.CNAME,COUNT(O.ONUM) AS TOT_ORDERS,C.RATING
FROM CUSTOMER C  LEFT JOIN ORDERS O
ON C.CNUM=O.CNUM
GROUP BY C.CNUM,C.CNAME,C.RATING
HAVING COUNT(O.ONUM) < 2 AND C.RATING < 200
ORDER BY COUNT(O.ONUM);


--111->111.	Are all customers not having placed orders greater than 200 totally been serviced by salesperson Peel or Serres?

SELECT S.SNAME,C.CNAME,O.AMOUNT
FROM SALESPERSON S JOIN CUSTOMER C
ON S.SNUM=C.SNUM                       ---YES BEEN SERVICED BY PEEL OR SERRES
JOIN ORDERS O 
ON O.CNUM=C.CNUM
WHERE S.SNAME IN ('PEEL','SERRES') ;


--WHERE S.SNAME IN ('PEEL','SERRES') AND O.AMOUNT < 200
GROUP BY S.SNUM,S.SNAME,C.CNUM,C.CNAME,O.ONUM,O.AMOUNT
HAVING S.SNAME  IN ('PEEL','SERRES') AND O.AMOUNT < 200
ORDER BY S.SNUM;



---

---112-->112.	Which customers have the same rating?

SELECT DISTINCT C1.CNUM,C1.CNAME,C2.CNUM,C2.CNAME, C1.RATING ,C2.RATING
FROM CUSTOMER C1 CROSS JOIN CUSTOMER C2
WHERE C1.RATING=C2.RATING


--113->113.	Find all orders greater than the average for October 4th.

SELECT TRUNC(O.ODATE), O.AMOUNT
FROM ORDERS O
WHERE O.AMOUNT >ALL(SELECT AVG(O.AMOUNT)
                     FROM ORDERS O
                     WHERE TRUNC(O.ODATE) IN DATE '1996-10-04');

SELECT TRUNC(O.ODATE), AVG(O.AMOUNT) 
FROM ORDERS O
GROUP BY TRUNC(O.ODATE);






SELECT TRUNC(O.ODATE),O.AMOUNT
FROM ORDERS O
WHERE O.AMOUNT > (SELECT AVG(O.AMOUNT)
                  FROM ORDERS O
                  WHERE TRUNC(O.ODATE) = DATE '1996-10-04')
GROUP BY TRUNC(O.ODATE),O.AMOUNT;
            


--114-->114.	Which customers have above average orders?        -

SELECT C.CNAME,O.AMOUNT
FROM CUSTOMER C JOIN ORDERS O 
ON C.CNUM=O.CNUM
WHERE O.AMOUNT >(SELECT AVG(O.AMOUNT)
                 FROM ORDERS O);


SELECT COUNT(*),AVG(O.AMOUNT) FROM ORDERS O


--115-->115.	List all customers with ratings above San Jose’s average.

SELECT 



SELECT C.CNAME,C.RATING  ,O.AMOUNT
FROM CUSTOMER C JOIN ORDERS O
ON C.CNUM =O.CNUM
WHERE O. AMOUNT >ANY(SELECT AVG(O.AMOUNT)
                  FROM ORDERS O
                  )               
GROUP BY C.CNAME,C.RATING , O.AMOUNT;


--116-->Select the total amount in orders for each salesperson for which the total is greater than the amount of the largest order in the table.


SELECT S.SNAME, SUM(O.AMOUNT) FROM ORDERS O
JOIN SALESPERSON S
ON S.SNUM=O.SNUM
HAVING SUM(O.AMOUNT) > ALL( SELECT MAX(O1.AMOUNT) FROM ORDERS O1)
GROUP BY S.SNAME;



--117-->	Give names and numbers of all salesperson that have more than one customer.

SELECT S.SNUM,S.SNAME,COUNT(C.CNUM) AS TOTAL_CUST
FROM SALESPERSON S JOIN  CUSTOMER C
ON S.SNUM=C.SNUM
GROUP BY S.SNUM,S.SNAME
HAVING COUNT(C.CNUM)>1
ORDER BY COUNT(C.CNUM);

--118-->	Select all salesperson by name and numbers who have customers in their city whom they don’s the service.

SELECT S.SNUM,S.SNAME,C.CNUM,C.CNAME
FROM SALESPERSON S JOIN CUSTOMER C
ON S.SNUM=C.SNUM
WHERE S.CITY = C.CITY AND S.SNUM <> C.CNUM;


      
--119->119.	Which customers’ rating should be lowered?

                --UNSOLVED---
                
--120->120.	Is there a case for assigning a salesperson to Berlin?

SELECT C.CNUM,C.CNAME,C.CITY FROM CUSTOMER C
WHERE C.CITY='BERLIN'
AND NOT EXISTS ( SELECT 1
              FROM SALESPERSON S
              WHERE S.SNUM=C.SNUM);

--121-->121.	Is there any evidence linking the performance of a salesperson to commission that he or she is being paid?

SELECT S.SNUM,S.SNAME,S.COMM,COUNT(C.CNUM)AS TOT_CUST,COUNT(O.ONUM) AS TOT_ORDERS,SUM(O.AMOUNT) AS TOT_AMOUNT
FROM SALESPERSON S  JOIN CUSTOMER C
ON S.SNUM=C.SNUM                               ---REQUIRED ANS NOT FOUND
JOIN ORDERS O
ON S.SNUM=O.SNUM
GROUP BY S.SNUM,S.SNAME,S.COMM
ORDER BY COUNT(O.ONUM);



--122-->122.	Dose the total amount in orders by customer in Rome and London exceeds the commission paid to salesperson in London and New York by more than 5 times?

SELECT S.SNUM,S.SNAME,C.CNUM,C.CNAME,S.COMM,SUM(O.AMOUNT) AS TOT_AMT
FROM SALESPERSON S JOIN CUSTOMER C
ON S.SNUM=C.SNUM
JOIN ORDERS O
ON S.SNUM=O.SNUM
WHERE C.CITY IN ('ROME','LONDON') AND S.CITY IN ('LONDON', 'NEW YORK')
GROUP BY S.SNUM,S.SNAME,C.CNUM,C.CNAME,S.COMM
ORDER BY SUM(O.AMOUNT);

--123-->Which is the date, order number, amt and city for each salesperson (byname) for   the maximum order he has obtained?


SELECT  S.SNAME,TRUNC(O.ODATE) AS BY_DATE, MAX(O.AMOUNT) AS MAX_ORD,C.CITY
FROM SALESPERSON S JOIN ORDERS O
ON S.SNUM=O.SNUM
JOIN CUSTOMER C
ON C.SNUM=O.SNUM
GROUP BY S.SNAME,TRUNC(O.ODATE),C.CITY;



SELECT S.SNAME, MAX(O.AMOUNT), TRUNC(O.ODATE),C.CITY,O.ONUM
FROM SALESPERSON S JOIN ORDERS O
ON S.SNUM=O.SNUM
JOIN CUSTOMER C
ON C.CNUM=O.CNUM
GROUP BY S.SNAME,TRUNC(O.ODATE),C.CITY,O.ONUM
ORDER BY  O.ONUM;


--124-->124.	Which salesperson(s) should be fired?

SELECT S.SNUM,S.SNAME,COUNT(C.CNUM) AS TOTAL_CUST  --SALESPERSON WHO HAV 0 CUSTOMER SHOULD BE FIRED
FROM SALESPERSON S LEFT JOIN CUSTOMER C
ON S.SNUM=C.SNUM
GROUP BY S.SNUM,S.SNAME
ORDER BY COUNT(C.CNUM);

--125-->125.	What is the total income for the company? 

SELECT SUM(AMOUNT) AS TOTAL_INCOME FROM ORDERS;

        
 SELECT * FROM ORDERS;
SELECT * FROM SALESPERSON;
SELECT * FROM CUSTOMER;



SELECT TO_CHAR(ODATE,'MONTH')MONTH, COUNT(ONUM)
FROM ORDERS
GROUP BY TO_CHAR(ODATE,'MONTH')
ORDER BY MONTH;


SELECT TO_CHAR(ODATE,'MONTH') MONTH,COUNT(ONUM)
FROM ORDERS O
GROUP BY TO_CHAR(ODATE,'MONTH')










