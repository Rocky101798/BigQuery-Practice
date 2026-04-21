SELECT * FROM `practice-project-101-493417.BrightRetailSales.RetailSale` LIMIT 1000;

--q1 WHERE clause
SELECT * 
FROM `practice-project-101-493417.BrightRetailSales.RetailSale` 
WHERE EXTRACT (YEAR from Date)= 2023;

--q2 filtering and conditions 
SELECT AVG(`Total Amount`)
FROM `practice-project-101-493417.BrightRetailSales.RetailSale`;

SELECT * 
FROM `practice-project-101-493417.BrightRetailSales.RetailSale`
WHERE `Total Amount` > 455.99999999999994;

--q3 Aggregate functions
SELECT SUM(`Total Amount`) AS total_revenue
FROM `practice-project-101-493417.BrightRetailSales.RetailSale`;

--q4 distict 
SELECT DISTINCT(`Product Category`) 
FROM `practice-project-101-493417.BrightRetailSales.RetailSale`;

--q5 group by 
SELECT `Product Category`,
      SUM(Quantity) AS total_quantity
FROM `practice-project-101-493417.BrightRetailSales.RetailSale`
GROUP BY `Product Category`;

--Q6 CASE statement 
SELECT `Customer ID`,
        Age,
        CASE WHEN AGE < 30 THEN 'Youth'
            WHEN AGE BETWEEN 30 AND 59 THEN 'ADULT'
            WHEN AGE >= 60 THEN 'Senior'
        END AS Age_Group
FROM `practice-project-101-493417.BrightRetailSales.RetailSale`;

--q7 Conditional Aggregation
SELECT Gender,
       COUNT(CASE WHEN `Total Amount` > 500 THEN 1 END) AS High_Value_Transactions
FROM `practice-project-101-493417.BrightRetailSales.RetailSale`
GROUP BY Gender;

--Q8
SELECT `Product Category`, 
      SUM(`Total Amount`) AS Total_revenue 
FROM `practice-project-101-493417.BrightRetailSales.RetailSale`
GROUP BY `Product Category`
HAVING Total_revenue > 5000;

--Q9
SELECT `Transaction ID`,
      `Price per Unit`,
      CASE WHEN `Price per Unit` < 50 THEN 'CHEAP'
          WHEN `Price per Unit` BETWEEN 50 AND 200 THEN 'Moderate'
          WHEN `Price per Unit` > 200 THEN 'Expensive'
      END AS Unit_Cost_Category
FROM `practice-project-101-493417.BrightRetailSales.RetailSale`;

--Q10 
SELECT*,  
    CASE WHEN `Total Amount` > 1000 THEN 'High'
        ELSE 'Low'
    END AS Spending_Level
FROM (
  SELECT `Customer ID`,
         Age, 
         `Total Amount`
  FROM `practice-project-101-493417.BrightRetailSales.RetailSale`
  WHERE Age >= 40
)
