 Customer Table


    CREATE TABLE Customerr (
        CID          NUMBER(4)    CONSTRAINT pk_customer PRIMARY KEY,
        CNAME        VARCHAR(50),
        CADD         VARCHAR(50),
        C_CONTACT    VARCHAR(20),
        C_CREDITDAYS NUMBER(3),
        C1_DATE      DATE,
        SEX          VARCHAR(10)
    );

         select * from  Customerr ;


        INSERT INTO  Customerr (CID, CNAME, CADD, C_CONTACT, C_CREDITDAYS, C1_DATE, SEX)
        VALUES (1001, 'Cyona blake', 'NEW YORK', '1235684', NULL, TO_DATE('20-Jan-11', 'DD-Mon-RR'), 'FEMALE');
        INSERT INTO  Customerr (CID, CNAME, CADD, C_CONTACT, C_CREDITDAYS, C1_DATE, SEX)
        VALUES (1002, 'JOHN SMITH', 'NEW JERSEY', '1341684', NULL, TO_DATE('21-Feb-11', 'DD-Mon-RR'), 'MALE');
        INSERT INTO  Customerr (CID, CNAME, CADD, C_CONTACT, C_CREDITDAYS, C1_DATE, SEX)
        VALUES (1003, 'JORDAN WOOD', 'PRAG', '1805184', NULL, TO_DATE('22-Mar-11', 'DD-Mon-RR'), 'MALE');
        INSERT INTO  Customerr (CID, CNAME, CADD, C_CONTACT, C_CREDITDAYS, C1_DATE, SEX)
        VALUES (1004, 'CHRISTINA', 'MANHATTON', '1123684', NULL, TO_DATE('23-Apr-13', 'DD-Mon-RR'), 'FEMALE');
        INSERT INTO  Customerr (CID, CNAME, CADD, C_CONTACT, C_CREDITDAYS, C1_DATE, SEX)
        VALUES (1005, 'TOM HILL', 'LONDON', '1239284', NULL, TO_DATE('25-Jun-15', 'DD-Mon-RR'), 'MALE');
        INSERT INTO  Customerr (CID, CNAME, CADD, C_CONTACT, C_CREDITDAYS, C1_DATE, SEX)
        VALUES (1006, 'KAMILA JOSEF', 'PARISE', '124368', NULL, TO_DATE('28-Jul-11', 'DD-Mon-RR'), 'FEMALE');
        INSERT INTO  Customerr (CID, CNAME, CADD, C_CONTACT, C_CREDITDAYS, C1_DATE, SEX)
        VALUES (1007, 'ANDRU SYMON', 'TAXES', '125654', NULL, TO_DATE('01-Apr-16', 'DD-Mon-RR'), 'MALE');
        INSERT INTO  Customerr (CID, CNAME, CADD, C_CONTACT, C_CREDITDAYS, C1_DATE, SEX) 
        VALUES (1008, 'SANJU SAMSUNG', 'NEW YORK', '12346341', NULL, TO_DATE('20-Jan-16', 'DD-Mon-RR'), 'MALE');
        
     -------------------------------------------------------------------------------------------   
        
        Vendors Table
        
            
    CREATE TABLE Vendors_v (
        VID          NUMBER(4)    CONSTRAINT pk_vendors PRIMARY KEY,
        VNAME        VARCHAR2(50),
        VADD         VARCHAR2(50),
        VCONTACT     VARCHAR2(20),
        VCREDITDAYS  NUMBER(3),
        VJ_DATE      DATE
    );
                  
              
      INSERT INTO Vendors_v (VID, VNAME, VADD, VCONTACT, VCREDITDAYS, VJ_DATE)
      VALUES (2001, 'KIRAN PATIL', 'PUNE', '20535335', NULL, TO_DATE('20-Jan-10', 'DD-Mon-RR'));
      INSERT INTO Vendors_v (VID, VNAME, VADD, VCONTACT, VCREDITDAYS, VJ_DATE)
      VALUES (2002, 'PRAKASH JAIN', 'MUMBAI', '2063564', NULL, TO_DATE('05-Nov-11', 'DD-Mon-RR'));
      INSERT INTO Vendors_v (VID, VNAME, VADD, VCONTACT, VCREDITDAYS, VJ_DATE)
      VALUES (2003, 'SWAPNIL THETE', 'NASHIK', '25355352', NULL, TO_DATE('18-Mar-10', 'DD-Mon-RR'));
      INSERT INTO Vendors_v (VID, VNAME, VADD, VCONTACT, VCREDITDAYS, VJ_DATE)
      VALUES (2004, 'AMOL SHENDE', 'SATARA', '23674776', NULL, TO_DATE('07-Apr-15', 'DD-Mon-RR'));
      INSERT INTO Vendors_v (VID, VNAME, VADD, VCONTACT, VCREDITDAYS, VJ_DATE)
      VALUES (2005, 'KARAN SINTRE', 'BULDHANA', '236756', NULL, TO_DATE('22-Apr-09', 'DD-Mon-RR'));
      INSERT INTO Vendors_v (VID, VNAME, VADD, VCONTACT, VCREDITDAYS, VJ_DATE)
      VALUES (2006, 'RAM KULKARNI', 'OSMANABAD', '20367454', NULL, TO_DATE('09-Jul-10', 'DD-Mon-RR'));        
              
        
        select * from  Vendors_v ;

--------------------------------------------------------------------------------------------------------------        
        
     Employee Table
     
     
    CREATE TABLE Employee_e (
    EID       NUMBER(4)    CONSTRAINT pk_employee PRIMARY KEY,
    ENAME     VARCHAR2(50),
    EJOB      VARCHAR2(30),
    EADD      VARCHAR2(50),
    ECONTACT  VARCHAR2(20),
    ESAL      NUMBER(10,2),
    EDOJ      DATE,
    EDOL      DATE
    );   
        
              
      INSERT INTO Employee_e (EID, ENAME, EJOB, EADD, ECONTACT, ESAL, EDOJ, EDOL) 
      VALUES (3001, 'STEVEN KING', 'PAINTER', 'NEW YORK', '10367454', 1200, TO_DATE('09-Jul-10', 'DD-Mon-RR'), NULL);
      INSERT INTO Employee_e (EID, ENAME, EJOB, EADD, ECONTACT, ESAL, EDOJ, EDOL) 
      VALUES (3002, 'DAVID AUSTIN', 'FITTER', 'MANHATON', '10367434', 1100, TO_DATE('19-Aug-10', 'DD-Mon-RR'), NULL);
      INSERT INTO Employee_e (EID, ENAME, EJOB, EADD, ECONTACT, ESAL, EDOJ, EDOL) 
      VALUES (3003, 'BRUCE ERNST', 'MECHANIC', 'NEW JERSEY', '10367264', 2200, TO_DATE('08-Sep-10', 'DD-Mon-RR'), NULL);
      INSERT INTO Employee_e (EID, ENAME, EJOB, EADD, ECONTACT, ESAL, EDOJ, EDOL) 
      VALUES (3004, 'LUIS POPP', 'MECHANIC', 'NEW JERSEY', '10367264', 1700, TO_DATE('19-Oct-09', 'DD-Mon-RR'), TO_DATE('06-Sep-10', 'DD-Mon-RR'));
      INSERT INTO Employee_e (EID, ENAME, EJOB, EADD, ECONTACT, ESAL, EDOJ, EDOL) 
      VALUES (3005, 'SHERI GOMES', 'FITTER', 'PARIS', '10327264', 1000, TO_DATE('19-Oct-09', 'DD-Mon-RR'), TO_DATE('01-Aug-10', 'DD-Mon-RR'));
      INSERT INTO Employee_e (EID, ENAME, EJOB, EADD, ECONTACT, ESAL, EDOJ, EDOL) 
      VALUES (3000, 'JAMES PHILLIP', 'FITTER', 'PARIS', '10327264', NULL, TO_DATE('01-Jan-08', 'DD-Mon-RR'), NULL);        
              
        
         select * from  Employee_e; 
     
    
      
      
 ---------------------------------------------------------------------------------------------------------------------       
        
       Sparepart Table
       
       
       CREATE TABLE Sparepart (
       SPID     NUMBER(4)    CONSTRAINT pk_sparepart PRIMARY KEY,
       SPNAME   VARCHAR2(50),
       SPRATE   NUMBER(10,2),
       SPUNIT   VARCHAR2(10)
       ); 
        
INSERT INTO Sparepart (SPID, SPNAME, SPRATE, SPUNIT) VALUES (4001, 'TWO WHEELER TUBE', 250, 'NOS');
INSERT INTO Sparepart (SPID, SPNAME, SPRATE, SPUNIT) VALUES (4002, 'TWO WHEELER ENGINE OIL', 400, 'LTRS');
INSERT INTO Sparepart (SPID, SPNAME, SPRATE, SPUNIT) VALUES (4003, 'FOUR WHEELER ENGINE OIL', 5000, 'LTRS');
INSERT INTO Sparepart (SPID, SPNAME, SPRATE, SPUNIT) VALUES (4004, 'TWO WHEELER CARBORATOR', 680, 'NOS');
INSERT INTO Sparepart (SPID, SPNAME, SPRATE, SPUNIT) VALUES (4005, 'TWO WHEELER CLUTCH WIRE', 129, 'MTRS');
INSERT INTO Sparepart (SPID, SPNAME, SPRATE, SPUNIT) VALUES (4006, 'TWO WHEELER TAIL LIGHT', 100, 'NOS');
INSERT INTO Sparepart (SPID, SPNAME, SPRATE, SPUNIT) VALUES (4007, 'TWO WHEELER INDICATORS', 150, 'NOS');
INSERT INTO Sparepart (SPID, SPNAME, SPRATE, SPUNIT) VALUES (4008, 'FOUR WHEELER GASKIT', 1340, 'NOS');
INSERT INTO Sparepart (SPID, SPNAME, SPRATE, SPUNIT) VALUES (4009, 'WHITE COLOUR', 340, 'LTRS');
INSERT INTO Sparepart (SPID, SPNAME, SPRATE, SPUNIT) VALUES (4010, 'BLACK COLOUR', 240, 'LTRS');
INSERT INTO Sparepart (SPID, SPNAME, SPRATE, SPUNIT) VALUES (4011, 'TWO WHEELER SIDE MIRROR', 250, 'NOS');
INSERT INTO Sparepart (SPID, SPNAME, SPRATE, SPUNIT) VALUES (4012, 'FOUR WHEELER SIDE MIRROR', 450, 'NOS');
INSERT INTO Sparepart (SPID, SPNAME, SPRATE, SPUNIT) VALUES (4013, 'TWO WHEELER SHOCKUP', 1320, 'PAIR');
INSERT INTO Sparepart (SPID, SPNAME, SPRATE, SPUNIT) VALUES (4014, 'FOUR WHEELER BUMPER', 6000, 'NOS');
INSERT INTO Sparepart (SPID, SPNAME, SPRATE, SPUNIT) VALUES (4015, 'FOUR WHEELER FRONT GLASS', 7000, 'PCS');       
        
        
      select * from sparepart;  
        
----------------------------------------------------------------------------------------------------------

            Purchase Table


CREATE TABLE Purchase (
    PID       NUMBER(4)    CONSTRAINT pk_purchase PRIMARY KEY,
    VID       NUMBER(4)    CONSTRAINT fk_purchase_vid REFERENCES Vendors_v(VID),
    SPID      NUMBER(4)    CONSTRAINT fk_purchase_spid REFERENCES Sparepart(SPID),
    PQTY      NUMBER(5),
    SPRATE    NUMBER(10,2),
    SPGST     NUMBER(10,2),
    P_DATE    DATE,
    TRANCOST  NUMBER(10,2),
    TOTAL     NUMBER(10,2),
    RCV_EID   NUMBER(4)    CONSTRAINT fk_purchase_eid REFERENCES Employee_e(EID)
     );        
        
            
    INSERT INTO Purchase (PID, VID, SPID, PQTY, SPRATE, SPGST, P_DATE, TRANCOST, TOTAL, RCV_EID) 
    VALUES (5001, 2001, 4001, 10, 250, 350, TO_DATE('01-Jan-11', 'DD-Mon-RR'), 1300, 4150, 3001);
    INSERT INTO Purchase (PID, VID, SPID, PQTY, SPRATE, SPGST, P_DATE, TRANCOST, TOTAL, RCV_EID) 
    VALUES (5002, 2002, 4002, 4, 400, 288, TO_DATE('02-Mar-11', 'DD-Mon-RR'), 100, 1988, 3001);
    INSERT INTO Purchase (PID, VID, SPID, PQTY, SPRATE, SPGST, P_DATE, TRANCOST, TOTAL, RCV_EID) 
    VALUES (5003, 2003, 4004, 8, 680, 761.6, TO_DATE('12-Jan-11', 'DD-Mon-RR'), 50, 6251.6, 3003);
    INSERT INTO Purchase (PID, VID, SPID, PQTY, SPRATE, SPGST, P_DATE, TRANCOST, TOTAL, RCV_EID) 
    VALUES (5004, 2004, 4005, 10, 129, 134.8, TO_DATE('22-Aug-11', 'DD-Mon-RR'), 125, 1569.8, 3004);
    INSERT INTO Purchase (PID, VID, SPID, PQTY, SPRATE, SPGST, P_DATE, TRANCOST, TOTAL, RCV_EID) 
    VALUES (5005, 2005, 4006, 20, 100, 300, TO_DATE('07-Sep-11', 'DD-Mon-RR'), 20, 2320, 3003);
    INSERT INTO Purchase (PID, VID, SPID, PQTY, SPRATE, SPGST, P_DATE, TRANCOST, TOTAL, RCV_EID) 
    VALUES (5006, 2006, 4007, 30, 150, 630, TO_DATE('12-Oct-11', 'DD-Mon-RR'), 60, 5190, 3000);
    INSERT INTO Purchase (PID, VID, SPID, PQTY, SPRATE, SPGST, P_DATE, TRANCOST, TOTAL, RCV_EID) 
    VALUES (5007, 2001, 4003, 20, 5000, 14000, TO_DATE('07-Sep-11', 'DD-Mon-RR'), 1000, 115000, 3000);
    INSERT INTO Purchase (PID, VID, SPID, PQTY, SPRATE, SPGST, P_DATE, TRANCOST, TOTAL, RCV_EID) 
    VALUES (5008, 2006, 4005, 1, 129, 15.48, TO_DATE('12-Oct-11', 'DD-Mon-RR'), 50, 194.48, 3005);
    INSERT INTO Purchase (PID, VID, SPID, PQTY, SPRATE, SPGST, P_DATE, TRANCOST, TOTAL, RCV_EID) 
    VALUES (5009, 2006, 4005, 1, 129, 15.48, TO_DATE('15-Oct-11', 'DD-Mon-RR'), 50, 194.48, 3005);
    INSERT INTO Purchase (PID, VID, SPID, PQTY, SPRATE, SPGST, P_DATE, TRANCOST, TOTAL, RCV_EID) 
    VALUES (5010, 2006, 4009, 5, 340, 238, TO_DATE('20-Oct-11', 'DD-Mon-RR'), 0, 2938, 3005);       
            
        
        select * from purchase;
        
-------------------------------------------------------------------------------------------------------       
        
        
            SER_DET Table


CREATE TABLE SER_DET (
    SID       NUMBER(4)    CONSTRAINT pk_ser_det PRIMARY KEY,
    CID       NUMBER(4)    CONSTRAINT fk_ser_cid REFERENCES Customerr(CID),
    EID       NUMBER(4)    CONSTRAINT fk_ser_eid REFERENCES Employee_e(EID),
    SPID      NUMBER(4)    CONSTRAINT fk_ser_spid REFERENCES Sparepart(SPID),
    TYP_VEH   VARCHAR2(20),
    VEH_NO    VARCHAR2(20),
    TYP_SER   VARCHAR2(30),
    SER_DATE  DATE,
    QTY       NUMBER(6,2),
    SP_RATE   NUMBER(10,2),
    SP_AMT    NUMBER(10,2),
    SP_GST    NUMBER(10,2),
    SER_AMT   NUMBER(10,2),
    COMM      NUMBER(10,2),
    TOTAL     NUMBER(10,2)
);        
        
        
INSERT INTO SER_DET (SID, CID, EID, SPID, TYP_VEH, VEH_NO, TYP_SER, SER_DATE, QTY, SP_RATE, SP_AMT, SP_GST, SER_AMT, COMM, TOTAL) 
VALUES (6001, 1001, 3001, 4001, 'TWO WHEELER', 'MH13CA3228', 'TUBE DAMAGED', TO_DATE('02-Jan-11', 'DD-Mon-RR'), 1, 250, 250, 35, 50, 0, 335);

INSERT INTO SER_DET (SID, CID, EID, SPID, TYP_VEH, VEH_NO, TYP_SER, SER_DATE, QTY, SP_RATE, SP_AMT, SP_GST, SER_AMT, COMM, TOTAL) 
VALUES (6002, 1002, 3002, 4002, 'TWO WHEELER', 'MH-1603713', 'FULL SERVICING', TO_DATE('04-Mar-11', 'DD-Mon-RR'), 1, 400, 400, 52, 300, 50, 752);

INSERT INTO SER_DET (SID, CID, EID, SPID, TYP_VEH, VEH_NO, TYP_SER, SER_DATE, QTY, SP_RATE, SP_AMT, SP_GST, SER_AMT, COMM, TOTAL) 
VALUES (6003, 1003, 3004, 4005, 'TWO WHEELER', 'MH12PQ1313', 'CLUTCH WIRE', TO_DATE('22-Aug-11', 'DD-Mon-RR'), 1, 129, 129, 0, 10, 0, 139);

INSERT INTO SER_DET (SID, CID, EID, SPID, TYP_VEH, VEH_NO, TYP_SER, SER_DATE, QTY, SP_RATE, SP_AMT, SP_GST, SER_AMT, COMM, TOTAL) 
VALUES (6004, 1002, 3002, 4002, 'TWO WHEELER', 'MH-1603713', 'FULL SERVICING', TO_DATE('05-May-11', 'DD-Mon-RR'), 1, 400, 400, 52, 300, 50, 752);

INSERT INTO SER_DET (SID, CID, EID, SPID, TYP_VEH, VEH_NO, TYP_SER, SER_DATE, QTY, SP_RATE, SP_AMT, SP_GST, SER_AMT, COMM, TOTAL) 
VALUES (6005, 1004, 3001, 4009, 'TWO WHEELER', 'MH-14P3335', 'COLOR', TO_DATE('21-Oct-11', 'DD-Mon-RR'), 2.5, 340, 850, 119, 500, 150, 1469);

INSERT INTO SER_DET (SID, CID, EID, SPID, TYP_VEH, VEH_NO, TYP_SER, SER_DATE, QTY, SP_RATE, SP_AMT, SP_GST, SER_AMT, COMM, TOTAL) 
VALUES (6006, 1006, 3001, 4009, 'TWO WHEELER', 'MH-12WE534', 'COLOR', TO_DATE('01-Dec-11', 'DD-Mon-RR'), 2.5, 340, 850, 119, 500, 150, 1469);

INSERT INTO SER_DET (SID, CID, EID, SPID, TYP_VEH, VEH_NO, TYP_SER, SER_DATE, QTY, SP_RATE, SP_AMT, SP_GST, SER_AMT, COMM, TOTAL) 
VALUES (6007, 1007, 3001, 4001, 'FOUR WHEELER', 'MH17BE1345', 'TUBE DAMAGED', TO_DATE('01-Jan-12', 'DD-Mon-RR'), 1, 250, 250, 35, 150, 0, 435);


       select * from ser_det;      
          
 ---------------------------------------------------------------------------------------------       
        
        
       Garage System Questions.
       
       
       
Q.1 List all the customers serviced.

    SELECT DISTINCT c.CNAME FROM customerr c 
    INNER JOIN ser_det s ON c.CID = s.CID;
    
    
Q.2 Customers who are not serviced.

    SELECT c.CNAME FROM customerr c 
    LEFT JOIN ser_det s ON c.CID = s.CID
    WHERE s.SID IS NULL;

    
Q.3 Employees who have not received the commission.

    SELECT e.ENAME FROM employee_e e
    INNER JOIN ser_det s ON e.EID = s.EID 
    GROUP BY e.EID, e.ENAME
    HAVING SUM(s.COMM) = 0;
    

Q.4 Name the employee who have maximum Commission.

    SELECT ENAME
    FROM (
    SELECT e.ENAME,
           SUM(s.COMM) AS total_comm
    FROM   employee_e e
    INNER  JOIN ser_det s ON e.EID = s.EID
    GROUP  BY e.EID, e.ENAME
    ORDER  BY total_comm DESC
      )
      WHERE ROWNUM = 1;
  

Q.5 Show employee name and minimum commission amount received by an employee.

    SELECT ENAME, min_comm
    FROM (
    SELECT e.ENAME, SUM(s.COMM) AS min_comm
    FROM   employee_e e
    INNER  JOIN ser_det s ON e.EID = s.EID
    GROUP  BY e.EID, e.ENAME
    ORDER  BY min_comm ASC
    )
    WHERE ROWNUM = 1;
    
   

Q.6 Display the Middle record from any table.

    
          SELECT *
      FROM (
          SELECT e.*, ROW_NUMBER() OVER (ORDER BY eid) AS rn
          FROM employee_e e
      ) 
      WHERE rn = ceil((SELECT COUNT(*) FROM  employee_e e) / 2);

 


Q.7 Display last 4 records of any table.
       
 
        SELECT *
    FROM (
        SELECT e.*, ROW_NUMBER() OVER (ORDER BY eid desc) AS rn
        FROM employee_e e
    )
    WHERE rn <= 4;



Q.8 Count the number of records without count function from any table.

    SELECT ROWNUM AS record_count
    FROM Customer
    WHERE ROWNUM <= (SELECT MAX(ROWNUM) FROM Customer);
    
    
    SELECT ROWNUM AS record_count
    FROM Customer;

      
Q.9 Delete duplicate records from "Ser_det" table on cid.(note Please rollback after execution).

     DELETE FROM SER_DET
     WHERE SID NOT IN (
    SELECT MIN(SID)
    FROM SER_DET
    GROUP BY CID
    );
    
     rollback;

Q.10 Show the name of Customer who have paid maximum amount 


      SELECT c.cname, s.ser_amt
      FROM customerr c
      JOIN ser_det s ON c.cid = s.cid
      WHERE s.ser_amt IS NOT NULL
      AND s.ser_amt = (
          SELECT MAX(ser_amt)
          FROM ser_det
          WHERE ser_amt IS NOT NULL
          );


Q11. Display Employees who are not currently working. 

      SELECT EID, ENAME
      FROM Employee_e e
      WHERE EDOL IS NOT NULL;


Q.12 How many customers serviced their two wheelers.

     SELECT COUNT(DISTINCT CID)
     FROM SER_DET
     WHERE TYP_VEH = 'TWO WHEELER';
    

Q.13 List the Purchased Items which are used for Customer Service with Unit of that Item.

    
   SELECT DISTINCT sp.SPID, sp.SPNAME, sp.SPUNIT
     FROM Sparepart sp
JOIN   purchase p
       ON sp.spid = p.spid
JOIN   ser_det sd
       ON sp.spid = sd.spid;

Q.14 Customers who have Colored their vehicles.
   
      SELECT DISTINCT c.cname
      FROM customerr c
      JOIN ser_det s ON c.cid = s.cid
      WHERE s.TYP_SER = 'COLOR';
      

Q.15 Find the annual income of each employee inclusive of Commission

           SELECT e.EID, e.ENAME,
             NVL(e.ESAL,0)*12 + NVL(SUM(s.COMM),0) AS ANNUAL_INCOME
      FROM Employee_e e
      LEFT JOIN SER_DET s ON e.EID = s.EID
      GROUP BY e.EID, e.ENAME, e.ESAL;
        
      
Q.16 Vendor Names who provides the engine oil.

         SELECT DISTINCT v.VNAME
    FROM Vendors v
    JOIN Purchase p ON v.VID = p.VID
    JOIN Sparepart sp ON p.SPID = sp.SPID
    WHERE UPPER(sp.SPNAME) LIKE '%ENGINE OIL%';     
    
 
    

Q.17 Total Cost to purchase the Color and name the color purchased.

           SELECT sp.SPNAME AS COLOR_NAME, SUM(p.TOTAL) AS TOTAL_COST
      FROM Purchase p
      JOIN Sparepart sp ON p.SPID = sp.SPID
      WHERE UPPER(sp.SPNAME) IN ('WHITE COLOUR', 'BLACK COLOUR')
      GROUP BY sp.SPNAME;

Q.18 Purchased Items which are not used in "Ser_det".
     
         SELECT DISTINCT sp.SPNAME
    FROM Purchase p
    JOIN Sparepart sp ON p.SPID = sp.SPID
    WHERE p.SPID NOT IN (SELECT SPID FROM SER_DET WHERE SPID IS NOT NULL);

Q.19 Spare Parts Not Purchased but existing in Sparepart

         SELECT SPNAME
    FROM Sparepart
    MINUS
    SELECT sp.SPNAME
    FROM Sparepart sp
    JOIN Purchase p ON sp.SPID = p.SPID;


Q.20 Calculate the Profit/Loss of the Firm. consider one month salary of each employee for Calculation.

         WITH revenue AS (SELECT SUM(TOTAL) AS rev FROM SER_DET),
         purchase_cost AS (SELECT SUM(TOTAL) AS cost FROM Purchase),
         salary AS (SELECT SUM(NVL(ESAL,0)) AS sal FROM Employee_e)
    SELECT revenue.rev - purchase_cost.cost - salary.sal AS PROFIT_LOSS
    FROM revenue, purchase_cost, salary;

Q.21 Specify the names of customers who have serviced their vehicles more than one time.

      SELECT c.CNAME
      FROM Customerr c
      JOIN SER_DET s ON c.CID = s.CID
      GROUP BY c.CID, c.CNAME
      HAVING COUNT(*) > 1;

Q.22 List the Items purchased from vendors locationwise.

         SELECT v.VADD AS LOCATION, sp.SPNAME, SUM(p.PQTY) AS QTY
    FROM Vendors_v v
    JOIN Purchase p ON v.VID = p.VID
    JOIN Sparepart sp ON p.SPID = sp.SPID
    GROUP BY v.VADD, sp.SPNAME
    ORDER BY v.VADD, sp.SPNAME;

Q.23 Display count of two wheeler and four wheeler from ser_details

         SELECT TYP_VEH, COUNT(*) AS COUNT
    FROM SER_DET
    GROUP BY TYP_VEH;



Q24 Display name of customers who paid highest SPGST and for which item 

    SELECT c.CNAME, sp.SPNAME
    FROM Customerr c
    JOIN SER_DET s ON c.CID = s.CID
    JOIN Sparepart sp ON s.SPID = sp.SPID
    WHERE s.SP_GST = (SELECT MAX(SP_GST) FROM SER_DET);


Q25 Display vendors name who have charged highest SPGST rate  for which item

        SELECT v.VNAME, sp.SPNAME
    FROM Vendors v
    JOIN Purchase p ON v.VID = p.VID
    JOIN Sparepart sp ON p.SPID = sp.SPID
    WHERE p.SPGST = (SELECT MAX(SPGST) FROM Purchase);



Q26   list name of item and employee name who have received item 

    SELECT sp.SPNAME, e.ENAME
    FROM Purchase p
    JOIN Sparepart sp ON p.SPID = p.SPID 
    JOIN Employee_e e ON p.RCV_EID = e.EID;

Q27 Display the Name and Vehicle Number of Customer who serviced his vehicle, And Name the Item used for Service,And 
    specify the purchase date of that Item with his vendor and Item Unit and Location, 
    And employee Name who serviced the vehicle. for Vehicle NUMBER "MH-14PA335".'
    
    SELECT c.CNAME, sp.SPNAME, p.P_DATE, v.VNAME, sp.SPUNIT, v.VADD, e.ENAME
    FROM SER_DET s
    JOIN Customerr c ON s.CID = c.CID
    JOIN Sparepart sp ON s.SPID = sp.SPID
    JOIN Purchase p ON s.SPID = p.SPID   -- assuming same SPID links purchase and use
    JOIN Vendors v ON p.VID = v.VID
    JOIN Employee_e e ON s.EID = e.EID
    WHERE s.VEH_NO = 'MH-14P3335';
        
    
Q28 who belong this vehicle  MH-14PA335" Display the customer name 

        SELECT c.CNAME
    FROM SER_DET s
    JOIN Customerr c ON s.CID = c.CID
    WHERE s.VEH_NO = 'MH-14P3335';

Q29 Display the name of customer who belongs to New York and when he /she service their  vehicle on which date 

    SELECT c.CNAME, s.SER_DATE
    FROM Customerr c
    JOIN SER_DET s ON c.CID = s.CID
    WHERE UPPER(c.CADD) = 'NEW YORK';

   
Q 30 from whom we have purchased items having maximum cost?


    SELECT v.VNAME
    FROM Vendors v
    JOIN Purchase p ON v.VID = p.VID
    WHERE p.TOTAL = (SELECT MAX(TOTAL) FROM Purchase);


Q31 Display the names of employees who are not working as Mechanic and that employee done services  


    SELECT DISTINCT e.ENAME
    FROM Employee_e e
    JOIN SER_DET s ON e.EID = s.EID
    WHERE UPPER(e.EJOB) != 'MECHANIC';


 .
Q32 Display the various jobs along with total number of employees in each job. The output should
contain only those jobs with more than two employees.

      SELECT EJOB, COUNT(*) AS EMP_COUNT
      FROM Employee_e
      GROUP BY EJOB
      HAVING COUNT(*) > 2;


Q33 Display the details of employees who done service  and give them rank according to their no. of services .

      SELECT ENAME, service_count,
             RANK() OVER (ORDER BY service_count DESC) AS rank_no
      FROM (
          SELECT e.ENAME, COUNT(s.SID) AS service_count
          FROM Employee_e e
          JOIN SER_DET s ON e.EID = s.EID
          GROUP BY e.ENAME
      );

Q 34 Display those employees who are working as Painter and fitter and who provide service
 and total count of service done by fitter and painter  
       
       SELECT e.EJOB, COUNT(s.SID) AS TOTAL_SERVICES
      FROM Employee_e e
      LEFT JOIN SER_DET s ON e.EID = s.EID
      WHERE UPPER(e.EJOB) IN ('PAINTER', 'FITTER')
      GROUP BY e.EJOB;
 
 
Q35 Display employee salary and as per highest  salary provide Grade to employee 

      SELECT ENAME, ESAL,
             CASE
               WHEN ESAL = (SELECT MAX(ESAL) FROM Employee WHERE ESAL IS NOT NULL) THEN 'Grade A'
               WHEN ESAL >= (SELECT MEDIAN(ESAL) FROM Employee WHERE ESAL IS NOT NULL) THEN 'Grade B'
               ELSE 'Grade C'
             END AS GRADE
      FROM Employee_e
      WHERE ESAL IS NOT NULL
      ORDER BY ESAL DESC;


Q36  display the 4th record of emp table without using group by and rowid

        SELECT *
        FROM (
            SELECT e.*, ROWNUM rn
            FROM (SELECT * FROM Employee_e ORDER BY EID) e
        )
        WHERE rn = 4;


Q37 Provide a commission 100 to employees who are not earning any commission.
 
 
      UPDATE SER_DET s
          SET COMM = 100
          WHERE s.EID IN (
              SELECT EID FROM Employee_e
              MINUS
              SELECT EID FROM SER_DET WHERE COMM > 0
          ) AND (COMM = 0 OR COMM IS NULL);

Q38 write a query that totals no. of services  for each day and place the results
in descending order

              SELECT SER_DATE, COUNT(*) AS SERVICES
              FROM SER_DET
              GROUP BY SER_DATE
              ORDER BY SERVICES DESC;


Q39 Display the service details of those customer who belong from same city 

    SELECT c.CADD AS CITY, s.*
    FROM SER_DET s
    JOIN Customer c ON s.CID = c.CID
    WHERE c.CADD IN (
        SELECT CADD FROM Customer GROUP BY CADD HAVING COUNT(*) > 1
    )
    ORDER BY c.CADD, s.SER_DATE;



Q40 write a query join customers table to itself to find all pairs of
customers service by a single employee

          SELECT c1.CNAME || ' & ' || c2.CNAME AS PAIR, e.ENAME
          FROM SER_DET s1
          JOIN SER_DET s2 ON s1.EID = s2.EID AND s1.CID < s2.CID
          JOIN Customerr c1 ON s1.CID = c1.CID
          JOIN Customerr c2 ON s2.CID = c2.CID
          JOIN Employee_e e ON s1.EID = e.EID;


Q41 List each service number follow by name of the customer who
made  that service
      

      SELECT s.SID, c.CNAME
      FROM SER_DET s
      JOIN Customerr c ON s.CID = c.CID;


Q42 Write a query to get details of employee and provide rating on basis of  maximum services provide by employee
 .Note (rating should be like A,B,C,D)
       
       WITH emp_serv AS (
          SELECT e.ENAME, COUNT(s.SID) AS svc,
                 NTILE(4) OVER (ORDER BY COUNT(s.SID) DESC) AS bucket
          FROM Employee_e e
          LEFT JOIN SER_DET s ON e.EID = s.EID
          GROUP BY e.EID, e.ENAME
      )
      SELECT ENAME, svc,
             CASE bucket WHEN 1 THEN 'A' WHEN 2 THEN 'B' WHEN 3 THEN 'C' ELSE 'D' END AS RATING
      FROM emp_serv;
       
       
 
Q43 Write a query to get maximum service amount of each customer with their customer details ?


    SELECT c.*, ms.max_amt
    FROM customerr c
    JOIN (SELECT CID, MAX(TOTAL) max_amt FROM SER_DET GROUP BY CID) ms ON c.CID = ms.CID;


      SELECT c.*, MAX(s.service_amount) max_amount
      FROM customerr c
      JOIN ser_det s ON c.cid = s.cid
      GROUP BY s.cid, s.cname, c.city, s.veh_no, s.typ_veh;

SELECT c.*, MAX(s.SER_AMT) max_amount
FROM customerr c
JOIN ser_det s ON c.cid = s.cid
GROUP BY c.cid, c.cname, c.city, c.VEH_NO, s.TYP_VEH;    ---------------8888888888888------------------




Q44 Get the details of customers with his total no of services ?

    SELECT c.CID, c.CNAME, NVL(COUNT(s.SID),0) AS TOTAL_SERVICES
    FROM Customer c
    LEFT JOIN SER_DET s ON c.CID = s.CID
    GROUP BY c.CID, c.CNAME;


Q45 From which location sparpart purchased  with highest cost ?

        
      SELECT *
      FROM purchase
      WHERE sprate = (SELECT MAX(sprate) FROM purchase);----------------------888888-----------------


Q46 Get the details of employee with their service details who has salary is null

      SELECT e.*, s.*
      FROM Employee_e e
      LEFT JOIN SER_DET s ON e.EID = s.EID
      WHERE e.ESAL IS NULL;




Q47 find the sum of purchase location wise 


    SELECT v.VADD, SUM(p.TOTAL) AS TOTAL_PURCHASE
    FROM Vendors v
    JOIN Purchase p ON v.VID = p.VID
    GROUP BY v.VADD;



Q48 write a query sum of purchase amount in word location wise ?


      WITH spender AS (
          SELECT CID, SUM(TOTAL) tot FROM SER_DET GROUP BY CID
      ),
      top_spender AS (SELECT CID FROM spender WHERE tot = (SELECT MAX(tot) FROM spender)),
      rated AS (
          SELECT CID, NTILE(4) OVER (ORDER BY SUM(TOTAL) DESC) rating
          FROM SER_DET GROUP BY CID
      )
      SELECT CASE WHEN rating = 1 THEN 'YES' ELSE 'NO' END AS HIGHEST_RATED
      FROM rated WHERE CID IN (SELECT CID FROM top_spender);


Q49 Has the customer who has spent the largest amount money has
been give highest rating


SELECT c.cname
FROM customerr c
JOIN ser_det s ON c.cid = s.cid
GROUP BY c.cname
HAVING SUM(s.ser_amt) =
(
  SELECT MAX(SUM(s.ser_amt))
  FROM ser_det
  GROUP BY cid
);


Q50 select the total amount in service for each customer for which
the total is greater than the amount of the largest service amount in the table

      SELECT CID, SUM(TOTAL) AS CUST_TOTAL
      FROM SER_DET
      GROUP BY CID
      HAVING SUM(TOTAL) > (SELECT MAX(TOTAL) FROM SER_DET);


Q51  List the customer name and sparepart name used for their vehicle and  vehicle type

     SELECT c.CNAME, sp.SPNAME, s.TYP_VEH
      FROM SER_DET s
      JOIN Customer c ON s.CID = c.CID
      JOIN Sparepart sp ON s.SPID = sp.SPID;


Q52 Write a query to get spname ,ename,cname quantity ,rate ,service amount for record exist in service table 


    SELECT sp.SPNAME, e.ENAME, c.CNAME, s.QTY, s.SP_RATE, s.SER_AMT
    FROM SER_DET s
    JOIN Sparepart sp ON sp.SPID = sp.SPID
    JOIN Employee_e e ON s.EID = e.EID
    JOIN Customer c ON s.CID = c.CID;


Q53 specify the vehicles owners who�s tube damaged.

    SELECT c.CNAME, s.VEH_NO
    FROM SER_DET s
    JOIN Customer c ON s.CID = c.CID
    WHERE UPPER(s.TYP_SER) = 'TUBE DAMAGED';



Q.54 Specify the details who have taken full service.

    SELECT c.*, s.*
    FROM SER_DET s
    JOIN Customerr c ON s.CID = c.CID
    WHERE UPPER(s.TYP_SER) = 'FULL SERVICING';


Q.55 Select the employees who have not worked yet and left the job.

      SELECT *
      FROM Employee_e
      WHERE EDOL IS NOT NULL
        AND EID NOT IN (SELECT EID FROM SER_DET WHERE EID IS NOT NULL);


Q.56  Select employee who have worked first ever.

          
          SELECT e.ename
      FROM employee_e e
      JOIN ser_det s ON e.eid = s.eid
      WHERE s.ser_date = (SELECT MIN(ser_date) FROM ser_det);


57. Records on odd dates (day)

        SELECT *
        FROM SER_DET
        WHERE MOD(TO_NUMBER(TO_CHAR(SER_DATE, 'DD')), 2) = 1;

Q.58 Display all records falling in even date

           SELECT *
      FROM SER_DET
      WHERE MOD(TO_NUMBER(TO_CHAR(SER_DATE, 'DD')), 2) = 0;


Q.59 Display the vendors whose material is not yet used.

      SELECT DISTINCT v.VNAME
      FROM Vendors v
      JOIN Purchase p ON v.VID = p.VID
      WHERE NOT EXISTS (
          SELECT 1 FROM SER_DET s WHERE s.SPID = p.SPID
      );

Q.60 Difference between purchase date and used date of spare part.
 
           
    SELECT sp.SPNAME, p.P_DATE, s.SER_DATE, (s.SER_DATE - p.P_DATE) AS DAYS_DIFF
    FROM Purchase p
    JOIN SER_DET s ON p.SPID = s.SPID
    JOIN Sparepart sp ON p.SPID = sp.SPID;
            
    SELECT s.sid,
       s.ser_date - p.p_date AS days_difference
FROM ser_det s
JOIN purchase p ON s.spid = p.spid;

        
        
 --------------------------------------------------------------------------------       
        
        
        
        
