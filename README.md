# Zepto Product Analysis — SQL Project

## Project Overview
Performed end-to-end SQL analysis on Zepto's grocery 
product dataset to uncover pricing patterns, discount 
trends and stock availability insights.

## Dataset
- **Source:** Kaggle
- **Records:** 3728 products
- **Tool Used:** MySQL, MySQL Workbench

## Business Questions Solved
1. Which product category has the highest number of products?
2. What are the top 10 most discounted products?
3. How many products are in stock vs out of stock category wise?
4. What is the average MRP vs discounted price per category?
5. Which products have high discount but are still out of stock?
6. Top 3 most discounted products in each category 
  identified using RANK() window function
7. Home Decor generated the highest estimated revenue 
  among all categories

## Key Insights
1. Top 10 best-value product based on the discount % are from Dukes Waffy
   and chef's Basket and Chef's Foods
2. Rank of product by discount within each category
3. Patanjali Cow's Ghee has highest MRP which is out of stock
4. Calculated esitmated revenue for each category
5. Total inventory weight per Category
6. Categories by Group like medium, small, large based on weight
7. price per gram for product above 100g 


## Skills Demonstrated
- Data importing and cleaning
- Aggregations (COUNT, AVG, SUM)
- Filtering (WHERE, AND, OR)
- Sorting and ranking (ORDER BY, LIMIT)
- NULL value handling
- DISTINCT and CASE WHEN
- Window Functions (RANK, OVER, PARTITION BY)  
- CTEs (Common Table Expressions)

