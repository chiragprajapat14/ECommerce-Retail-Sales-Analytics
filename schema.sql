-- 1. Create Customers Master Table
CREATE TABLE retail_customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Email VARCHAR(100),
    Country VARCHAR(50),
    JoinDate DATE
);

-- 2. Create Products Catalog Table
CREATE TABLE retail_products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);

-- 3. Create Main Sales Transaction Ledger
CREATE TABLE retail_sales (
    TransactionID INT PRIMARY KEY,
    SaleDate DATE,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (ProductID) REFERENCES retail_products(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES retail_customers(CustomerID)
);

-- 4. Inject Realistic Mock Data into Customers Table
INSERT INTO retail_customers VALUES 
(1, 'Aarav Sharma', 'aarav@email.com', 'India', '2025-05-10'),
(2, 'Emily Smith', 'emily@email.com', 'USA', '2025-06-15'),
(3, 'Carlos Ruiz', 'carlos@email.com', 'Spain', '2025-08-01'),
(4, 'Yuki Tanaka', 'yuki@email.com', 'Japan', '2025-09-20'),
(5, 'Sara Jenkins', 'sara@email.com', 'UK', '2025-11-12');

-- 5. Inject Realistic Mock Data into Products Table
INSERT INTO retail_products VALUES 
(1, 'Laptop', 'Electronics', 999.99, 10),
(2, 'Wireless Mouse', 'Electronics', 25.50, 50),
(3, 'Running Shoes', 'Apparel', 79.99, 30),
(4, 'Coffee Maker', 'Appliances', 49.99, 15),
(5, 'Air Fryer', 'Appliances', 89.99, 5);

-- 6. Inject Realistic Mock Data into Sales Ledger
INSERT INTO retail_sales VALUES 
(101, '2026-01-05', 1, 1, 1, 999.99),
(102, '2026-01-05', 1, 2, 2, 51.00),
(103, '2026-02-12', 2, 3, 1, 79.99),
(104, '2026-03-02', 1, 1, 1, 999.99),
(105, '2026-03-15', 3, 4, 3, 149.97),
(106, '2026-04-01', 2, 2, 4, 102.00),
(107, '2026-04-20', 4, 3, 2, 159.98),
(108, '2026-05-02', 5, 5, 1, 89.99);
