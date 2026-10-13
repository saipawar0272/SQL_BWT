
---------------------------------------SALESPEOPLE-------------------------------------

CREATE TABLE Salespeople (
    Snum INT PRIMARY KEY,
    Sname VARCHAR(50),
    City VARCHAR(50),
    Comm DECIMAL(4,2)   );
    
    
    
    
    
    INSERT INTO Salespeople (Snum, Sname, City, Comm) VALUES
(1001, 'Peel', 'London', 0.12);

 INSERT INTO Salespeople (Snum, Sname, City, Comm) VALUES
(1002, 'Serres', 'San Jose', 0.13);

 INSERT INTO Salespeople (Snum, Sname, City, Comm) VALUES
(1004, 'Monika', 'London', 0.11);

 INSERT INTO Salespeople (Snum, Sname, City, Comm) VALUES
(1007, 'Rifkin', 'Barcelona', 0.5);

 INSERT INTO Salespeople (Snum, Sname, City, Comm) VALUES
(1003, 'Axelrod', 'New York', 0.10);

 INSERT INTO Salespeople (Snum, Sname, City, Comm) VALUES
(1005, 'Franc', 'London', 0.26);



select * from salespeople;




----------------------------------------------CUSTOMERS-----------------------------------------

CREATE TABLE Customers (
    Cnum INT PRIMARY KEY,          
    Cname VARCHAR(50),             
    City VARCHAR(50),              
    Rating INT,                   
    Snum INT,                     
    FOREIGN KEY (Snum) REFERENCES Salespeople(Snum)
);

INSERT INTO Customers (Cnum, Cname, City, Rating, Snum) VALUES
(2001, 'Hoffman',  'London',   100, 1001);

INSERT INTO Customers (Cnum, Cname, City, Rating, Snum) VALUES
(2002, 'Giovanni', 'Rome',     200, 1003);

INSERT INTO Customers (Cnum, Cname, City, Rating, Snum) VALUES
(2003, 'Liu', 'San Jose', 200, 1002);

INSERT INTO Customers (Cnum, Cname, City, Rating, Snum) VALUES
(2004, 'Grass', 'Berlin',   300, 1002);

INSERT INTO Customers (Cnum, Cname, City, Rating, Snum) VALUES
(2006, 'Clemens',  'London',   100, 1001);

INSERT INTO Customers (Cnum, Cname, City, Rating, Snum) VALUES
(2008, 'Cisneros', 'San Jose', 300, 1007);

INSERT INTO Customers (Cnum, Cname, City, Rating, Snum) VALUES
(2007, 'Pereira',  'Rome',     100, 1004);




select * from Customers ;


-------------------------------------------------------ORDERS--------------------------------------------------------



CREATE TABLE Orders (
    Onum INT PRIMARY KEY,         
    Amt DECIMAL(10,2),             
    Odate TIMESTAMP,              
    Cnum INT,                      
    Snum INT,                    
    FOREIGN KEY (Cnum) REFERENCES Customers(Cnum),
    FOREIGN KEY (Snum) REFERENCES Salespeople(Snum)
);



select * from orders





INSERT INTO Orders (Onum, Amt, Odate, Cnum, Snum)
VALUES (3001, 18.69, TO_DATE('1996-10-03 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2008, 1007);


INSERT INTO Orders (Onum, Amt, Odate, Cnum, Snum) 
VALUES(3003, 767.19, TO_DATE('1996-10-03 13:45:00', 'YYYY-MM-DD HH24:MI:SS'), 2001, 1001);


INSERT INTO Orders (Onum, Amt, Odate, Cnum, Snum)
VALUES(3002, 1900.10,TO_DATE('1996-10-03 12:05:00', 'YYYY-MM-DD HH24:MI:SS'), 2007, 1004);


INSERT INTO Orders (Onum, Amt, Odate, Cnum, Snum)
VALUES(3005, 5160.45, TO_DATE('1996-10-03 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2003, 1002);



INSERT INTO Orders (Onum, Amt, Odate, Cnum, Snum)
VALUES(3006, 1098.16, TO_DATE('1996-10-03 13:37:00', 'YYYY-MM-DD HH24:MI:SS'), 2008, 1007);


INSERT INTO Orders (Onum, Amt, Odate, Cnum, Snum)
VALUES(3009, 1713.23,TO_DATE('1996-10-04 15:21:00', 'YYYY-MM-DD HH24:MI:SS'), 2002, 1003);


INSERT INTO Orders (Onum, Amt, Odate, Cnum, Snum)
VALUES(3007, 75.75,  TO_DATE('1996-10-04 16:02:00', 'YYYY-MM-DD HH24:MI:SS'), 2002, 1003);


INSERT INTO Orders (Onum, Amt, Odate, Cnum, Snum) 
VALUES(3008, 4723.00,TO_DATE('1996-10-05 12:07:00', 'YYYY-MM-DD HH24:MI:SS'),2006, 1001);


INSERT INTO Orders (Onum, Amt, Odate, Cnum, Snum) 
VALUES(3010, 1309.95,TO_DATE('1996-10-06 13:12:00', 'YYYY-MM-DD HH24:MI:SS'), 2004, 1002);


INSERT INTO Orders (Onum, Amt, Odate, Cnum, Snum) 
VALUES(3011, 9891.88,TO_DATE('1996-10-06 13:09:00', 'YYYY-MM-DD HH24:MI:SS'), 2006, 1001);



INSERT INTO Orders (Onum, Amt, Odate, Cnum, Snum) 
VALUES(3012, 3455.78,TO_DATE('1996-10-04 15:21:00', 'YYYY-MM-DD HH24:MI:SS'), 2002, 1003);


INSERT INTO Orders (Onum, Amt, Odate, Cnum, Snum)
VALUES(3013, 1245.98,TO_DATE('1996-10-04 16:32:00', 'YYYY-MM-DD HH24:MI:SS'), 2002, 1003);


INSERT INTO Orders (Onum, Amt, Odate, Cnum, Snum)
VALUES(3014, 3721.53,TO_DATE('1996-10-05 12:45:00', 'YYYY-MM-DD HH24:MI:SS'), 2006, 1001);



INSERT INTO Orders (Onum, Amt, Odate, Cnum, Snum)
VALUES(3015, 734.50, TO_DATE('1996-10-06 13:16:00', 'YYYY-MM-DD HH24:MI:SS'), 2004, 1002);


INSERT INTO Orders (Onum, Amt, Odate, Cnum, Snum)
VALUES(3016, 1729.67,TO_DATE('1996-10-06 13:07:00', 'YYYY-MM-DD HH24:MI:SS'), 2006, 1001);



select * from orders;

select * from customers;

select * from salespeople;

---------------------------------------------------8888----------------------------------------------------------


1.	List all customers with a rating of 100.

    select * from customers
    where rating = 100;


2.	Find all records in the Customer table with NULL values in the city column.

    select * from customers
    where city = 'null';


3.	Find the largest order taken by each salesperson on each date.
    

    SELECT SNUM,ODATE,
    MAX(amt) AS largest_order
    FROM Orders
    GROUP BY snum,odate;


4.	Arrange the Orders table by descending customer number.

    select onum,cnum
    from orders
    order by cnum desc;
    
    
5.	Find which salespeople currently have orders in the Orders table.

    select distinct snum
    from orders;
    
6.	List names of all customers matched with the salespeople serving them.

   select c.cnum, s.snum
   from customers c
   inner join salespeople s on c.snum = s.snum
   order by c.cnum;


7.	Find the names and numbers of all salespeople who had more than one customer.

    
   SELECT  s.snum,  s.sname
   FROM Salespeople s
   JOIN Customers c
    ON s.snum = c.snum
    GROUP BY s.snum, s.sname
    HAVING COUNT(c.cnum) > 1;        


8.	Count the orders of each of the salespeople and output the results in descending order.

    select s.snum, s.sname,
    count(o.onum) AS order_count
    from salespeople s
    join orders o on s.snum = o.snum
    group by s.snum, s.sname
    order by order_count desc;


9.	List the Customer table if and only if one or more of the customers in the Customer tables are located in San Jose.

    select * from customers
    where exists(
    select 1 from customers c2
    where c2.city = 'san jose'
     );


10.	Match salespeople to customers according to what city they lived in.

    select s.sname AS salesperson, c.cname AS customerperson,
     s.city from salespeople s
    join customers c on s.city = c.city;


11.	Find the largest order taken by each salesperson.

    select snum, max(amt) AS max_amt
    from orders
    group by snum;
    
12.	Find customers in San Jose who has a rating above 200.

    select * from customers
    where city = 'san jose' and rating > 200;

13.	List the names and commissions of all salespeople in London.

    select sname, comm from salespeople
    where city = 'london';


14.	List all the orders of salesperson Monika from the Orders table.


     SELECT o.*
     FROM Orders o
     JOIN Salespeople s ON o.snum = s.snum
     WHERE s.sname = 'Monika';


15.	Find all customers with orders on October 3.

    select distinct c.*
    from customers c
    join orders o on c.cnum = o.cnum
    where o.odate = to_date('03-10-1996', 'dd-mm-yyyy'); 


16.	Give the sums of the amounts from the orders table, grouped by date, 


       SELECT ODATE, 
       SUM(amt) AS total_amount
       FROM orders
       GROUP BY ODATE
       ORDER BY ODATE;


17.	Eliminating all those dates where the SUM was not at least 2000.00 above the MAX amount.

       SELECT TRUNC(odate) AS order_date,
       SUM(amt)     AS total_amt,
       MAX(amt)     AS max_amt
       FROM   Orders
       GROUP BY TRUNC(odate)
       HAVING SUM(amt) >= MAX(amt) + 2000;

                
18.	Select all orders that had amounts that were greater than at least one of the orders from October 6.

    select * from orders
    where amt > any (
    select amt from orders 
    where trunc (odate) = to_date ('06-10-1996','DD-MM-YYYY')
    );


19.	Write a query that uses the EXISTS operator to extract all salespeople who have customers with a rating of 300.


    SELECT s.*
    FROM   Salespeople s
    WHERE  EXISTS (
    SELECT 1 FROM   Customers c
    WHERE  c.snum = s.snum
    AND    c.rating = 300
    
    );

20.	Find all pairs of customers having the same rating.

        SELECT c1.cnum AS cnum1, c1.cname AS cname1,
       c2.cnum AS cnum2, c2.cname AS cname2,
       c1.rating
       FROM   Customers c1
       JOIN   Customers c2
       ON c1.rating = c2.rating
      AND c1.cnum   < c2.cnum;

21.	Find all customers with CNUM, 1000 above the SNUM of Serres.

    SELECT *
    FROM   Customers
    WHERE  cnum = 1002 + 1000;  


    SELECT *
    FROM customers
    WHERE cnum = (
    SELECT snum + 1000
    FROM salespeople
    WHERE sname = 'Serres'
    );

22.	Give the salespeople’s commissions as percentage instead of decimal numbers.

       SELECT snum,
       sname,
       comm * 100 AS comm_percent
       FROM   Salespeople;

23.	Find the largest order taken by each salesperson on each date, 
    eliminating those MAX orders, which are less than $3000.00 in value.                                                                                                   


    SELECT snum,
    TRUNC(odate) AS order_date,
       MAX(amt)     AS max_amt
       FROM   Orders
       GROUP  BY snum, TRUNC(odate)
       HAVING MAX(amt) >= 3000;

24.	List the largest orders on October 3, for each salesperson.

    SELECT snum,
       TRUNC(odate) AS order_date,
       MAX(amt)     AS max_amt
       FROM   Orders
       WHERE  TRUNC(odate) = TO_DATE('03-10-1996','DD-MM-YYYY')
       GROUP  BY snum, TRUNC(odate);


25.	Find all customers located in cities where Serres (SNUM 1002) has customers.

          SELECT *
          FROM   Customers
          WHERE  city IN (
          SELECT DISTINCT city
          FROM   Customers
          WHERE  snum = 1003
        );


26.	Select all customers with a rating above 200.00.

      SELECT *
      FROM   Customers
      WHERE  rating > 200;
      

27.	Count the number of salespeople currently listing orders in the Orders table

          SELECT COUNT(DISTINCT snum) AS salespeople_with_orders
          FROM   Orders;


28.	Write a query that produces all customers serviced by salespeople with a commission above 12%.
 Output the customer’s name and the salesperson‘s rate of commission.
 
        SELECT c.cname,
        s.comm AS salesperson_comm
        FROM   Customers   c
        JOIN   Salespeople s ON c.snum = s.snum
        WHERE  s.comm > 0.12;


29.	Find salespeople who have multiple customers.

    SELECT s.snum, s.sname
    FROM   Salespeople s
    JOIN   Customers   c ON s.snum = c.snum
    GROUP  BY s.snum, s.sname
    HAVING COUNT(c.cnum) > 1;


30.	Find salespeople with customers located in their city.


        SELECT DISTINCT s.snum, s.sname
        FROM   Salespeople s
        JOIN   Customers   c
               ON s.snum = c.snum
              AND s.city = c.city;


31.	Find all salespeople whose name starts with ‘P’ and the fourth character is ‘I’.

        SELECT *  FROM   Salespeople
        WHERE  sname LIKE 'P__I%';


32.	Write a query that uses a sub query to obtain all orders for the customer named ‘Cisneros’.
    Assume you do not know his customer number.
 

            SELECT *
            FROM   Orders
            WHERE  cnum = (
              SELECT cnum
              FROM   Customers
              WHERE  cname = 'Cisneros'
            );


33.	Find the largest orders for ‘Serres’ and ‘Rifkin’.


            SELECT s.sname, o.onum, o.amt
            FROM   Salespeople s
            JOIN   Orders      o ON s.snum = o.snum
            WHERE  s.sname IN ('Serres','Rifkin')
            AND    o.amt = (
              SELECT MAX(o2.amt)
              FROM   Orders o2
              WHERE  o2.snum = s.snum
            );


34.	Extract the Salespeople table in the following order: SNUM, SNAME, COMMISSION, CITY.


          SELECT snum, sname, comm, city
          FROM   Salespeople;


35.	Select all customers whose names fall in between ‘A’ and ‘G’ alphabetical range.


        SELECT *
        FROM   Customers
        WHERE  cname BETWEEN 'A' AND 'Gzzzzzz';


36. Select all the possible combinations of customers that you can assign.


          SELECT c1.cnum AS cnum1, c1.cname AS cname1,
                 c2.cnum AS cnum2, c2.cname AS cname2
          FROM   Customers c1
          JOIN   Customers c2
                 ON c1.cnum < c2.cnum;


37. Select all orders that are greater than the average for October 4.


        SELECT * FROM   Orders
        WHERE  TRUNC(odate) = TO_DATE('04-10-1996','DD-MM-YYYY')
        AND    amt > (
          SELECT AVG(amt)
          FROM   Orders
          WHERE  TRUNC(odate) = TO_DATE('04-10-1996','DD-MM-YYYY')
        );


38. Write a select command using a correlated sub query that selects the names 
    and numbers of all customers with ratings equal to the maximum for their city.
    
            SELECT c1.cnum, c1.cname, c1.city, c1.rating
        FROM   Customers c1
        WHERE  c1.rating = (
          SELECT MAX(c2.rating)
          FROM   Customers c2
          WHERE  c2.city = c1.city
        );


39. Write a query that totals the orders for each day and places the results in descending order.


            SELECT TRUNC(odate) AS order_date,
                 SUM(amt)     AS total_amt
          FROM   Orders
          GROUP  BY TRUNC(odate)
          ORDER  BY total_amt DESC;


40. Write a select command that produces the rating followed by the name of each customer in San Jose.

            SELECT rating, cname
            FROM   Customers
            WHERE  city = 'San Jose';


42. Find all orders with above average amounts for their customers.
    
              SELECT o.*
          FROM   Orders o
          WHERE  o.amt > (
            SELECT AVG(o2.amt)
            FROM   Orders o2
            WHERE  o2.cnum = o.cnum
          );


43. Write a query that selects the highest rating in each city.

             SELECT city,
                   MAX(rating) AS highest_rating
            FROM   Customers
            GROUP  BY city;



44. Write a query that calculates the amount of the salesperson’s commission
     on order by a customer with a rating above 100.00.
     
     SELECT o.onum,
       o.amt,
       s.snum,
       s.sname,
       c.cnum,
       c.cname,
       o.amt * s.comm AS commission_amt
        FROM   Orders      o
        JOIN   Customers   c ON o.cnum = c.cnum
        JOIN   Salespeople s ON o.snum = s.snum
        WHERE  c.rating > 100;

     
     
45. Count the customers with rating above San Jose’s average.

          SELECT COUNT(*) AS cnt_customers
      FROM   Customers
      WHERE  rating > (
        SELECT AVG(rating)
        FROM   Customers
        WHERE  city = 'San Jose'
      );



46. Write a query that produces all pairs of salespeople with themselves
     as well as duplicate rows with the order reversed.
     
     SELECT s1.snum AS snum1, s1.sname AS sname1,
       s2.snum AS snum2, s2.sname AS sname2
      FROM   Salespeople s1
      CROSS JOIN Salespeople s2;

     
47. Find all salespeople that are located in either Barcelona or London.

      SELECT *
      FROM   Salespeople
      WHERE  city IN ('Barcelona','London');


48. Find all salespeople with only one customer.

      SELECT s.snum, s.sname
      FROM   Salespeople s
      JOIN   Customers   c ON s.snum = c.snum
      GROUP  BY s.snum, s.sname
      HAVING COUNT(c.cnum) = 1;

49. Write a query that joins the Customer table to itself to find all pairs of customers served by a single salesperson.


        SELECT c1.cnum AS cnum1, c1.cname AS cname1,
               c2.cnum AS cnum2, c2.cname AS cname2,
               c1.snum
        FROM   Customers c1
        JOIN   Customers c2
               ON c1.snum = c2.snum
              AND c1.cnum < c2.cnum;


50. Write a query that will give you all orders for more than $1000.00.

      SELECT *
      FROM   Orders
      WHERE  amt > 1000;


51. Write a query that lists each order number followed by the name of the customer who made that order.


      SELECT o.onum, c.cname
      FROM   Orders    o
      JOIN   Customers c ON o.cnum = c.cnum;



52. Write 2 queries that select all salespeople (by name and number) who have customers in their
    cities who they do not service, one using a join and one a correlated subquery. Which solution is more elegant?
          
      SELECT DISTINCT s.snum, s.sname        ----------join-------------
      FROM   Salespeople s
      JOIN   Customers  c1 ON c1.snum = s.snum
      JOIN   Customers  c2 ON c2.city = s.city
      WHERE  c2.snum <> s.snum;
    
          SELECT s.snum, s.sname       ---------correlated subquery------
      FROM   Salespeople s
      WHERE  EXISTS (
               SELECT 1
               FROM   Customers c1
               WHERE  c1.snum = s.snum
             )
      AND    EXISTS (
               SELECT 1
               FROM   Customers c2
               WHERE  c2.city = s.city
               AND    c2.snum <> s.snum
             );
    
    
53. Write a query that selects all customers whose ratings are equal than ANY (in the SQL sense) of Serres.

            SELECT *
        FROM   Customers
        WHERE  rating = ANY (
          SELECT rating
          FROM   Customers
          WHERE  snum = 1003
        );



54. Write2 queries that will produce all orders taken on October3 or October 4.


        SELECT *                                                     ---------in-----------
        FROM   Orders
        WHERE  TRUNC(odate) IN (
          TO_DATE('03-10-1996','DD-MM-YYYY'),
          TO_DATE('04-10-1996','DD-MM-YYYY')
        );

        
                SELECT *                                             ----------or------------
        FROM   Orders
        WHERE  TRUNC(odate) = TO_DATE('03-10-1996','DD-MM-YYYY')
           OR  TRUNC(odate) = TO_DATE('04-10-1996','DD-MM-YYYY');


55. Write a query that produces all pairs of orders by a given customer. Name that customer and eliminate duplicates.

            SELECT c.cname,
               o1.onum AS order1,
               o2.onum AS order2
        FROM   Customers c
        JOIN   Orders    o1 ON c.cnum = o1.cnum
        JOIN   Orders    o2 ON c.cnum = o2.cnum
        WHERE  c.cname = 'Giovanni'
        AND    o1.onum < o2.onum;
          

56. Find only those customers whose ratings are higher than every customer in Rome.


            SELECT *
        FROM   Customers
        WHERE  rating > ALL (
          SELECT rating
          FROM   Customers
          WHERE  city = 'Rome'
        );



57. Write a query on the customers table whose output will exclude all customers
    with a rating < = 100.00, unless they are located in Rome.
          
       
       SELECT *
      FROM   Customers
      WHERE  rating > 100
         OR  city = 'Rome';

          
58. Find all rows from the Customer table for which the salesperson number is 1001.


            SELECT *
        FROM   Customers
        WHERE  snum = 1001;



59. Find the total amount in Orders for each salesperson for which this total is greater than the
    amount of the largest order in the table.


            SELECT o.snum,
               SUM(o.amt) AS total_amt
        FROM   Orders o
        GROUP  BY o.snum
        HAVING SUM(o.amt) >
               (SELECT MAX(amt) FROM Orders);
        

60. Write a query that selects all orders that have Zeroes or NULL in the Amount field.


        SELECT *
        FROM   Orders
        WHERE  amt = 0
           OR  amt IS NULL;



61. Produce all combinations of salespeople and customer names such that the 
    former precedes the latter alphabetically, and the latter has a rating of less than 200.
    
          SELECT s.sname AS salesperson,
             c.cname AS customer
      FROM   Salespeople s
      CROSS JOIN Customers c
      WHERE  s.sname < c.cname
        AND  c.rating < 200;

         
    
62. List all salespeople’s names and the commission they have earned.


         SELECT s.sname,
       SUM(o.amt * s.comm) AS total_commission
      FROM   Salespeople s
      LEFT  JOIN Orders    o ON s.snum = o.snum
      GROUP  BY s.sname;


63. Write a query that produces the names and cities of all customers with the same rating as Hoffman.
    Write the query using Hoffman’s CNUM rather than his rating, so that it would still be usable if his rating changed.
    
    
            SELECT c.cname, c.city
        FROM   Customers c
        WHERE  c.rating = (
          SELECT rating
          FROM   Customers
          WHERE  cnum = 2001
        );

    
64. Find all salespeople for whom there are customers that follow them in alphabetical order.


        SELECT DISTINCT s.*
        FROM   Salespeople s
        WHERE  EXISTS (
          SELECT 1
          FROM   Customers c
          WHERE  c.cname > s.sname
        );



65. Write a query that produces the names and ratings of all customers of all who have above average orders.


            SELECT c.cname, c.rating
            FROM   Customers c
            WHERE  EXISTS (
              SELECT 1
              FROM   Orders o
              WHERE  o.cnum = c.cnum
                AND  o.amt > (
                  SELECT AVG(o2.amt)
                  FROM   Orders o2
                )
            );



66. Find the sum of all purchases from the Orders table.

    SELECT SUM(amt) AS total_purchases
    FROM   Orders;


67. Write a select command that produces the order number, amount, and date for all rows in the Order table.


          SELECT onum, amt, odate
          FROM   Orders;


68. Count the number of not null rating fields in the Customer table including duplicates.


        SELECT COUNT(rating) AS non_null_ratings
        FROM   Customers;


69. Write a query that gives the names of both the salesperson and the customer for each order after the order number.


        SELECT o.onum,
               s.sname AS salesperson,
               c.cname AS customer
        FROM   Orders    o
        JOIN   Salespeople s ON o.snum = s.snum
        JOIN   Customers   c ON o.cnum = c.cnum;



70. List the commissions of all salespeople servicing customers in London.


        SELECT DISTINCT s.comm
        FROM   Salespeople s
        JOIN   Customers   c ON s.snum = c.snum
        WHERE  c.city = 'London';



71. Write a query using ANY or ALL that will find all salespeople who have no customers located in their city.


        SELECT s.*
        FROM   Salespeople s
        WHERE  NOT EXISTS (
          SELECT 1
          FROM   Customers c
          WHERE  c.city = s.city
        );


72. Write a query using the EXISTS operator that selects all salespeople with 
    customers located in their cities who are not assigned to them.
          
         SELECT s.*
      FROM   Salespeople s
      WHERE  EXISTS (
        SELECT 1
        FROM   Customers c
        WHERE  c.city = s.city
          AND  c.snum <> s.snum
      );

    
    
73. Write a query that selects all customers serviced by Peel or Motika.

        SELECT c.*
        FROM   Customers c
        JOIN   Salespeople s ON c.snum = s.snum
        WHERE  s.sname IN ('Peel','Monika');


74. Count the number of salespeople registering orders for each day.
     (If a salesperson has more than one order on a given day, he or she should be counted only once.).
     
     
       SELECT TRUNC(odate) AS order_date,
         COUNT(DISTINCT snum) AS salespeople_count
        FROM   Orders
        GROUP  BY TRUNC(odate);

     
75. Find all orders attributed to salespeople in London.

        SELECT o.*
        FROM   Orders    o
        JOIN   Salespeople s ON o.snum = s.snum
        WHERE  s.city = 'London';


76. Find all orders by customers not located in the same cities as their salespeople.

        SELECT o.*
        FROM   Orders    o
        JOIN   Salespeople s ON o.snum = s.snum
        JOIN   Customers   c ON o.cnum = c.cnum
        WHERE  c.city <> s.city;


77. Find all salespeople who have customers with more than one current order.

            SELECT DISTINCT s.snum, s.sname
        FROM   Salespeople s
        JOIN   Customers   c ON s.snum = c.snum
        WHERE  c.cnum IN (
          SELECT cnum
          FROM   Orders
          GROUP  BY cnum
          HAVING COUNT(*) > 1
        );


78. Write a query that extracts from the Customer table every customer assigned to a salesperson who 
    currently has at least one other customer (besides the customer being selected) with orders in the Orders table.
    
    
            SELECT c.*
        FROM   Customers c
        WHERE  EXISTS (
          SELECT 1
          FROM   Customers c2
          JOIN   Orders    o2 ON c2.cnum = o2.cnum
          WHERE  c2.snum = c.snum
            AND  c2.cnum <> c.cnum
        );

    
    
79. Write a query that selects all customers whose name begins with ‘C’.


        SELECT *
        FROM   Customers
        WHERE  cname LIKE 'C%';


80. Write a query on the Customers table that will find the highest rating in each city. 
    Put the output in this form:  for the city (city) the highest rating is : (rating).
    
    SELECT 'for the city ' || city || ' the highest rating is : ' || MAX(rating) AS result
    FROM   Customers
    GROUP  BY city;

    
81. Write a query that will produce the Snum values of all salespeople with orders 
    currently in the Orders table without any repeats.
    
    SELECT DISTINCT snum
    FROM   Orders;

    
82. Write a query that lists customers in descending order of rating. Output the 
    rating field first, followed by the customers’ names and numbers.

    SELECT rating, cname, cnum
    FROM   Customers
    ORDER  BY rating DESC, cname, cnum;


83. Find the average commission for salespeople in London.

      SELECT AVG(comm) AS avg_comm_london
      FROM   Salespeople
      WHERE  city = 'London';


84. Find all orders credited to the same salesperson that services Hoffman.

          SELECT o.*
      FROM   Orders o
      WHERE  o.snum = (
        SELECT snum
        FROM   Customers
        WHERE  cname = 'Hoffman'
      );


85. Find all salespeople whose commission is in between 0.10 and 0.12 both inclusive.

          SELECT *
      FROM   Salespeople
      WHERE  comm BETWEEN 0.10 AND 0.12;


86. Write a query that will give you the names and cities of all salespeople in London with commission above 0.10

      SELECT sname, city
      FROM   Salespeople
      WHERE  city = 'London'
        AND  comm > 0.10;


87. What will be the output from the following query? 
    SELECT * FROM ORDERS WHERE (AMT < 1000 OR NOT (ODATE = 10/03/1996 AND CNUM > 2003));
    
    SELECT * FROM ORDERS 
    WHERE (AMT < 1000 OR NOT (ODATE = '10/03/1996' AND CNUM > 2003));
    
88. Write a query that selects each customer’s smallest order.

          SELECT o.onum, o.cnum, o.amt
      FROM   Orders o
      WHERE  o.amt = (
        SELECT MIN(o2.amt)
        FROM   Orders o2
        WHERE  o2.cnum = o.cnum
      );


89. Write a query that selects the first customer in alphabetical order whose name begins with ‘G’.

          SELECT *
      FROM   Customers
      WHERE  cname LIKE 'G%'
      ORDER  BY cname
      FETCH  FIRST 1 ROW ONLY;  -------------8888---------------


90. Write a query that counts the number of different not NULL city values in the Customers table.

    SELECT COUNT(DISTINCT city) AS distinct_cities
    FROM   Customers
    WHERE  city IS NOT NULL;


91. Find the average amount from the Orders table.

    SELECT AVG(amt) AS average_amount
    FROM   Orders;


92. What would be the output from the following query?
SELECT*FROM ORDERS WHERE NOT  (Odate =10/03/1996 OR Snum>1006) AND amt. >=1500);

            SELECT * FROM ORDERS
            WHERE NOT  (Odate =10/03/1996 OR Snum>1006) AND amt >= 1500);



93. Find all customers who are not located in San Jose & whose rating is above 200.

          SELECT *
      FROM   Customers
      WHERE  city <> 'San Jose'
        AND  rating > 200;


94. Give a simpler way to write this query:
    SELECT Snum, Sname, city, Comm FROM salespeople WHERE (Comm>0.12 and Comm <0.14);
          
       SELECT Snum, Sname, city, Comm FROM salespeople
       WHERE comm BETWEEN 0.12 AND 0.14;



95. Evaluate the following query:
    SELECT * FROM orders WHERE NOT ((Odate = 10/03/1996 AND Snum>1002) OR amt>2000);

    SELECT * FROM orders
     WHERE NOT (
    (Odate = TO_DATE('10/03/1996','MM/DD/YYYY') AND Snum > 1002)
    OR amt > 2000
    );

96. Which salespeople attend to customers not in the city they have been assigned to?

    SELECT DISTINCT s.snum, s.sname
    FROM   Salespeople s
    JOIN   Customers   c ON s.snum = c.snum
    WHERE  s.city <> c.city;


97. Which salespeople get commission greater than 0.11 and serving customers rated less than 250?

      SELECT DISTINCT s.snum, s.sname
      FROM   Salespeople s
      JOIN   Customers   c ON s.snum = c.snum
      WHERE  s.comm > 0.11
        AND  c.rating < 250;


98. Which salespeople have been assigned to the same city but get different commission percentages?

          SELECT s1.sname AS sp1,
             s2.sname AS sp2,
             s1.city
      FROM   Salespeople s1
      JOIN   Salespeople s2
             ON s1.city = s2.city
            AND s1.comm <> s2.comm
            AND s1.snum < s2.snum;


99. Which salesperson has earned the most by way of commission?

      SELECT s.sname,
             SUM(o.amt * s.comm) AS total_commission
      FROM   Salespeople s
      JOIN   Orders     o ON s.snum = o.snum
      GROUP  BY s.sname
      ORDER  BY total_commission DESC
      FETCH  FIRST 1 ROW ONLY;        --------------8888-------------


100.  Does the customer who has placed the maximum number of orders have the maximum rating?

              WITH max_orders AS (
          SELECT cnum
          FROM   Orders
          GROUP  BY cnum
          HAVING COUNT(*) = (
            SELECT MAX(cnt)
            FROM   (SELECT COUNT(*) cnt FROM Orders GROUP BY cnum)
          )
        ),
        max_rating AS (
          SELECT MAX(rating) max_rtg
          FROM   Customers
        )
        SELECT CASE
          WHEN c.rating = (SELECT max_rtg FROM max_rating)
          THEN 'YES'
          ELSE 'NO'
        END AS answer
        FROM   Customers c
        JOIN   max_orders mo ON c.cnum = mo.cnum;



101.  Has the customer who has spent the largest amount of money been given the highest rating?

            WITH max_spent AS (
        SELECT cnum
        FROM   Orders
        GROUP  BY cnum
        HAVING SUM(amt) = (SELECT MAX(total) FROM (SELECT SUM(amt) total FROM Orders GROUP BY cnum))
      ),
      max_rating AS (
        SELECT MAX(rating) max_rtg FROM Customers
      )
      SELECT CASE
        WHEN c.rating = (SELECT max_rtg FROM max_rating)
        THEN 'YES'
        ELSE 'NO'
      END AS answer
      FROM   Customers c
      JOIN   max_spent ms ON c.cnum = ms.cnum;


102.  List all customers in descending order of customer rating.

           SELECT *  FROM   Customers
           ORDER  BY rating DESC;


103.  On which days has Hoffman placed orders?

      SELECT DISTINCT TRUNC(odate) AS order_date
      FROM   Orders o
      JOIN   Customers c ON o.cnum = c.cnum
      WHERE  c.cname = 'Hoffman';
      

104.  Do all salespeople have different commissions?

      SELECT CASE
        WHEN COUNT(DISTINCT comm) = COUNT(*)
        THEN 'YES'
        ELSE 'NO'
      END AS all_different
      FROM   Salespeople;


105.  Which salespeople have no orders between 10/03/1996 and 10/05/1996?

      SELECT s.*
      FROM   Salespeople s
      WHERE  NOT EXISTS (
        SELECT 1
        FROM   Orders o
        WHERE  o.snum = s.snum
          AND  o.odate >= TO_DATE('03-10-1996','DD-MM-YYYY')
          AND  o.odate <= TO_DATE('05-10-1996','DD-MM-YYYY')
              );


106.  How many salespersons have succeeded in getting orders?

      SELECT COUNT(DISTINCT snum) AS salespeople_with_orders
      FROM   Orders;


107.  How many customers have placed orders?

    SELECT COUNT(DISTINCT cnum) AS customers_with_orders
    FROM   Orders;

108.  On which date has each salesperson booked an order of maximum value?

      SELECT s.sname,
       TRUNC(o.odate) AS max_order_date,
       o.amt
      FROM   Salespeople s
      JOIN   Orders      o ON s.snum = o.snum
      WHERE  (o.snum, o.amt) IN (
        SELECT snum, MAX(amt)
        FROM   Orders
        GROUP  BY snum
      );


109.  Who is the most successful salesperson?

     
    SELECT sname, total_sales
    FROM (
    SELECT s.sname,
           SUM(o.amt) AS total_sales
    FROM   Salespeople s
    JOIN   Orders o ON s.snum = o.snum
    GROUP  BY s.sname
    ORDER  BY total_sales DESC
    )
    WHERE ROWNUM = 1;

110.  Who is the worst customer with respect to the company?


      SELECT cname, order_count, total_spent
      FROM (
      SELECT c.cname,
             COUNT(o.onum) AS order_count,
             SUM(o.amt) AS total_spent
      FROM   Customers c
      LEFT   JOIN Orders o ON c.cnum = o.cnum
      GROUP  BY c.cname
      ORDER  BY order_count ASC, total_spent ASC
      )
      WHERE ROWNUM = 1;

111.  Are all customers not having placed orders greater than 200 totally been serviced by salesperson Peel or Serres?

      SELECT CASE
      WHEN MIN(s.sname) IN ('Peel','Serres')
      THEN 'YES'
      ELSE 'NO'
    END AS all_by_peel_serres
    FROM   Customers c
    LEFT  JOIN Orders  o ON c.cnum = o.cnum
    JOIN   Salespeople s ON c.snum = s.snum
    WHERE  NOT EXISTS (
      SELECT 1
      FROM   Orders o2
      WHERE  o2.cnum = c.cnum
        AND  o2.amt > 200
    );


112.  Which customers have the same rating?

      SELECT c1.cname AS customer1,
       c2.cname AS customer2,
       c1.rating
      FROM   Customers c1
      JOIN   Customers c2
       ON c1.rating = c2.rating
      AND c1.cnum < c2.cnum;


113.  Find all orders greater than the average for October 4th.

            SELECT *
      FROM   Orders
      WHERE  TRUNC(odate) = TO_DATE('04-10-1996','DD-MM-YYYY')
        AND  amt > (
          SELECT AVG(amt)
          FROM   Orders
          WHERE  TRUNC(odate) = TO_DATE('04-10-1996','DD-MM-YYYY')
        );


114.  Which customers have above average orders?

      SELECT DISTINCT c.cname
      FROM   Customers c
      JOIN   Orders    o ON c.cnum = o.cnum
      WHERE  o.amt > (
        SELECT AVG(amt)
        FROM   Orders
      );


115.  List all customers with ratings above San Jose’s average.

            SELECT *
      FROM   Customers
      WHERE  rating > (
        SELECT AVG(rating)
        FROM   Customers
        WHERE  city = 'San Jose'
      );


116.  Select the total amount in orders for each salesperson for which the total is greater
       than the amount of the largest order in the table.
       
       SELECT snum,
       SUM(amt) AS total_amt
      FROM   Orders
      GROUP  BY snum
      HAVING SUM(amt) > (SELECT MAX(amt) FROM Orders);
          
       
117.  Give names and numbers of all salesperson that have more than one customer.
      
      SELECT s.snum, s.sname
      FROM   Salespeople s
      JOIN   Customers   c ON s.snum = c.snum
      GROUP  BY s.snum, s.sname
      HAVING COUNT(c.cnum) > 1;


118.  Select all salesperson by name and numbers who have customers in their city whom they don’s the service.

      SELECT DISTINCT s.snum, s.sname
      FROM   Salespeople s
      WHERE  EXISTS (
        SELECT 1
        FROM   Customers c
        WHERE  c.city = s.city
          AND  c.snum <> s.snum
      );


119.  Which customers’ rating should be lowered?

         
      SELECT c.cname, c.rating,
             COUNT(o.onum) AS order_count,
             AVG(o.amt) AS avg_order_amt
      FROM   Customers c
      LEFT  JOIN Orders  o ON c.cnum = o.cnum
      GROUP  BY c.cname, c.rating
      HAVING AVG(o.amt) < (SELECT AVG(amt) FROM Orders)
         OR  COUNT(o.onum) = 0
      ORDER  BY avg_order_amt ASC NULLS FIRST;



120.  Is there a case for assigning a salesperson to Berlin?

             
        SELECT CASE
          WHEN COUNT(DISTINCT s.snum) = 0
          THEN 'YES - Berlin has customers but no local salesperson'
          ELSE 'NO'
        END AS assign_to_berlin
        FROM   Customers c
        LEFT  JOIN Salespeople s ON s.city = c.city
        WHERE  c.city = 'Berlin';



121.  Is there any evidence linking the performance of a salesperson to commission that he or she is being paid?

      SELECT s.sname,
       s.comm,
       SUM(o.amt) AS total_sales,
       RANK() OVER (ORDER BY SUM(o.amt) DESC) AS sales_rank,
       RANK() OVER (ORDER BY s.comm DESC) AS comm_rank
        FROM   Salespeople s
        LEFT  JOIN Orders    o ON s.snum = o.snum
        GROUP  BY s.sname, s.comm
        ORDER  BY total_sales DESC;


122.  Dose the total amount in orders by customer in Rome and London exceeds the commission
       paid to salesperson in London and New York by more than 5 times?
             
             WITH rome_london_orders AS (
        SELECT SUM(o.amt) AS total_orders
        FROM   Orders o
        JOIN   Customers c ON o.cnum = c.cnum
        WHERE  c.city IN ('Rome','London')
      ),
      london_ny_comm AS (
        SELECT SUM(s.comm * o.amt) AS total_comm
        FROM   Orders o
        JOIN   Salespeople s ON o.snum = s.snum
        WHERE  s.city IN ('London','New York')
      )
      SELECT CASE
        WHEN rlo.total_orders > lnc.total_comm * 5
        THEN 'YES'
        ELSE 'NO'
      END AS exceeds_5x
      FROM   rome_london_orders rlo,
             london_ny_comm     lnc;

       
       
123.  Which is the date, order number, amt and city for each salesperson (byname) for   
      the maximum order he has obtained?
      
      SELECT s.sname,
       o.odate,
       o.onum,
       o.amt,
       c.city
      FROM   Salespeople s
      JOIN   Orders      o ON s.snum = o.snum
      JOIN   Customers   c ON o.cnum = c.cnum
      WHERE  (o.snum, o.amt) IN (
        SELECT snum, MAX(amt)
        FROM   Orders
        GROUP  BY snum
      );

     
      
124.  Which salesperson(s) should be fired?

   
        SELECT s.sname,
         COUNT(o.onum) AS order_count,
         COALESCE(SUM(o.amt), 0) AS total_sales
        FROM   Salespeople s
        LEFT  JOIN Orders    o ON s.snum = o.snum
        GROUP  BY s.sname
        ORDER  BY order_count ASC, total_sales ASC;


125.  What is the total income for the company? 


      SELECT SUM(amt) AS total_company_income
      FROM   Orders;





















































































































































































































































































































