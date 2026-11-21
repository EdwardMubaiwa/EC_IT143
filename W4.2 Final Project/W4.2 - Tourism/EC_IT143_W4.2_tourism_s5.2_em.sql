/*
    Assignment: W4.2 - T-SQL Data Manipulation: Answer-Focused Approach
    Community: Tourism
    Author: EM
    Purpose: Demonstrate the eight-step answer-focused T-SQL workflow.
    Database: MyCommunitiesDB
*/
        /*
        STEP 5.2 - REFINE THE TABLE
        Re-create the destination table with an explicit primary key and data types.
        The table will be populated in Step 6.
        */
        USE MyCommunitiesDB;
        GO

        DROP TABLE IF EXISTS dbo.tbl_Tourism_BookingCountByPackage;
        GO

        CREATE TABLE dbo.tbl_Tourism_BookingCountByPackage
        (
            PackageID INT NOT NULL,
    PackageName NVARCHAR(255) NOT NULL,
    BookingCount INT NOT NULL,
    CONSTRAINT PK_tbl_Tourism_BookingCountByPackage PRIMARY KEY (PackageID)
        );
        GO

        -- Confirm the table structure.
        EXEC sys.sp_help 'dbo.tbl_Tourism_BookingCountByPackage';
