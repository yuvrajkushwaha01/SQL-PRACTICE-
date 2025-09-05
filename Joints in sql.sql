
-- Create Employee3 table
CREATE TABLE Employee3 (
    Employee_id SERIAL PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_name VARCHAR(50),
    Department_id INT);

-- Insert employee data
INSERT INTO Employee3 (First_Name, Last_Name, Department_id)
VALUES
('Yuvraj', 'Kushwaha', 101),
('Aarav', 'Mehta', 102),
('Ishita', 'Singh', 103),
('Rohan', 'Patel', 104),
('Neha', 'Sharma', 101),
('Kabir', 'Khan', 999); 
SELECT *FROM Employee3;

-- Create Department table
CREATE TABLE Department (
    Department_id INT PRIMARY KEY,
    Department_name VARCHAR(50));
-- Insert department data
INSERT INTO Department (Department_id, Department_name) VALUES
(101, 'Data Analyst'),
(102, 'Marketing'),
(103, 'IT'),
(104, 'HR'),
(105, 'Finance'); 
SELECT *FROM Department;

-- INNER JOIN: Returns only employees with a matching department
SELECT 
    e.Employee_id,
    e.First_Name AS Employee_first_name,
    e.Last_name AS Employee_last_name,
    d.Department_id,
    d.Department_name
FROM Employee3 e
INNER JOIN Department d
ON e.Department_id = d.Department_id
ORDER BY e.Employee_id;

-- LEFT JOIN: Returns all employees, department info if exists, NULL if no match
SELECT 
    e.Employee_id,
    e.First_Name AS Employee_first_name,
    e.Last_name AS Employee_last_name,
    d.Department_id,
    d.Department_name
FROM Employee3 e
LEFT JOIN Department d
ON e.Department_id = d.Department_id
ORDER BY e.Employee_id;

-- RIGHT JOIN: Returns all departments, employee info if exists, NULL if no match
SELECT 
    e.Employee_id,
    e.First_Name AS Employee_first_name,
    e.Last_name AS Employee_last_name,
    d.Department_id,
    d.Department_name
FROM Employee3 e
RIGHT JOIN Department d
ON e.Department_id = d.Department_id
ORDER BY d.Department_id;

-- FULL OUTER JOIN: All employees and all departments, NULL if no match
SELECT 
    e.Employee_id,
    e.First_Name AS Employee_first_name,
    e.Last_name AS Employee_last_name,
    d.Department_id,
    d.Department_name
FROM Employee3 e
FULL OUTER JOIN Department d
ON e.Department_id = d.Department_id
ORDER BY COALESCE(e.Employee_id, d.Department_id);
-- CROSS JOIN: Returns all possible combinations of employees and departments
SELECT 
    e.Employee_id,
    e.First_Name AS Employee_first_name,
    e.Last_name AS Employee_last_name,
    d.Department_id,
    d.Department_name
FROM Employee3 e
CROSS JOIN Department d;

-- SELF JOIN: Join Employee3 table with itself to compare or relate employees
SELECT 
    e1.Employee_id AS Employee1_ID,
    e1.First_Name AS Employee1_FirstName,
    e2.Employee_id AS Employee2_ID,
    e2.First_Name AS Employee2_FirstName
FROM Employee3 e1
INNER JOIN Employee3 e2
ON e1.Department_id = e2.Department_id
WHERE e1.Employee_id <> e2.Employee_id;

-- Employees with no matching department
SELECT 
    e.Employee_id,
    e.First_Name,
    e.Last_name
FROM Employee3 e
LEFT JOIN Department d
ON e.Department_id = d.Department_id
WHERE d.Department_id IS NULL;

-- Pair of employees in the same department
SELECT 
    e1.First_Name AS Employee1,
    e2.First_Name AS Employee2,
    e1.Department_id
FROM Employee3 e1
INNER JOIN Employee3 e2
ON e1.Department_id = e2.Department_id
WHERE e1.Employee_id < e2.Employee_id;

-- Show employees with their department
SELECT 
    e.First_Name,
    e.Last_name,
    d.Department_name
FROM Employee3 e
INNER JOIN Department d
ON e.Department_id = d.Department_id;

-- Combine all employees and departments, show NULL if no match
SELECT 
    e.First_Name AS Employee,
    d.Department_name AS Department
FROM Employee3 e
FULL OUTER JOIN Department d
ON e.Department_id = d.Department_id;

