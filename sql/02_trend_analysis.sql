

-- Monthly Revenue Trend

SELECT
	FORMAT(Order_Date, 'yyyy-MM') AS Order_Month,
	ROUND(SUM(Sales), 2) AS Monthly_Revenue
FROM 
	Orders
GROUP BY
	FORMAT(Order_Date, 'yyyy-MM')
ORDER BY
	Order_Month;


-- Sales By Region

SELECT
    l.region,
    ROUND(SUM(o.sales),2) AS total_sales
FROM Orders o
JOIN Location l
    ON o.Postal_Code = l.Postal_Code
GROUP BY l.region
ORDER BY total_sales DESC;


-- Sales By Category

SELECT
	p.Category,
	ROUND(SUM(Sales), 2) AS Total_Sales
FROM Orders o
JOIN Products p
ON p.Product_ID = o.Product_ID
GROUP BY p.Category


-- Profit By Category

SELECT
	p.Category,
	ROUND(SUM(Profit), 2) AS Total_Profit
FROM Orders o
JOIN Products p
ON p.Product_ID = o.Product_ID
GROUP BY p.Category


/* What this proves:

- Time-based analysis

- Grouping logic

- Ops trend monitoring */ 