--1. NOW()- Get current date and time
SELECT NOW() AS CURRENT_DATETIME;

--2.CURRENT_DATE() -GET CURRENT DATE
SELECT CURRENT_DATE AS Today_date;

SELECT Added_date,Current_Date,(CURRENT_DATE-added_date) AS Days_difference
FROM Products;

--3.EXTRACT() -Extract parts of a Date and extract year,month,and day from the added_date column
SELECT Product_name,
  EXTRACT(YEAR FROM added_date) AS Year_added,
  EXTRACT(MONTH FROM added_date) AS Month_added,
  EXTRACT(DAY FROM added_date) AS Day_added 
  FROM Products;

  --.4	AGE() - Calculate age between dates calculate the time difference 
  --between added_date and today's date
  SELECT Product_name,
    AGE(CURRENT_DATE,added_date) AS Age_since_added FROM Products;

--5. TO_CHAR() - Format Dates as strings 
   -- format added_date in a custom format (DD-MM-YYYY)
    SELECT Product_name, 
	TO_CHAR(added_date,'DD-MM-YYYY') AS Formated_date from products;