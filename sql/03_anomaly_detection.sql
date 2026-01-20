

-- Daily Revenue

WITH Daily_Sales AS (
	SELECT
		CAST(Order_Date AS DATE) AS Order_Day,
		ROUND(SUM(Sales), 2) AS Daily_Revenue
	FROM Orders
	GROUP BY CAST(Order_Date AS DATE)
),Avg_Sales AS (
	SELECT 
		ROUND(AVG(Daily_Revenue), 2) AS Avg_Revenue
	FROM Daily_Sales
)
SELECT
	d.Order_Day,
	d.Daily_Revenue
FROM Daily_Sales d
CROSS JOIN Avg_Sales a
WHERE d.Daily_Revenue > 2 * a.Avg_Revenue
ORDER BY d.Daily_Revenue DESC;

/* What this shows:

CTE usage

Analytical thinking

Ops anomaly detection */