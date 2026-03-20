USE Zepto_project;

-- SELECT * FROM zepto LIMIT 10;
-- SELECT COUNT(*) FROM zepto;
SELECT * FROM zepto
WHERE category IS NULL
   OR name IS NULL
   OR mrp IS NULL
   OR discountPercent IS NULL
   OR availableQuantity IS NULL
   OR discountedSellingPrice IS NULL
   OR weightInGms IS NULL
   OR outOfStock IS NULL
   OR quantity IS NULL;
   
   -- How many unique categories are there?
SELECT COUNT(DISTINCT category) FROM zepto;

-- What are all the unique categories?
SELECT DISTINCT category FROM zepto;

-- Product in the stock vs out of 
SELECT outofstock, Count(zep_ID)
FROM zepto
GROUP BY outOfStock;

-- Product names present multiple times 
SELECT name, COUNT(zep_ID) as 'No. of SIU' 
FROM zepto 
GROUP BY name 
HAVING COUNT(zep_ID)>1
ORDER BY COUNT(zep_ID) DESC;


-- Data Cleaning 
-- Product with 0 MRP 
SELECT * FROM zepto 
WHERE mrp = 0 OR discountedSellingPrice = 0;

SET SQL_SAFE_UPDATES = 0 ;
DELETE FROM zepto 
WHERE mrp = 0;

-- Coverting paisa into Rupees 
UPDATE zepto 
SET mrp = mrp/100, 
discountedSellingPrice = discountedSellingprice/100;
SELECT mrp, discountedSellingPrice FROM zepto;
