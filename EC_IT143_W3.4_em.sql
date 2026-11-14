
/*
============================================================
Assignment: IT 143 - W3.4
Title: AdventureWorks Questions and Answers
Author: Edward Mubaiwa
Database: AdventureWorks2025
File: EC_IT143_W3.4_em.sql

Description:
This script answers eight questions using the
AdventureWorks2025 sample database.

Question sources:
Questions 1-6: Spencer Abinadi Ortiz Hernández
Questions 7-8: Edward Mubaiwa

Estimated runtime:
Approximately 1 minute or less on a local SQL Server
installation. Actual runtime depends on system performance.

============================================================
*/

USE AdventureWorks2025;
GO


/*
============================================================
QUESTION 1 - BUSINESS USER: MARGINAL COMPLEXITY
Original Author: Spencer Abinadi Ortiz Hernández

Question:
What are the job titles and hire dates of our five most
recently hired employees?

============================================================
*/

SELECT TOP 5
    JobTitle,
    HireDate
FROM HumanResources.Employee
ORDER BY HireDate DESC;
GO


/*
============================================================
QUESTION 2 - BUSINESS USER: MARGINAL COMPLEXITY
Original Author: Spencer Abinadi Ortiz Hernández

Question:
How many products do we have in each color?

============================================================
*/

SELECT
    COALESCE(Color, 'No color specified') AS ProductColor,
    COUNT(*) AS TotalProducts
FROM Production.Product
GROUP BY Color
ORDER BY TotalProducts DESC;
GO


/*
============================================================
QUESTION 3 - BUSINESS USER: MODERATE COMPLEXITY
Original Author: Spencer Abinadi Ortiz Hernández

Question:
I want to see how our sales territories are performing.
Which three territories have the highest total sales,
based on our sales orders? Please include the territory name.

============================================================
*/

SELECT TOP 3
    st.Name AS TerritoryName,
    SUM(soh.TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader AS soh
INNER JOIN Sales.SalesTerritory AS st
    ON soh.TerritoryID = st.TerritoryID
GROUP BY st.Name
ORDER BY TotalSales DESC;
GO


/*
============================================================
QUESTION 4 - BUSINESS USER: MODERATE COMPLEXITY
Original Author: Spencer Abinadi Ortiz Hernández

Question:
Our marketing team is planning a bike campaign.
Which bike subcategory has the most products?
Please show the subcategory name and the number of products.

============================================================
*/

SELECT
    ps.Name AS SubcategoryName,
    COUNT(p.ProductID) AS TotalProducts
FROM Production.Product AS p
INNER JOIN Production.ProductSubcategory AS ps
    ON p.ProductSubcategoryID = ps.ProductSubcategoryID
INNER JOIN Production.ProductCategory AS pc
    ON ps.ProductCategoryID = pc.ProductCategoryID
WHERE pc.Name = 'Bikes'
GROUP BY ps.Name
ORDER BY TotalProducts DESC;
GO


/*
============================================================
QUESTION 5 - BUSINESS USER: INCREASED COMPLEXITY
Original Author: Spencer Abinadi Ortiz Hernández

Question:
Our sales manager is preparing year-end bonuses.
She wants to reward the people who sell the most.
Can you give me a list of our salespeople with their first
and last names, their sales year-to-date, and their current
bonus, sorted from highest to lowest sales?

============================================================
*/

SELECT
    p.FirstName,
    p.LastName,
    sp.SalesYTD,
    sp.Bonus
FROM Sales.SalesPerson AS sp
INNER JOIN Person.Person AS p
    ON sp.BusinessEntityID = p.BusinessEntityID
ORDER BY sp.SalesYTD DESC;
GO


/*
============================================================
QUESTION 6 - BUSINESS USER: INCREASED COMPLEXITY
Original Author: Spencer Abinadi Ortiz Hernández

Question:
We are reviewing our online business. Our CEO thinks online
orders are smaller than orders placed through our salespeople.
Can you compare the number of orders and the average order
total for online orders versus salesperson orders?
I need this to decide where to invest next year.

============================================================
*/

SELECT
    CASE
        WHEN OnlineOrderFlag = 1 THEN 'Online Orders'
        WHEN SalesPersonID IS NOT NULL THEN 'Salesperson Orders'
    END AS OrderType,
    COUNT(*) AS TotalOrders,
    AVG(TotalDue) AS AverageOrderTotal
FROM Sales.SalesOrderHeader
WHERE OnlineOrderFlag = 1
    OR SalesPersonID IS NOT NULL
GROUP BY
    CASE
        WHEN OnlineOrderFlag = 1 THEN 'Online Orders'
        WHEN SalesPersonID IS NOT NULL THEN 'Salesperson Orders'
    END
ORDER BY AverageOrderTotal DESC;
GO


/*
============================================================
QUESTION 7 - METADATA
Original Author: Edward Mubaiwa

Question:
Using INFORMATION_SCHEMA.COLUMNS, which AdventureWorks
tables and views contain a column named ProductID, and
what schema does each object belong to?

============================================================
*/

SELECT
    TABLE_SCHEMA,
    TABLE_NAME,
    COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME = 'ProductID'
ORDER BY
    TABLE_SCHEMA,
    TABLE_NAME;
GO


/*
============================================================
QUESTION 8 - METADATA
Original Author: Edward Mubaiwa

Question:
Using INFORMATION_SCHEMA.COLUMNS, list every column name,
data type, and nullability setting for the Production.Product
table in AdventureWorks2025.

============================================================
*/

SELECT
    COLUMN_NAME,
    DATA_TYPE,
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'Production'
    AND TABLE_NAME = 'Product'
ORDER BY ORDINAL_POSITION;
GO
