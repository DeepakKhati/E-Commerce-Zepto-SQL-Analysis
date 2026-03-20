-- Find the top 10 best-value products based on the discount percentage.
SELECT DISTINCT name, mrp, discountPercent 
FROM zepto 
ORDER BY discountPercent 
DESC LIMIT 10;

-- What are the producs with high MRP but Out of stock.
SELECT DISTINCT name, mrp
FROM zepto 
WHERE outOfStock = 'TRUE' AND mrp >300
ORDER BY mrp DESC; 


-- Calculate Estimated Revenue for each category
SELECT category,
SUM(discountedSellingPrice * AvailableQuantity) AS Total_Revenue
FROM zepto 
GROUP BY category
ORDER BY Total_Revenue;

-- Find all the products where MRP is greater than RS. 500 and discount is less than 10%
SELECT DISTINCT name, mrp, discountPercent
FROM zepto 
WHERE mrp > 500 AND discountPercent < 10 
ORDER BY mrp DESC, discountPercent DESC;

-- Identify the top 5 categories offering the highest average discount percentage.
SELECT category, 
ROUND(AVG(discountPercent),2) AS Avg_discount
FROM zepto 
GROUP BY Category 
ORDER BY avg_discount DESC 
LIMIT 5;

-- Find the price per gram for products above 100g and sort by best value.
SELECT DISTINCT  name, weightInGms, discountedSellingPrice, 
ROUND(discountedSellingPrice/weightInGms,2) AS Price_Per_Gram
FROM zepto 
WHERE weightInGms >= 100 
ORDER BY price_per_gram; 

-- Group the products into categories like Low, Medium, Bulk.

SELECT DISTINCT name, weightInGms, 
CASE WHEN weightInGms < 1000 THEN 'LOW'
	 WHEN weightInGms < 5000 THEN 'MEDIUM' 
     ELSE 'Bulk' 
     END AS weight_Category 
FROM zepto; 

-- What is the Total Inventory Weight per Category 
SELECT category, 
SUM(weightInGms * availableQuantity) AS Total_Weight 
FROM zepto 
GROUP BY category 
ORDER BY Total_Weight; 