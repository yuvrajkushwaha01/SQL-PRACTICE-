SELECT *FROM Products;
--Get all categories in uppercase
 SELECT UPPER(category) AS category_capital FROM Products;

--Get all categories in Lowercase
 SELECT LOWER(category) AS category_capital FROM Products;

--Join product_name and category text with hypen
 SELECT CONCAT(product_name,'-',Category) AS Product_detail FROM Products;

 --Extract the first 5 characters from product_name
 SELECT SUBSTRING(Product_name,1,6) AS Short_name FROM Products;

 --Count length
 SELECT  Product_name,LENGTH(Product_name) AS Count_of_Char FROM Products;

 --Remove leading and trailing spaces from string
 SELECT TRIM('Monitor') AS Trimmed_text from products;

 --Replace the word "phone" with "devices" in product names
 SELECT REPLACE (product_name,'phone','devices') AS Updated From Products;

 --Get the first 3 characters from category
 SELECT RIGHT (Category,5) AS Category_capital from products;
 
SELECT LEFT (Category,5) AS Category_capital from products;

 
