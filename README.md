# 📦 SQL Inventory Management System

## 📌 Overview

This SQL-based **Inventory Management System** was developed as part of our university project to efficiently manage inventory records. The project was built using **structured query language (SQL)** to store, manage, and retrieve inventory data.

We designed an **Entity-Relationship (ER) Diagram** to establish clear relationships between inventory components and implemented various **SQL queries** to extract meaningful insights from the data.

## 👥 Collaborators

- [Ibrahim Abou Zahr]
- [Omar Takkoush]

## 🏗️ Features

✅ **Comprehensive Inventory Tracking** – Stores detailed records of products, suppliers, stock levels, and transactions.
✅ **Relational Database Design** – Implemented using an **ER Diagram** to ensure data consistency and efficient retrieval.
✅ **SQL Queries for Data Analysis** – Used **JOINs, GROUP BY, aggregate functions, subqueries, and stored procedures** for insights.
✅ **Automated Stock Updates** – Triggers and stored procedures manage stock levels dynamically.
✅ **Security & Data Integrity** – Enforced constraints (PRIMARY KEY, FOREIGN KEY) and normalization to prevent redundancy.

## 🔹 Database Schema & ER Diagram

The system consists of multiple relational tables, including:

- **Products** (ProductID, Name, Category, Price, StockQuantity)
- **Suppliers** (SupplierID, Name, ContactInfo)
- **Orders** (OrderID, ProductID, Quantity, OrderDate)
- **Customers** (CustomerID, Name, Email, Address)
- **Transactions** (TransactionID, CustomerID, OrderID, TotalAmount, PaymentStatus)

We designed an **ER Diagram** to define relationships between these entities, ensuring proper data structuring and integrity.

## 🔍 SQL Queries & Functionalities

### 🔸 Basic Queries

```sql
-- Retrieve all products
SELECT * FROM Products;

-- Get product details by category
SELECT * FROM Products WHERE Category = 'Electronics';
```

### 🔸 Advanced Queries

```sql
-- Find the total number of products in stock
SELECT SUM(StockQuantity) AS TotalStock FROM Products;

-- Retrieve the top 5 best-selling products
SELECT p.Name, SUM(o.Quantity) AS TotalSold
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY TotalSold DESC
LIMIT 5;
```

### 🔸 Stored Procedure Example

```sql
-- Procedure to update stock after a sale
DELIMITER //
CREATE PROCEDURE UpdateStock(IN product_id INT, IN quantity_sold INT)
BEGIN
    UPDATE Products
    SET StockQuantity = StockQuantity - quantity_sold
    WHERE ProductID = product_id;
END //
DELIMITER ;
```

### 🔸 Trigger for Automatic Stock Update

```sql
-- Trigger to prevent stock from dropping below zero
CREATE TRIGGER prevent_negative_stock
BEFORE UPDATE ON Products
FOR EACH ROW
BEGIN
    IF NEW.StockQuantity < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stock cannot be negative';
    END IF;
END;
```

## 🔧 Technologies Used

- **SQL (MySQL/PostgreSQL)** for database management
- **DBMS Tools**: MySQL Workbench / pgAdmin for database visualization
- **ER Diagram**: Designed using dbdiagram.io or MySQL Workbench

## 🚀 How to Use

1. Clone this repository:
   ```sh
   git clone https://github.com/yourusername/sql-inventory-system.git
   ```
2. Import the database schema into your SQL server.
3. Run the SQL queries to interact with the inventory system.
4. Modify queries as needed for specific inventory needs.

## 📝 Future Enhancements

- Implement a **frontend interface** using React.js for easy interaction.
- Integrate with **Power BI/Tableau** for real-time inventory analytics.
- Add a **REST API** to allow external applications to interact with the database.

## 📩 Contact

For any queries or collaboration opportunities, feel free to reach out!

**If you found this project helpful, don't forget to ⭐ star the repository!** 🚀
