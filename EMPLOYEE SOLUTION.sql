

CREATE TABLE Employee (
    emp_id INTEGER PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    salary INTEGER,
    joining_date DATE,
    department VARCHAR(30)
);


CREATE TABLE Incentive (
    emp_id INTEGER,
    incentive_date DATE,
    incentive_amount INTEGER,
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);

---------------------------------------EMPLOYEE---------------------------------------------------------

INSERT INTO Employee (emp_id, first_name, last_name, salary, joining_date, department) VALUES
(1, 'John', 'Abraham', 1000000, DATE '2013-01-01', 'BANKING');

INSERT INTO Employee (emp_id, first_name, last_name, salary, joining_date, department) VALUES
(2, 'Michael', 'Clarke', 800000, DATE '2013-01-01', 'INSURANCE');


INSERT INTO Employee (emp_id, first_name, last_name, salary, joining_date, department) VALUES
(3, 'Roy', 'Thomas', 700000, DATE '2013-02-01', 'BANKING');

INSERT INTO Employee (emp_id, first_name, last_name, salary, joining_date, department) VALUES
(4, 'Tom', 'Jose', 600000, DATE '2013-02-01', 'INSURANCE');

INSERT INTO Employee (emp_id, first_name, last_name, salary, joining_date, department) VALUES
(5, 'Jerry', 'Pinto', 650000, DATE '2013-02-01', 'INSURANCE');

INSERT INTO Employee (emp_id, first_name, last_name, salary, joining_date, department) VALUES
(6, 'Philip', 'Mathew', 750000, DATE '2013-01-01', 'SERVICES');


select* from employee;

-----------------------------------------INCENTIVES---------------------------------------------------------------

INSERT INTO Incentive (emp_id, incentive_date, incentive_amount) VALUES
(1, DATE '2013-02-01', 5000);


INSERT INTO Incentive (emp_id, incentive_date, incentive_amount) VALUES
(2, DATE '2013-02-01', 3000);


INSERT INTO Incentive (emp_id, incentive_date, incentive_amount) VALUES
(3, DATE '2013-02-01', 4000);


INSERT INTO Incentive (emp_id, incentive_date, incentive_amount) VALUES
(1, DATE '2013-01-01', 4500);



INSERT INTO Incentive (emp_id, incentive_date, incentive_amount) VALUES
(2, DATE '2013-01-01', 3500);


select* from incentive;


--------------------------------------QUESTIONS----------------------------------------

1.	Write create table syntax for employee table and Incentive table

CREATE TABLE Employee (
    emp_id INTEGER PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    salary INTEGER,
    joining_date DATE,
    department VARCHAR(30)
);


CREATE TABLE Incentive (
    emp_id INTEGER,
    incentive_date DATE,
    incentive_amount INTEGER,
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);


2.	Write syntax for insert data into table of employee table and Incentive table

    Above
  
  
3.	Get all employee details from the employee table

    SELECT * FROM EMPLOYEE;


4.	Get First_Name,Last_Name from employee table

     SELECT first_name,last_name from employee;


5.	Get First_Name from employee table using alias name “Employee Name”

    SELECT first_name AS "Employee Name"
    FROM employee;


6.	Get First_Name from employee table in upper case

    select UPPER(first_name) AS first_name from employee;
    
    
7.	Select first 3 characters of FIRST_NAME from EMPLOYEE

    select SUBSTR(first_name, 1, 3) AS first3char from employee;


8.	Get position of 'o' in name 'John' from employee table 

      SELECT INSTR(first_name, 'o') AS POSITION
       FROM employee
        WHERE first_name = 'John';
   

9.	Get FIRST_NAME from employee table after removing white spaces from right side.

    SELECT RTRIM(first_name) AS First_Name
    FROM employee;

10.	Get First_Name from employee table after replacing 'o' with '$'

    select replace(first_name, 'o', '$') AS First_name
    from employee;

11.	Get First_Name and Last_Name as single column from employee table separated by a '_'

    SELECT First_Name || '_' || Last_Name AS Full_Name
    FROM Employee;

12.	Get FIRST_NAME, Joining year, Joining Month and Joining Date from employee table     

    SELECT 
    FIRST_NAME,
    EXTRACT(YEAR FROM Joining_Date)  AS JoiningYear,
    EXTRACT(MONTH FROM Joining_Date) AS JoiningMonth,
    EXTRACT(DAY FROM Joining_Date)   AS JoiningDay
    FROM Employee;


13.	Get all employee details from the employee table order by First_Name Ascending

         SELECT * FROM Employee
         ORDER BY First_Name ASC;

14.	Get all employee details from the employee table order by First_Name Ascending and Salary Descending?

    select * from employee
    order by First_name ASC, salary DESC;

15.	Get employee details from employee table whose employee name is “John”
    
    SELECT * from employee
    where first_name = 'John';
    
16.	Get employee details from employee table whose employee name are “John” and “Roy”

    select * from employee
    where first_name in('John', 'Roy');
       
17.	Get employee details from employee table whose employee name are not “John” and “Roy”.

    select * from employee
    where first_name not in('John', 'Roy');
    
18.	Get employee details from employee table whose first name starts with 'J'.

    select * from employee
    where first_name like 'J%';   


19.	Get employee details from employee table whose first name contains 'o'.

    select * from employee
    where first_name like '%o%';
    
20.	Get employee details from employee table whose first name ends with 'n'.

    select * from employee
    where first_name like '%n';


21.	Get employee details from employee table whose first name ends with 'n' and name contains 4 letters.

    select * from employee
    where first_name like '___n';

    SELECT *
    FROM employee
    WHERE first_name LIKE '___n'
    AND LENGTH(first_name) = 4;


22.	Get employee details from employee table whose first name starts with 'J' and name contains 4 letters.

    select * from employee
    where first_name like 'J___';
  

    select * from employee
    where first_name like 'J___'
    and length (first_name) = 4;


23.	Get employee details from employee table who’s Salary greater than 600000.

    select  * from employee
    where salary > 600000;


24.	Get employee details from employee table whose joining year is “2013”.

    select * from employee
    where extract(year from joining_date) = 2013;


25.	Get employee details from employee table whose joining month is “January”.

    select * from employee
    where extract(month from joining_date) = '1';


26.	Get employee details from employee table who joined before January 1st 2013.

         SELECT * FROM Employee
         WHERE Joining_Date < TO_DATE('01/01/2013', 'DD/MM/YYYY');


27.	Get employee details from employee table who joined after January 31st

    select * from employee
    where Joining_date > To_date('31-01-2013', 'DD/MM/YYYY');


28.	Get Joining Date and Time from employee table

     SELECT emp_id,
       TO_CHAR(joining_date, 'DD-MON-YYYY HH24:MI:SS') AS joining_datetime
       FROM employee;
      

29.	Get Joining Date, Time including milliseconds from employee table

      SELECT emp_id,
       TO_CHAR(joining_date, 'DD-MON-YYYY HH24:MI:SS:') AS joining_datetime
       FROM employee;
       
       
30.	Get difference between JOINING_DATE and INCENTIVE_DATE from employee and incentives table.       

  
        SELECT e.emp_id,
           (i.incentive_date - e.joining_date) AS diff_in_days
    FROM employee e
    JOIN incentive i
      ON e.emp_id = i.emp_id;
        
  
31.	Get department, total salary with respect to a department from employee table.    

    SELECT 
    department, 
    SUM(salary) AS total_salary
    FROM employee
    GROUP BY department;


32.	Get department, total salary with respect to a department from employee table order by total salary descending.

    select department, sum(salary) as total_salary
    from employee
    group by department
    order by total_salary desc;

33.	Get department, no of employees in a department, total salary with respect to department from employee 
    table order by total salary descending.
 
    select department,
    count(*) AS no_of_employees,
    sum(salary) as total_salary
    from employee
    group by department
    order by total_salary desc;


34.	Get department wise average salary from employee table order by salary ascending?

    select department,
    Avg(salary) as Average_salary
    from employee
    group by department
    order by Average_salary asc;


35.	Get department wise maximum salary from employee table order by salary ascending?

    select department,
    max(salary) as maximum_salary
    from employee
    group by department
    order by maximum_salary desc;
    

36.	Get department wise minimum salary from employee table order by salary ascending?

    select department,
    min(salary) as minimum_salary
    from employee
    group by department
    order by minimum_salary asc;
    

37.	Select no of employees joined with respect to year and month from employee table.

       SELECT EXTRACT(YEAR FROM joining_date) AS join_year,
       EXTRACT(MONTH FROM joining_date) AS join_month,
       COUNT(*) AS no_of_employees
       FROM Employee
       GROUP BY EXTRACT(YEAR FROM joining_date), EXTRACT(MONTH FROM joining_date)
       ORDER BY join_year, join_month;


38.	Select department,total salary with respect to a department from employee table 
    where total salary greater than 800000 order by Total_Salary descending

    
    select department,
    sum(salary) as total_salary
    from employee
    group by department
    having sum(salary) > 800000 
    order by total_salary desc;


39.	Select employee details from employee table if data in incentive table?
 
    ---USING EXISTS
        SELECT e.*
    FROM employee e
    WHERE EXISTS (
        SELECT 1
        FROM incentive i
        WHERE  i.emp_id = e.emp_id
        );
        
    ---USING IN 
    SELECT e.*
    FROM employee e
    WHERE e.emp_id IN (
        SELECT i.emp_id
        FROM incentive i
    ); 

40.	Select 20 % of salary from John, 10% of Salary for Roy and for other 15 % of salary from employee table


    SELECT emp_id, first_name,salary,
       CASE 
           WHEN first_name = 'John' THEN salary * 0.20
           WHEN first_name = 'Roy'  THEN salary * 0.10
           ELSE salary * 0.15
           END AS calculated_salary
           FROM Employee e;


41.	Select Banking as 'Bank Dept', Insurance as 'Insurance Dept' and Services as 'Services Dept' from employee table.

         SELECT emp_id, first_name, salary,
       CASE 
           WHEN department = 'Banking'   THEN 'Bank Dept'
           WHEN department = 'Insurance' THEN 'Insurance Dept'
           WHEN department = 'Services'  THEN 'Services Dept'
           ELSE department
           END AS department_alias
           FROM employee ;


         SELECT emp_id,first_name, salary,
          DECODE(department,
              'Banking',   'Bank Dept',
              'Insurance', 'Insurance Dept',
              'Services',  'Services Dept',
              department) AS department_alias
              FROM Employee;


42.	Delete employee data from employee table who got incentives in incentive table

       DELETE FROM Employee
       WHERE emp_id IN (
         SELECT emp_id
         FROM Incentive
         );
              
         Rollback;

43.	Select first_name, incentive amount from employee and incentives table for those employees who have incentives.

          SELECT first_name,incentive_amount
          from employee e
          inner join incentive i
          on e.emp_id = i.emp_id;
          
          
          
44.	Select first_name, incentive amount from employee and incentives table for those employees
    who have incentives and incentive amount greater than 3000

    select first_name,incentive_amount
    from employee e
    inner join incentive i
    on e.emp_id = i.emp_id
    where i.incentive_amount > 3000;
 


45.	Select first_name, incentive amount from employee and incentives table for all employees even
    if they didnt get incentives


       SELECT first_name,
       NVL(incentive_amount, 0) AS incentive_amount
       FROM employee e
       LEFT JOIN Incentive i
       ON i.emp_id = e.emp_id;
       


46.	Select first_name, incentive amount from employee and incentives table for all employees even
    if they didn't get incentives and set incentive amount as 0 for those employees who didn't get incentives.

    SELECT first_name,
       NVL(incentive_amount, 0) AS incentive_amount
       FROM Employee e
       LEFT JOIN Incentive i
       ON e.emp_id = i.emp_id;    



47.	Select first_name, incentive amount from employee and incentives table for all employees 
    who got incentives using left join


        SELECT first_name,incentive_amount
        FROM Employee e
        LEFT JOIN Incentive i
        ON e.emp_id = i.emp_id
        WHERE i.incentive_amount IS NOT NULL;
        


48.	Select max incentive with respect to employee from employee and incentives table using sub query.


    SELECT first_name,
       (SELECT MAX(incentive_amount)
        FROM incentive i
        WHERE i.EMP_ID = e.EMP_ID) AS max_incentive
        FROM Employee e;
        
     
----------------------------------------------------------------------------------------------------

select * from employee;

select * from incentive;









CREATE VIEW high_salary AS
SELECT first_name, salary
FROM employee
WHERE salary > 50000






