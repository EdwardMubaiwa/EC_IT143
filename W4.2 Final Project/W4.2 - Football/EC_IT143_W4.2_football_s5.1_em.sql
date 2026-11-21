/*
    Assignment: W4.2 - T-SQL Data Manipulation: Answer-Focused Approach
    Community: Football
    Author: EM
    Purpose: Demonstrate the eight-step answer-focused T-SQL workflow.
    Database: MyCommunitiesDB
*/
        /*
        STEP 5.1 - TURN THE VIEW INTO A TABLE
        SELECT INTO creates a physical table using the view's current results.
        This is an initial table-creation demonstration.
        */
        USE MyCommunitiesDB;
        GO

        DROP TABLE IF EXISTS dbo.tbl_Football_PlayerCountByTeam;
        GO

        SELECT *
        INTO dbo.tbl_Football_PlayerCountByTeam
        FROM dbo.vw_Football_PlayerCountByTeam;
        GO

        SELECT * FROM dbo.tbl_Football_PlayerCountByTeam;
