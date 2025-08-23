--Q-1.Retrive first_name ,salary,and calculate a 10% bonus on the salary.
SELECT First_name,salary,(SALARY*0.10) AS BONUS FROM Employee2;

--Q-2.Calculate the annual salary and salary increment by 5% show the monthly new salary as well.
SELECT First_name,Last_name,salary,
    (Salary * 12) AS annual_salary,
    (Salary * 0.05) AS salary_increment,
    (Salary + Salary * 0.05) AS new_salary FROM Employee2;
