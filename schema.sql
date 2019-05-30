

-- Database Creation
CREATE DATABASE Bamazon;

USE Bamazon;


-- ============================ First Table ============================

CREATE TABLE Products(
ItemID INTEGER AUTO_INCREMENT PRIMARY KEY,
ProductName VARCHAR(30),
DepartmentName VARCHAR(30),
Price DOUBLE(10,2),
StockQuantity INTEGER);

-- Seed Items into Database
INSERT INTO Products(ProductName, DepartmentName, Price, StockQuantity)
VALUES ("Eggs", "grocery", 1.99, 12),
  ("Milk", "grocery", 2.99, 24),
  ("PS4", "electronics", 199.99, 5),
  ("Xbox One", "electronics", 179.99, 7),
  ("iPhone", "electronics", 399.99, 18),
  ("Volleyball", "sporting goods", 599.99, 2),
  ("Football", "sporting goods", 9.99, 49),
  ("50 Shades of Grey", "books", 9.99, 69),
  ("Game of Thrones", "books", 19.99, 33),
  ("Lone Survivor", "books", 11.99, 6),
  ("Lone Survivor", "dvds", 13.99, 36),  
  ("New Girl", "dvds", 9.99, 21),
  ("Hotel California", "music", 11.55, 15);

-- View Database Entries
-- SELECT * FROM Products;


-- ============================ Second Table ============================

CREATE TABLE Departments(
DepartmentID INTEGER AUTO_INCREMENT PRIMARY KEY,
DepartmentName VARCHAR(30),
OverHeadCosts DOUBLE(10,2),
TotalSales DOUBLE(10,2));

-- Seed Departments into Database
INSERT INTO Departments(DepartmentName, OverHeadCosts, TotalSales)
VALUES ("grocery", 10500.00, -10000.00), -- More fun stuff (refunds for days!) ;)
  ("electronics", 25000.00, 0.00),
  ("sporting goods", 15000.00, 0.00),
  ("books", 5000.00, 0.00),
  ("dvds", 20000.00, 0.00),
  ("music", 7500.00, 0.00);