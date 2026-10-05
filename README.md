Data Analytics Internship – Task 28 (Customer Repeat Purchase Analysis)

This repository contains my submission for Task 28 of the Data Analytics Internship.

Dataset - Online Retail II Dataset

Objective - The objective was to measure repeat purchase behavior, identify customer segments, compare first-time and repeat customer AOV, and understand customer loyalty metrics.

Tools Used
1. Python
2. DB Browser for SQLite
3. Online Retail II Dataset
4. GitHub

Customer Repeat Purchase Analysis
1. Used the Online Retail II Dataset containing 525,461 records.
2. Removed records with missing Customer IDs.
3. Removed cancelled invoices and transactions with invalid quantities or prices.
4. Created an Order_Value column using Quantity × Price.
5. The cleaned dataset contained 407,664 records.
6. Defined a repeat customer as a customer with two or more distinct invoices.
7. Calculated the total number of customers, repeat customers, one-time customers, and repeat purchase rate.
8. Compared the AOV and sales contribution of one-time and repeat customers.
9. Identified the top 10 repeat customers based on their number of orders.
10. Performed the repeat purchase analysis again using SQL in DB Browser for SQLite and verified that the SQL results matched the Python results.

Key Results
1. Total Customers - 4,312
2. Repeat Customers - 2,893
3. One-Time Customers - 1,419
4. Repeat Purchase Rate - 67.09%
5. One-Time Customer AOV - 351.69
6. Repeat Customer AOV - 468.30

Key Insights
1. 67.09% of customers were repeat customers, showing a high level of repeat purchasing.
2. Repeat customers generated 8,332,961.48 in sales across 17,794 orders.
3. One-time customers generated 499,041.79 in sales across 1,419 orders.
4. Repeat customers had a higher AOV of 468.30 compared with 351.69 for one-time customers.
5. The top repeat customer made 205 orders, showing the presence of highly active repeat buyers.

Files
1.Task 28.ipynb - Google Colab notebook containing data cleaning, customer segmentation, repeat purchase analysis, and insights
2. Task 28.sql - SQL queries used for repeat purchase analysis
3.README.md - Summary of the customer repeat purchase analysis

Note - The cleaned CSV and SQLite database were not included in the GitHub repository because their file sizes exceeded GitHub's file-size limit. The cleaned dataset and SQLite database were retained locally, while the Python notebook and SQL query file were included in the submission.

Conclusion
Customer repeat purchase behavior was successfully analyzed using Python and SQL. The analysis showed that 67.09% of customers were repeat customers and that repeat customers had a higher average order value and significantly higher sales contribution than one-time customers. The results provide useful insights into customer loyalty and purchasing behavior.
