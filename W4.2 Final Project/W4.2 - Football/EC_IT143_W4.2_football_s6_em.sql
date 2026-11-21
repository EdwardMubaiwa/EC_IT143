/*
    Assignment: W4.2 - T-SQL Data Manipulation: Answer-Focused Approach
    Community: Football
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

        TRUNCATE TABLE dbo.tbl_Football_PlayerCountByTeam;

        INSERT INTO dbo.tbl_Football_PlayerCountByTeam (TeamID, TeamName, PlayerCount)
        SELECT TeamID, TeamName, PlayerCount
        FROM dbo.vw_Football_PlayerCountByTeam;

        SELECT * FROM dbo.tbl_Football_PlayerCountByTeam;
