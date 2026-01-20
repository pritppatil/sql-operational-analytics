

SELECT * FROM Orders

SELECT count(*) FROM Orders

SELECT 
	COUNT(DISTINCT Order_ID) AS Total_Orders,
	ROUND(SUM(Sales), 2) AS Total_Revenue,
	ROUND(SUM(Profit), 2) AS Total_Profit,
	ROUND(AVG(Sales), 0) AS Avg_Order_Value
FROM
	Orders;

/* What this shows:

- KPI thinking

- Business understanding

- Aggregation skills */ 