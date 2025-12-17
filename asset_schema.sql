-- IT Asset Management Database Schema
-- Author: Hunter Austin
-- Purpose: Tracking IT inventory and personnel for warehouse/3PL operations

-- 1. Database Setup
CREATE DATABASE IF NOT EXISTS AssetDB;
USE AssetDB;

-- 2. Table Structure: Employees
-- Tracks staff members across different physical locations
DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50),
    Location VARCHAR(50)
);

-- 3. Table Structure: Inventory
-- Tracks hardware assets, stock levels, and assignments
DROP TABLE IF EXISTS Inventory;
CREATE TABLE Inventory (
    AssetTag INT AUTO_INCREMENT PRIMARY KEY,
    DeviceName VARCHAR(100),
    Category VARCHAR(50),
    StockCount INT,
    AssignedToLocation VARCHAR(50)
);

-- 4. Data Injection (Mock Data)
-- Populating employees
INSERT INTO Employees (Name, Department, Location) VALUES
('Hunter Austin', 'IT Operations', 'HQ'),
('John Doe', 'Warehouse Lead', 'Ohio'),
('Jane Smith', 'Logistics', 'Texas');

-- Populating hardware assets
INSERT INTO Inventory (DeviceName, Category, StockCount, AssignedToLocation) VALUES
('Dell Latitude 5420', 'Laptop', 12, 'Ohio'),
('Zebra RF Scanner', 'Scanner', 3, 'Texas'),
('Label Printer', 'Printer', 2, 'Ohio'),
('Cisco 2960 Switch', 'Network', 1, 'HQ');

-- 5. Analytical Reports (Sample Queries)
-- Report A: Low Stock Alert (Finds items needing procurement)
SELECT DeviceName, StockCount, AssignedToLocation 
FROM Inventory 
WHERE StockCount < 5;

-- Report B: Asset Audit (Lists all equipment at HQ)
SELECT * FROM Inventory 
WHERE AssignedToLocation = 'HQ';
