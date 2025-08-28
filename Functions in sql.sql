CREATE TABLE Products (Product_id SERIAL PRIMARY KEY,Product_name VARCHAR(50),Category VARCHAR(50),
Price NUMERIC(10,2),Quantity INT,Added_date DATE,Discount_rate NUMERIC(5,2));
INSERT INTO Products (Product_name, Category, Price, Quantity, Added_date, Discount_rate)
VALUES
('Laptop', 'Electronics', 65000.00, 10, '2025-08-01', 10.00),
('Smartphone', 'Electronics', 25000.00, 25, '2025-08-05', 5.50),
('Headphones', 'Electronics', 2999.00, 40, '2025-08-12', 7.25),
('Office Chair', 'Furniture', 5500.00, 15, '2025-07-28', 12.00),
('Dining Table', 'Furniture', 18500.00, 5, '2025-08-15', 15.00),
('Running Shoes', 'Footwear', 3200.00, 30, '2025-08-10', 8.75),
('T-Shirt', 'Clothing', 799.00, 50, '2025-08-18', 5.00),
('Jeans', 'Clothing', 1999.00, 35, '2025-08-20', 10.00),
('Milk Packet', 'Grocery', 45.00, 100, '2025-08-20', 0.00),
('Rice (10kg)', 'Grocery', 550.00, 60, '2025-08-22', 2.50);
SELECT *FROM Products;

--Total quanity of all product
SELECT SUM(Quantity) AS Total_Quantity
FROM Products;

--Total No of products
SELECT COUNT(*)AS TOTAL_PRODUCT From products;

--Count with condition
SELECT COUNT(*)AS TOTAL_PRODUCT From products WHERE product_name LIKE'%Laptop%';

--Average price of products
SELECT AVG(price) AS Average_price from products;

--Average price of products
SELECT AVG(Price) AS Average_price
FROM Products
WHERE Category = 'Smartphone' OR Added_date > '2025-01-01';

--Maximum and minimum price
SELECT MAX(price) AS Max_price,MIN(Price)  AS MIN_Price FROM Products;



