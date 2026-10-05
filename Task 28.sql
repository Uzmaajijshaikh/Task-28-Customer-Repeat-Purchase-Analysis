Query 1
SELECT COUNT(DISTINCT "Customer ID") AS Total_Customers FROM Cleaned_Online_Retail_II;

Query 2
SELECT "Customer ID", COUNT(DISTINCT Invoice) AS Total_Orders FROM Cleaned_Online_Retail_II GROUP BY "Customer ID" ORDER BY Total_Orders DESC;

Query 3
SELECT "Customer ID", COUNT(DISTINCT Invoice) AS Total_Orders FROM Cleaned_Online_Retail_II GROUP BY "Customer ID" HAVING COUNT(DISTINCT Invoice) >= 2 ORDER BY Total_Orders DESC;

Query 4
SELECT COUNT(*) AS Repeat_Customers FROM (SELECT "Customer ID" FROM Cleaned_Online_Retail_II GROUP BY "Customer ID" HAVING COUNT(DISTINCT Invoice) >= 2);

Query 5
SELECT COUNT(*) AS One_Time_Customers FROM (SELECT "Customer ID" FROM Cleaned_Online_Retail_II GROUP BY "Customer ID" HAVING COUNT(DISTINCT Invoice) = 1);

Query 6
SELECT ROUND( COUNT(CASE WHEN Total_Orders >= 2 THEN 1 END) * 100.0 / COUNT(*),2) AS Repeat_Purchase_Rate FROM (SELECT "Customer ID", COUNT(DISTINCT Invoice) AS Total_Orders FROM Cleaned_Online_Retail_II GROUP BY "Customer ID");

Query 7
SELECT CASE WHEN Total_Orders = 1 THEN 'One-Time Customer' ELSE 'Repeat Customer' END AS Segment, COUNT(*) AS Customers, SUM(Total_Orders) AS Total_Orders, ROUND(SUM(Total_Sales), 2) AS Total_Sales, ROUND(SUM(Total_Sales) / SUM(Total_Orders), 2) AS AOV FROM (SELECT "Customer ID", COUNT(DISTINCT Invoice) AS Total_Orders, SUM(Order_Value) AS Total_Sales
FROM Cleaned_Online_Retail_II GROUP BY "Customer ID") GROUP BY Segment;

Query 8
SELECT "Customer ID", COUNT(DISTINCT Invoice) AS Total_Orders, ROUND(SUM(Order_Value), 2) AS Total_Sales FROM Cleaned_Online_Retail_II GROUP BY "Customer ID" HAVING COUNT(DISTINCT Invoice) >= 2 ORDER BY Total_Orders DESC LIMIT 10;
