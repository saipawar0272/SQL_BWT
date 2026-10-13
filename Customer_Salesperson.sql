CREATE TABLE Salespeople (
  snum  NUMBER PRIMARY KEY,
  sname VARCHAR2(20),
  city  VARCHAR2(20),
  comm  NUMBER
);

SELECT * FROM SALESPEOPLE;
--cutomer--
CREATE TABLE Customers (
  cnum   NUMBER PRIMARY KEY,
  cname  VARCHAR2(20),
  city   VARCHAR2(20),
  rating NUMBER,
  snum   NUMBER REFERENCES Salespeople(snum)
);

--orders--
CREATE TABLE Orders (
  onum  NUMBER PRIMARY KEY,
  amt   NUMBER,
  odate DATE,
  cnum  NUMBER REFERENCES Customers(cnum),
  snum  NUMBER REFERENCES Salespeople(snum)
);

select * from salespeople;
select * from customers;
select * from orders;

--2> INSERTING VALUES INTO SALESPEOPLE









--ranging in 100--
SELECT * 
FROM Customers
WHERE rating = 100;


---cutomer table with null city--
SELECT *
FROM Customers
WHERE city IS NULL;

--largest order taken by each salesperson--

SELECT snum, odate, MAX(amt) AS max_order
FROM Orders
GROUP BY snum, odate;


--descending customer number--\
SELECT *
FROM Orders
ORDER BY cnum DESC;

--count orders of each salesperson--
SELECT snum, COUNT(*) AS total_orders
FROM Orders
GROUP BY snum
ORDER BY total_orders DESC;

--lives in San Jose--
SELECT *
FROM Customers
WHERE EXISTS (
   SELECT 1 FROM Customers WHERE city = 'San Jose'
);

------match salesperson and customer in the city--
SELECT c.cname, s.sname, c.city
FROM Customers c
JOIN Salespeople s
ON c.city = s.city;

---customer in san jose with rsting above 200.

SELECT *
FROM Customers
WHERE city = 'San Jose'
  AND rating > 200;
  
  --name an commission of all london salesperson--
  SELECT sname, comm
FROM Salespeople
WHERE city = 'London';

--all orders of monica--
SELECT o.*
FROM Orders o
JOIN Salespeople s ON o.snum = s.snum
WHERE s.sname = 'Monika';
























