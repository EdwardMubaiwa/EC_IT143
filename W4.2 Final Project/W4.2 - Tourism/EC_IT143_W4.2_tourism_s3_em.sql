/*
    Assignment: W4.2 - T-SQL Data Manipulation: Answer-Focused Approach
    Community: Tourism
    Author: EM
    Purpose: Demonstrate the eight-step answer-focused T-SQL workflow.
    Database: MyCommunitiesDB
*/
        /*
        STEP 3 - CREATE AN AD HOC SQL QUERY
        This query answers the question directly from the source tables.
        */
        USE MyCommunitiesDB;
        GO


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
