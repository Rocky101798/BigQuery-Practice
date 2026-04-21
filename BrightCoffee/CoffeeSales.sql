SELECT * FROM `practice-project-101-493417.BrightCoffeeSales.CoffeeInformation` LIMIT 10;

--distinct locations 
SELECT store_location
FROM `practice-project-101-493417.BrightCoffeeSales.CoffeeInformation`;

--showing specific columns
SELECT transaction_id, 
      product_category, 
      unit_price
FROM `practice-project-101-493417.BrightCoffeeSales.CoffeeInformation`;

--column Alias
SELECT product_category AS Category, 
      Unit_price AS Price
FROM `practice-project-101-493417.BrightCoffeeSales.CoffeeInformation`;

--Filtering using WHERE 
SELECT * 
FROM `practice-project-101-493417.BrightCoffeeSales.CoffeeInformation`
WHERE product_category = 'Coffee';

--Filtering using WHERE and AND 
SELECT * 
FROM `practice-project-101-493417.BrightCoffeeSales.CoffeeInformation`
WHERE product_category = 'Coffee beans'
AND unit_price > 10; 

--Finding Minimum Price
SELECT MIN(unit_price) AS Min_price
FROM `practice-project-101-493417.BrightCoffeeSales.CoffeeInformation`;

--Finding Max price
SELECT MAX(unit_price) AS Max_price 
FROM `practice-project-101-493417.BrightCoffeeSales.CoffeeInformation`;

--Filtering using WHERE and OR
SELECT * 
FROM `practice-project-101-493417.BrightCoffeeSales.CoffeeInformation`
WHERE product_category = 'Coffee'
OR product_category = 'Tea';

--Filtering using WHERE and IN 
SELECT * 
FROM `practice-project-101-493417.BrightCoffeeSales.CoffeeInformation`
WHERE product_category IN ('Coffee', 'Tea');

--Sorting results
SELECT product_category, 
      unit_price
FROM `practice-project-101-493417.BrightCoffeeSales.CoffeeInformation`
ORDER BY unit_price DESC; 

--counting total transactions 
SELECT COUNT(*)
FROM `practice-project-101-493417.BrightCoffeeSales.CoffeeInformation`;

--calculating total sales
SELECT ROUND(SUM(transaction_qty * unit_price), 2) AS Total_sales
FROM `practice-project-101-493417.BrightCoffeeSales.CoffeeInformation`;

--Calculating min and max price
SELECT MIN(unit_price) AS cheapest_item,
      MAX(unit_price) AS most_expensive_item
FROM `practice-project-101-493417.BrightCoffeeSales.CoffeeInformation`; 

--Total sales per category
SELECT product_category, 
      ROUND(SUM(transaction_qty * unit_price), 2) AS Total_sales
FROM `practice-project-101-493417.BrightCoffeeSales.CoffeeInformation`
GROUP BY product_category
ORDER BY Total_sales DESC;

