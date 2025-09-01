--1.DATE_PART() - GET Specific Date part
--Extract the day of the week from added_date
SELECT Product_name,added_date,
Date_part('dow',added_date) AS day_of_week from products;

--2. DATE_TRUNC() - Truncate date to precision
--Truncate added_date to the start of the month
SELECT Product_name,
DATE_TRUNC('Month',added_date) AS Month_start from products;

--3 INTERVAL - Add or subtract time interval , add 6 months to the added_date
SELECT Product_name,added_date, added_date + INTERVAL '6 Days' AS new_date from products;

--4.CURRENT_TIME() -Get current time ,retrive only the current time
SELECT CURRENT_TIME AS CURRRENT_TIME;

--5.TO_DATE() - Convert string to date and convert a string to a date format
SELECT TO_DATE('01-09-2025','DD-MM-YYYY') AS Converted_date;