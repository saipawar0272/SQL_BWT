---Functions :-
--Functions help us to manipulate data more efficiently

--string function
--Date function
--Numeric Function
--Aggregate Function
-- Analytical Function

-------------------------------String Function-------------------

--ASCII():- Return a ASCII code for character

SELECT ASCII('E')FROM DUAL;
SELECT ASCII('S') FROM DUAL;
SELECT ASCII(78) FROM DUAL;

SELECT CHR(65) FROM DUAL;

SELECT CHR(32) FROM DUAL;

SELECT ASCII('a') FROM DUAL;

SELECT ASCII( ) FROM DUAL;

SELECT FIRST_NAME,ASCII(FIRST_NAME) FROM HR.EMPLOYEES;

--CONCAT(): CONCATENATE FUNCTION IS USED TO COMBINE 2 STRING

SELECT CONCAT('A', 'BC') FROM DUAL;

SELECT FIRST_NAME, LAST_NAME,CONCAT(FIRST_NAME, LAST_NAME ) AS FULL_NAME FROM 
HR.EMPLOYEES;

--INIT-INTIAL LETTER CPITAL--------------------

SELECT INITCAP('abc') from dual;


SELECT * FROM HR.EMPLOYEES;

SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,INITCAP(EMAIL) AS CAPITAL
FROM HR.EMPLOYEES;

----UPPER()------------

SELECT FIRST_NAME, LAST_NAME,UPPER(FIRST_NAME) AS CAPITAL FROM
HR.EMPLOYEES;

-----LOWER()---------

SELECT FIRST_NAME,LAST_NAME, LOWER(FIRST_NAME) AS FIRST_NAME FROM
HR.EMPLOYEES;

---LENGTH()-RETURN HOW MANY NO OF CHAR---

SELECT LENGTH ('ABC') FROM DUAL;

SELECT FIRST_NAME, LENGTH(FIRST_NAME)
FROM HR.EMPLOYEES;


---INSTR(): SERACH FOR THE SUBTRING AND RETURN THE LOCATION OF THE
---SUBTRING IN GIVEN STRING---GIVES POSITION OF THE STRING

--WORD BY WORD----

SELECT INSTR('This is a playlist','is') from dual;

--CHR BY CHR---

SELECT INSTR('This is a playlist', 'a') from dual;


--space position--

SELECT INSTR('This is a playlist', ' ') from dual;

SELECT INSTR('This is a playlist', 'is', 1,2) from dual;
SELECT INSTR('This is a playlist', 'is', 1,3) from dual;
select instr('This is a playlist', 'is', 1,4) from dual;

select instr('saipawar0272@gmail.com','@') from dual;



select instr('This is a playlist', 'is', 1,1),
instr('This is a playlist', 'is', 1,2),
instr('This is a playlist', 'is', 1,3) from dual;

SELECT INSTR('THIS IS A PLAYLIST', 'IS', -1)
FROM DUAL;

---SUBSTR(): EXTRACT SUBSTRING FROM THE STRING---

SELECT SUBSTR('Oracle substring',1) from dual; 

SELECT SUBSTR('Oracle substring',1,6) from dual;

select substr('Oracle substring', 1,9) from dual;

SELECT SUBSTR('Oracle substring',3,9) from dual;

select substr('saipawar0272@gmail.com','@',1) from dual;

select substr('saipawar0272@gmail.com',13) from dual;

SELECT SUBSTR('REKHADODAKE@GMAIL.COM',
      INSTR('REKHADODAKE@GMAIL.COM', '@'),13)
      FROM DUAL;


--LPAD(): SECURITY PURPOSE---

SELECT LPAD('ABC',5, '*') FROM DUAL;

SELECT EMPLOYEE_ID, FIRST_NAME, LPAD(FIRST_NAME,10,'*') FROM 
HR.EMPLOYEES;


---RPAD(): RIGHT -PAD---

SELECT EMPLOYEE_ID,FIRST_NAME, RPAD(FIRST_NAME,10,'*') FROM
HR.EMPLOYEES;

----LTRIM():REMOVES UNNCECESSARY SPACE----LTRIM(),RTRIM(),TRIM()

SELECT LTRIM('   ABC  SAI   ') FROM DUAL;

-----REPLACE():  REPLACE STRING BY STRING

SELECT REPLACE('THIS IS A TEST','IS','is') FROM DUAL;

select instr('This is a test', 'is',1,2) from dual;

select substr('this is a test',6) from dual;

SELECT REPLACE('THIS IS A TEST', 'IS', 'is') FROM DUAL;

SELECT REPLACE('THIS IS A TEST', 'IS', 'is',1,1) FROM DUAL;

SELECT REGEXP_REPLACE('THIS IS A TEST', 'IS', 'is',2) FROM DUAL;

SELECT REGEXP_REPLACE('THIS IS A TEST', 'IS', 'is', 5) FROM DUAL;

SELECT REPLACE('THIS IS A TEST', ' IS ', ' is ') FROM DUAL;

SELECT 'A-B-C-D', SUBSTR ('A-B-C-D', 1, INSTR('A-B-C-D', '-', 
1,2) -1)
|| '/'
|| SUBSTR('A-B-C-D', INSTR('A-B-C-D', '-', 1,2)+ 1) AS RESULT
FROM DUAL;










SELECT FIRST_NAME, LAST_NAME,UPPER(FIRST_NAME) AS CAPITAL FROM
HR.EMPLOYEES;


SELECT ('THIS IS A TEST'),UPPER('IS') FROM DUAL;
SELECT ('THIS IS A TEST'), LOWER('IS') FROM DUAL;

SELECT('this is a test'), initcap('is') from dual; 




--TRANSLATE():- GOES CHARACTER BY CHARACTER

SELECT TRANSLATE('ORACLE,PYTHON,DATABASE,AI',',',':') FROM DUAL;













































































