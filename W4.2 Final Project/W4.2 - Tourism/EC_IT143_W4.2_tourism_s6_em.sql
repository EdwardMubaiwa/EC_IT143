/*
    Assignment: W4.2 - T-SQL Data Manipulation: Answer-Focused Approach
    Community: Tourism
    Author: EM
    Purpose: Demonstrate the eight-step answer-focused T-SQL workflow.
    Database: MyCommunitiesDB
*/
        /*
        STEP 6 - LOAD THE TABLE FROM THE VIEW USING AN AD HOC SCRIPT
        TRUNCATE removes existing rows; INSERT reloads the latest view results.
        */
        USE MyCommunitiesDB;
        GO

        TRUNCATE TABLE dbo.tbl_Tourism_BookingCountByPackage;

        INSERT INTO dbo.tbl_Tourism_BookingCountByPackage (PackageID, PackageName, BookingCount)
        SELECT PackageID, PackageName, BookingCount
        FROM dbo.vw_Tourism_BookingCountByPackage;

        SELECT * FROM dbo.tbl_Tourism_BookingCountByPackage;
