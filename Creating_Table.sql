-- CREATE DATABASE Zepto_Project;
USE Zepto_Project;

DROP TABLE IF EXISTS Zepto;

CREATE TABLE Zepto(
zep_ID INT PRIMARY KEY AUTO_INCREMENT, 
category VARCHAR(240),
Name VARCHAR(200) NOT NULL, 
mrp DECIMAL(8,2), 
discountPercent DECIMAL(5,2),
availableQuantity INT, 
discountedSellingPrice DECIMAL(8,2),
weightInGms INT, 
outOfStock BOOLEAN,
quantity INT);

SET SQL_SAFE_UPDATES = 0;
DELETE FROM zepto;
ALTER TABLE zepto AUTO_INCREMENT = 1;
SET SQL_SAFE_UPDATES = 1;

ALTER TABLE zepto MODIFY outOfStock VARCHAR(10);

