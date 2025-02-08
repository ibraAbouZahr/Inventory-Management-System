CREATE database InventoryControl



CREATE table Product (

ID int Primary key NOT NULL, 
Price Decimal(10,2), 
weight Decimal (8,2), 
barcode varchar(50),
category_ID int, 
FOREIGN KEY (category_ID) References Category(ID)

/* product table */

);

CREATE table Supplier (

ID int Primary Key NOT NULL, 
Name VARCHAR(100), 
rating INT

/* supplier table */
);


CREATE table Inventory (
Product_ID int Primary Key NOT NULL, 
quantity int, 
Foreign key (Product_ID) REFERENCES Product(ID)

/* inventory table */

);

CREATE TABLE [Order] (

ID int Primary key NOT NULL, 
Status Varchar(50),
date DATE, 
customer_ID int, 

FOREIGN KEY (customer_ID) REFERENCES Customer(ID)

/* order table */

 
);

CREATE TABLE Order_item (
Order_ID int NOT NULL, 
product_ID int NOT NULL , 
quantity int ,
PRIMARY KEY (Order_ID, product_ID) ,
FOREIGN KEY (Order_ID) REFERENCES [Order](ID),
FOREIGN KEY (product_ID) REFERENCES Product(ID)

/* order_item table */

);


CREATE Table Category ( 

ID int Primary Key NOT NULL, 
Name VARCHAR(100)

/* category table */
);

CREATE Table Customer (

ID int Primary key NOT NULL, 
Name Varchar(100), 
phone_num Varchar(20)

/* customer table */
);

CREATE TABLE Warehouse (

ID int Primary Key NOT NULL, 
location_ID int, 
name VARCHAR (100),
Foreign key (location_ID) REFERENCES Location(ID)

/* warehouse table */
);

CREATE	TABLE Location (

ID int Primary key NOT NULL, 
address varchar(255)

/* Location table */

);

INSERT INTO Category (ID, Name) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books'),
(4, 'Home Appliances'),
(5, 'Toys'),
(6, 'Beauty'),
(7, 'Sports'),
(8, 'Food'),
(9, 'Furniture'),
(10, 'Jewelry');



INSERT INTO Supplier (ID, Name, rating) VALUES
(1, 'Apple', 4),
(2, 'Nike', 5),
(3, 'Antoine', 3),
(4, 'IKEA', 4),
(5, 'Toy Universe', 4),
(6, 'Glamour Cosmetics', 5),
(7, 'Gymshark', 4),
(8, 'Food & Beverages', 3),
(9, 'Furniture Mart', 5),
(10, 'Shiny Gems', 4);

INSERT INTO Supplier (ID, Name, rating) VALUES
(16, 'Tech Mart', 3),
(17, 'Fashion World', 4),
(18, 'Book Emporium', 5),
(19, 'Home Essentials', 4),
(20, 'Toy Kingdom', 3);

INSERT INTO Location (ID, address) VALUES
(101, '123 Main St, Saida, Lebanon'),
(102, '456 Hamra St, Beirut, Lebanon'),
(103, '789 Oak St, Tripoli, Lebanon'),
(104, '321 Maple St, New York, USA'),
(105, '654 Pine St, Bigtown, USA'),
(106, '987 Cedar St, Smalltown, USA'),
(107, '135 Walnut St, Largetown, USA'),
(108, '246 Birch St, Tinytown, USA'),
(109, '369 Spruce St, Munich, Germany'),
(110, '579 Ash St, Leeds, England');

INSERT INTO Location (ID, address) VALUES
(116, '789 Elm St, Paris, France'),
(117, '456 Maple St, Rome, Italy'),
(118, '123 Oak St, Madrid, Spain'),
(119, '369 Birch St, Berlin, Germany'),
(120, '579 Cedar St, London, England')

INSERT INTO Product (ID, Price, weight, barcode, category_ID) VALUES
(1, 999.99, 1.5, '1234567890123', 1),
(2, 129.99, 0.8, '9876543210987', 2),
(3, 19.99, 0.2, '2468101214161', 3),
(4, 399.99, 10.0, '1122334455667', 4),
(5, 49.99, 0.5, '7788990011223', 5),
(6, 29.99, 0.3, '3344556677889', 6),
(7, 79.99, 1.0, '5566778899001', 7),
(8, 5.99, 0.1, '1231231231231', 8),
(9, 499.99, 15.0, '4564564564564', 9),
(10, 999.99, 2.0, '7897897897897', 10);

INSERT INTO Product (ID, Price, weight, barcode, category_ID) VALUES
(11, 49.99, 0.5, '1111111111111',  1), 
(12, 39.99, 0.4, '2222222222222',  2), 
(13, 29.99, 0.3, '3333333333333', 3), 
(14, 19.99, 0.2, '4444444444444',  4), 
(15, 9.99, 0.1, '5555555555555',  5); 


INSERT INTO Product (ID, Price, weight, barcode, category_ID) VALUES
(16, 79.99, 0.8, '5432167890123', 1),
(17, 39.99, 0.5, '9876543210987', 2),
(18, 9.99, 0.2, '3456789012345', 3),
(19, 499.99, 15.0, '6543210987654', 4),
(20, 29.99, 0.3, '3210987654321', 5);



INSERT INTO Inventory (Product_ID, quantity) VALUES
(1, 20),
(2, 50),
(3, 200),
(4, 30),
(5, 150),
(6, 100),
(7, 80),
(8, 300),
(9, 20),
(10, 70);

INSERT INTO Inventory (Product_ID, quantity) VALUES
(11, 100),
(12, 50),
(13, 30),
(14, 90),
(15, 200);

INSERT INTO Inventory (Product_ID, quantity) VALUES
(16, 200),
(17, 150),
(18, 300),
(19, 50),
(20, 100);

INSERT INTO Customer (ID, Name, phone_num) VALUES
(1, 'Ibrahim Abou Zahr', '+1234567890'),
(2, 'Omar Takkoush', '+1987654321'),
(3, 'Ibrahim Zantout', '+1122334455'),
(4, 'Emily Brown', '+1567890123'),
(5, 'Michael Wilson', '+1901234567'),
(6, 'Emma Jones', '+1745678901'),
(7, 'Daniel Taylor', '+1987654321'),
(8, 'Olivia Martinez', '+7364859764'),
(9, 'Thomas Muller', '+1789054321'),
(10, 'Patrick Thomas', '+1876543210');

INSERT INTO Customer (ID, Name, phone_num) VALUES
(16, 'Ava Wilson', '+112233445577'),
(17, 'William Smith', '+123456789099'),
(18, 'Sophia Johnson', '+234567890199'),
(19, 'James Brown', '+345678901299'),
(20, 'Charlotte Taylor', '+456789012399');


INSERT INTO Warehouse (ID, location_ID, name) VALUES
(1, 101, 'Saida Warehouse'),
(2, 102, 'Lebanon Warehouse 1'),
(3, 103, 'Lebanon Warehouse 2'),
(4, 104, 'US Central Warehouse'),
(5, 105, 'US East Warehouse'),
(6, 106, 'US West Warehouse'),
(7, 107, 'US North Warehouse'),
(8, 108, 'US Hyper Warehouse'),
(9, 109, 'European Warehouse'),
(10, 110, 'UK Warehouse');

INSERT INTO Warehouse (ID, location_ID, name) VALUES
(16, 116, 'France Warehouse'),
(17, 117, 'Italy Warehouse'),
(18, 118, 'Spain Warehouse'),
(19, 119, 'Germany Warehouse'),
(20, 120, 'UK Warehouse 2');

INSERT INTO [Order] (ID, Status, date, customer_ID) VALUES
(1, 'Shipped', '2024-04-25', 1),
(2, 'Processing', '2024-04-26', 2),
(3, 'Delivered', '2024-04-27', 3),
(4, 'Cancelled', '2024-04-28', 4),
(5, 'Processing', '2024-04-25', 5),
(6, 'Shipped', '2024-04-26', 6),
(7, 'Delivered', '2024-04-27', 7),
(8, 'Processing', '2024-04-28', 8),
(9, 'Shipped', '2024-04-25', 9),
(10, 'Delivered', '2024-04-26', 10);

INSERT INTO [Order] (ID, Status, date, customer_ID) VALUES
(16, 'Shipped', '2024-04-25', 16),
(17, 'Processing', '2024-04-26', 17),
(18, 'Delivered', '2024-04-27', 18),
(19, 'Cancelled', '2024-04-28', 19),
(20, 'Processing', '2024-04-25', 20);

UPDATE [Order]
SET date = '2023-04-28'
WHERE ID = 16;
UPDATE [Order]
SET date = '2023-04-25'
WHERE ID = 17;
UPDATE [Order]
SET date = '2023-01-13'
WHERE ID = 18;
UPDATE [Order]
SET date = '2023-06-08'
WHERE ID = 19;
UPDATE [Order]
SET date = '2023-09-30'
WHERE ID = 20;

INSERT INTO [Order] (ID, Status, date, customer_ID) VALUES
(21, 'Delivered', '2022-04-25', 21),
(22, 'Delivered', '2022-04-26', 22),
(23, 'Delivered', '2022-04-27', 23),
(24, 'Delivered', '2022-04-28', 24),
(25, 'Delivered', '2022-04-25', 25);

INSERT INTO Customer (ID, Name, phone_num) VALUES
(21, 'Ethan Winters', '+123456789011'),
(22, 'Amelia Garcia', '+234567890122'),
(23, 'Liam Martinez', '+345678901233'),
(24, 'Olivia Smith', '+456789012344'),
(25, 'Lucas Brown', '+567890123455')


INSERT INTO Order_item (Order_ID, product_ID, quantity) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 3),
(4, 4, 1),
(5, 5, 2),
(6, 6, 1),
(7, 7, 2),
(8, 8, 3),
(9, 9, 1),
(10, 10, 2);

INSERT INTO Order_item (Order_ID, product_ID, quantity) VALUES
(16, 16, 2),
(17, 17, 1),
(18, 18, 3),
(19, 19, 1),
(20, 20, 2);

INSERT INTO Order_item (Order_ID, product_ID, quantity) VALUES
(21, 16, 2),
(22, 17, 4),
(23, 18, 3),
(24, 19, 1),
(25, 20, 2);


-- Queries Answered -- 

-- Question 1: Which year had the highest sales? -- 

SELECT YEAR([date]) AS Year, SUM(Product.Price * Order_item.quantity) AS TotalSales
FROM [Order]
JOIN Order_item ON [Order].ID = Order_item.Order_ID
JOIN Product ON Order_item.product_ID = Product.ID
-- We joined the Order and Order_items tables.
-- We joined the Product and Order_item tables. 
GROUP BY YEAR(date)
-- To get the total sales for EACH year.
ORDER BY TotalSales DESC





ALTER TABLE Product
ADD Supplier_ID int;

ALTER TABLE Product
ADD CONSTRAINT FK_Product_Supplier FOREIGN KEY (Supplier_ID) REFERENCES Supplier(ID);

UPDATE Product SET Supplier_ID = 1 WHERE ID IN (1, 3, 7, 9, 11);
-- Tech Products in Apple

UPDATE Product SET Supplier_ID = 2 WHERE ID IN (2, 5, 8, 10, 12);
-- Clothing (Nike)

UPDATE Product SET Supplier_ID = 6 WHERE ID IN (6, 13);
-- Antoine: IDs 6, 13 (Books)

UPDATE Product SET Supplier_ID = 4 WHERE ID = 4;
-- IKEA: ID 4 (Furniture product)

UPDATE Product SET Supplier_ID = 5 WHERE ID = 14;
-- Toy Universe: ID 14 (Toy product)

UPDATE Product SET Supplier_ID = 7 WHERE ID = 15;
-- Tech Mart

UPDATE Product SET Supplier_ID = 8 WHERE ID = 16;
-- Fashion World: ID 16 (Clothing products)

UPDATE Product SET Supplier_ID = 9 WHERE ID = 17;
-- Book Emporium: ID 17 (Books)

UPDATE Product SET Supplier_ID = 10 WHERE ID = 18;
-- Home Essentials: ID 18 (Home appliances)

UPDATE Product SET Supplier_ID = 20 WHERE ID = 19;
-- Toy Kingdom: ID 19 (Toy products)

UPDATE Product SET Supplier_ID = 16 WHERE ID = 20;


-- Question 2: Who are the top suppliers based on the quantity of products supplied? -- 

SELECT *FROM Product

SELECT Supplier.Name AS SupplierName, SUM(Inventory.quantity) AS TotalQuantitySupplied
FROM Supplier
JOIN Product ON Supplier.ID = Product.Supplier_ID
-- We joined the product and supplier tables --
JOIN Inventory ON Product.ID = Inventory.Product_ID
-- We joined the Inventory and Product tables --
GROUP BY Supplier.Name

ORDER BY TotalQuantitySupplied DESC;
-- To get the best supplier


-- Question 3: What are the top 5 products with the highest quantity in stock? --
SELECT TOP 5 p.ID, p.Price, p.weight, p.barcode, p.category_ID
FROM Product p
INNER JOIN Inventory i ON p.ID = i.Product_ID
ORDER BY i.quantity DESC;

-- Question 4: What are the most commonly ordered products? --

SELECT product_ID, COUNT(*) AS OrderCount
FROM Order_item
GROUP BY product_ID
ORDER BY OrderCount DESC;

-- Question 5: Retrieve customer information based on their ID or name --

SELECT *
FROM Customer
WHERE ID = 1 OR Name = 'Omar Takkoush';


-- Question 6: How many orders contain products with a price higher than $100? --

SELECT COUNT(DISTINCT o.ID) AS NumberOfOrders
FROM [Order] o
JOIN Order_item oi ON o.ID = oi.Order_ID
JOIN Product p ON oi.product_ID = p.ID
WHERE p.Price > 100;


-- Question 7: What is the average quantity of products ordered per order? --

SELECT AVG(quantity) AS AverageQuantityPerOrder
FROM (
    SELECT Order_ID, SUM(quantity) AS quantity
    FROM Order_item
    GROUP BY Order_ID
) AS OrderQuantities;

-- Question 8: Which products have never been ordered? --
 
SELECT *
FROM Product
WHERE ID NOT IN (SELECT DISTINCT product_ID FROM Order_item);

-- Question 9: What is the total weight of all products in stock? --

SELECT SUM(p.weight * i.quantity) AS TotalWeightInStock
FROM Product p
JOIN Inventory i ON p.ID = i.Product_ID;

-- Question 10: Which suppliers have the highest total ratings? --

SELECT s.Name AS Supplier, SUM(s.rating) AS TotalRating
FROM Supplier s
JOIN Product p ON s.ID = p.Supplier_ID
GROUP BY s.Name
ORDER BY TotalRating DESC;

-- Question 10: Which products have the highest and lowest prices? --
SELECT *
FROM Product
WHERE Price = (SELECT MAX(Price) FROM Product) OR Price = (SELECT MIN(Price) FROM Product);

-- Question 11: Which warehouses are located in a specific city or country? --

SELECT w.name AS Warehouse, l.address AS Location
FROM Warehouse w
JOIN Location l ON w.location_ID = l.ID
WHERE l.address LIKE '%[789 Elm St]%';

-- Question 12: What are the most popular delivery statuses? --

SELECT Status, COUNT(*) AS StatusCount
FROM [Order]
GROUP BY Status
ORDER BY StatusCount DESC;


-- Question 13: Retrieve all product information along with their respective categories: --

SELECT p.*, c.Name AS CategoryName
FROM Product p
JOIN Category c ON p.category_ID = c.ID;

-- Question 14: Retrieve all warehouse information along with their respective locations: --

SELECT w.*, l.address AS LocationAddress
FROM Warehouse w
JOIN Location l ON w.location_ID = l.ID;


-- Question 15: Retrieve all inventory information along with the quantities of products in stock: --

SELECT *FROM Inventory;

-- Question 16: Retrieve all orders that have been cancelled:--

SELECT *FROM [Order]
WHERE Status = 'Cancelled';

-- Question 17: Total number of products in each location: --

SELECT l.address AS LocationAddress, SUM(i.quantity) AS TotalProducts
FROM Location l
JOIN Warehouse w ON l.ID = w.location_ID
JOIN Inventory i ON w.ID = i.Product_ID
GROUP BY l.address;

-- Question 18: Average price of products in each category: --

SELECT c.Name AS CategoryName, AVG(p.Price) AS AvgPrice
FROM Category c
JOIN Product p ON c.ID = p.category_ID
GROUP BY c.Name;