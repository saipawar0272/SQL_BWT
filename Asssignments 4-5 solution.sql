

CREATE TABLE Employees (
    Employee_id INT PRIMARY KEY,
    Full_Name VARCHAR(50),
    Salary DECIMAL(10,2),
    Hire_date DATE
);

    select * from employees;

 INSERT INTO Employees (Employee_id, Full_Name, Salary, Hire_date)
 VALUES (100, 'S.King', 24000, TO_DATE('17-06-2003','DD-MM-YYYY'));

 INSERT INTO Employees (Employee_id, Full_Name, Salary, Hire_date) VALUES
(116, 'S.Baida', 2900, TO_DATE('24-12-2005','DD-MM-YYYY'));

INSERT INTO Employees (Employee_id, Full_Name, Salary, Hire_date) VALUES
(117, 'S.Tobias', 2800, TO_DATE('24-07-2005','DD-MM-YYYY'));

INSERT INTO Employees (Employee_id, Full_Name, Salary, Hire_date) VALUES
(123, 'S.Vollman', 6500, TO_DATE('10-10-2005','DD-MM-YYYY'));

INSERT INTO Employees (Employee_id, Full_Name, Salary, Hire_date) VALUES
(128, 'S.Markle', 2200, TO_DATE('08-03-2008','DD-MM-YYYY'));

INSERT INTO Employees (Employee_id, Full_Name, Salary, Hire_date) VALUES
(138, 'S.Stiles', 3200, TO_DATE('26-10-2005','DD-MM-YYYY'));

INSERT INTO Employees (Employee_id, Full_Name, Salary, Hire_date) VALUES
(161, 'S.Sewall', 7000, TO_DATE('03-11-2006','DD-MM-YYYY'));


    
    CREATE TABLE Jobs (
        Job_Title VARCHAR2(50) PRIMARY KEY,
        Employees NUMBER,
        Managers NUMBER
    );

        select * from jobs;

INSERT INTO Jobs (Job_Title, Employees, Managers) VALUES ('Accountant', 5, 1);
INSERT INTO Jobs (Job_Title, Employees, Managers) VALUES ('Accounting Manager', 1, 1);
INSERT INTO Jobs (Job_Title, Employees, Managers) VALUES ('Administration Assistant', 1, 1);
INSERT INTO Jobs (Job_Title, Employees, Managers) VALUES ('Administration Vice President', 2, 1);
INSERT INTO Jobs (Job_Title, Employees, Managers) VALUES ('Finance Manager', 1, 1);
INSERT INTO Jobs (Job_Title, Employees, Managers) VALUES ('Human Resources Representative', 1, 1);
INSERT INTO Jobs (Job_Title, Employees, Managers) VALUES ('Marketing Manager', 1, 1);
INSERT INTO Jobs (Job_Title, Employees, Managers) VALUES ('Sales Representative', 30, 5);
INSERT INTO Jobs (Job_Title, Employees, Managers) VALUES ('Shipping Clerk', 20, 5);
INSERT INTO Jobs (Job_Title, Employees, Managers) VALUES ('Stock Clerk', 20, 5);



      CREATE TABLE Employee_Tenure (
          Employee_id NUMBER PRIMARY KEY,
          Last_name VARCHAR2(50),
          Weeks NUMBER,
          Months NUMBER,
          Years NUMBER
      );


INSERT INTO Employee_Tenure (Employee_id, Last_name, Weeks, Months, Years) VALUES (100, 'King', 24, 166, 14);
INSERT INTO Employee_Tenure (Employee_id, Last_name, Weeks, Months, Years) VALUES (101, 'Kochhar', 20, 139, 12);
INSERT INTO Employee_Tenure (Employee_id, Last_name, Weeks, Months, Years) VALUES (102, 'De Haan', 28, 195, 16);
INSERT INTO Employee_Tenure (Employee_id, Last_name, Weeks, Months, Years) VALUES (103, 'Hunold', 19, 136, 11);
INSERT INTO Employee_Tenure (Employee_id, Last_name, Weeks, Months, Years) VALUES (104, 'Ernst', 17, 119, 10);
INSERT INTO Employee_Tenure (Employee_id, Last_name, Weeks, Months, Years) VALUES (105, 'Austin', 20, 142, 12);


Q1: Write a query to display the Full name only those employees whose first name start with ‘S’ character.

    SELECT employee_id,(substr(full_name,1,1)) Full_Name,salary,hire_date
    FROM employees
    WHERE full_name like 'S%';



Q2. Find the highest, lowest, sum, and average salary of all employees. Label the columns Maximum
,Minimum, Sum, and Average, respectively. Round your results to the nearest whole number. 

    SELECT round(max(salary)) highest,
    round(min(salary)) lowest,
    round(sum(salary)) sum,
    round(avg(salary)) avg
    FROM employees;

Q3. Display following output .
Employee Details
--------------------------------------------------------------------------------------
King earns $24,000.00 monthly but wants $72,000.00.
Kochhar earns $20,000.00 monthly but wants $60,000.00.
De Haan earns $17,000.00 monthly but wants $51,000.00.
Hunold earns $9,000.00 monthly but wants $27,000.00.
Ernst earns $6,000.00 monthly but wants $18,000.00.
Austin earns $4,800.00 monthly but wants $14,400.00.



Q4. Determine the number of managers without listing them. Label the column  Number of Managers 
    Hint: Use the MANAGER_ID column to determine the number of managers. 


    SELECT count(managers) number_of_managers
    FROM jobs;

Q5. Find the difference between the highest and lowest salaries. Label the column DIFFERENCE


      SELECT max(salary)-min(salary) as difference
      FROM employees;
      
      
Q6. Display how many employees joined in each month
Hint: Grouping by month and count the employees .use TO_CHAR functions also

    SELECT to_char(hire_date,'Month')month,count(employee_id)
    FROM employees
    group by to_char(hire_date,'Month')
    order by month;

Q7. Display employee id , full name of employees and their hire date only those employees that has greater than 10 year experience in company.

    SELECT employee_id, Full_name,hire_date
    FROM employees
    WHERE (to_char(hire_date)<sysdate-365*10);	

    select * from employees

Q8. Write a query to multipley  salary to commission and calculate the average salary of employees.
Hint: Commission column contain null values

      SELECT AVG(salary * NVL(commission_pct, 0)) AS avg_salary_commission
      FROM employees;



Q9.Write a query to display department_id and number of manager under the particular department exclude the null department.
Hint: Grouping on department id


        SELECT department_id,count(manager_id)
        FROM departments
        WHERE department_id is not null
        group by department_id;

SELECT department_id,
       COUNT(managers) AS manager_count
FROM employee e
WHERE managers IS NOT NULL
  AND department_id IS NOT NULL
GROUP BY department_id;


Q10.Display job title and number of employees working those job and number of manager they perform job.

    SELECT count(employee_id),count(manager_id),j.job_title
    FROM employees e,jobs j
    WHERE e.job_id=j.job_id and manager_id is not null
    group by j.job_title;

Q11: Display employee full name padded with asterisks
  

  SELECT 
        '**********' || first_name || ' ' || last_name || '**********' AS "Employee Details"
    FROM employees;

Q12. Display following output. (Hint: Use Months_between Function)


    SELECT employee_id,hire_date,round(months_between(sysdate,hire_date)/7) weeks,
    round(months_between(sysdate,hire_date)) months,
    round(months_between(sysdate,hire_date)/12) years
    FROM employees;

























































































































