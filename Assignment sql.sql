CREATE TABLE Employees(Employee_id SERIAL PRIMARY KEY,First_name VARCHAR(20) NOT NULL,
Last_name VARCHAR(20)NOT NULL,Department VARCHAR(50),Salary DECIMAL(10,2) CHECK (Salary>0),
Joining_Date DATE NOT NULL,Age INT CHECK(age>=18) );

INSERT INTO employees (first_name, last_name, department, salary, joining_date, age) VALUES
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);
SELECT *FROM EMPLOYEES;
SELECT First_name ,Department from employees;
UPDATE EMPLOYEES
SET SALARY=SALARY+SALARY*0.1 Where Department='IT';
DELETE FROM EMPLOYEES WHERE >=34;
ALTER TABLE EMPLOYEES ADD COLUMN Email VARCHAR(50);

ALTER TABLE EMPLOYEES RENAME Department to Dept_name;

SELECT First_name,Last_name,joining_date from employees where joining_date > '2021-01-01';

ALTER TABLE EMPLOYEES  ALTER COLUMN SALARY TYPE INTEGER USING Salary::INTEGER;

SELECT First_name, age,salary FROM Employees ORDER BY Salary DESC ;

INSERT INTO employees (first_name, last_name, dept_name, salary, joining_date, age) VALUES
('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30);

UPDATE EMPLOYEES SET age = age+1;

DELETE FROM employees WHERE age >= 34;
 
