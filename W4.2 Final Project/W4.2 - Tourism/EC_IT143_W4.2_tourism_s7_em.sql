/*
    Assignment: W4.2 - T-SQL Data Manipulation: Answer-Focused Approach
    Community: Tourism
    Author: EM
    Purpose: Demonstrate the eight-step answer-focused T-SQL workflow.
    Database: MyCommunitiesDB
*/
        /*
        STEP 7 - TURN THE AD HOC LOAD SCRIPT INTO A STORED PROCEDURE
        The procedure encapsulates the refresh logic for reuse.
        */
        USE MyCommunitiesDB;
        GO

        CREATE OR ALTER PROCEDURE dbo.usp_Load_Tourism_BookingCountByPackage
        AS
        BEGIN
            SET NOCOUNT ON;

            TRUNCATE TABLE dbo.tbl_Tourism_BookingCountByPackage;

            INSERT INTO dbo.tbl_Tourism_BookingCountByPackage (PackageID, PackageName, BookingCount)
            SELECT PackageID, PackageName, BookingCount
            FROM dbo.vw_Tourism_BookingCountByPackage;
        END;
        GO

        -- Optional test of the procedure definition:
        EXEC sys.sp_helptext 'dbo.usp_Load_Tourism_BookingCountByPackage';
