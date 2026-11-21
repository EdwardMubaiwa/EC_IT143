/*
    Assignment: W4.2 - T-SQL Data Manipulation: Answer-Focused Approach
    Community: Tourism
    Author: EM
    Purpose: Demonstrate the eight-step answer-focused T-SQL workflow.
    Database: MyCommunitiesDB
*/
        /*
        STEP 4 - TURN THE AD HOC QUERY INTO A VIEW
        The view stores the query definition, not a separate copy of the data.
        */
        USE MyCommunitiesDB;
        GO

        CREATE OR ALTER VIEW dbo.vw_Tourism_BookingCountByPackage
        AS

SELECT
    p.id AS PackageID,
    p.package_name AS PackageName,
    COUNT(b.id) AS BookingCount
FROM dbo.packages AS p
LEFT JOIN dbo.departures AS d
    ON d.package_id = p.id
LEFT JOIN dbo.bookings AS b
    ON b.departure_id = d.id
GROUP BY
    p.id,
    p.package_name;

        GO

        -- Test the view.
        SELECT * FROM dbo.vw_Tourism_BookingCountByPackage;
