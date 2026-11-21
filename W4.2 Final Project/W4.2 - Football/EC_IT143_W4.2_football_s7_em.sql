/*
    Assignment: W4.2 - T-SQL Data Manipulation: Answer-Focused Approach
    Community: Football
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

        CREATE OR ALTER PROCEDURE dbo.usp_Load_Football_PlayerCountByTeam
        AS
        BEGIN
            SET NOCOUNT ON;

            TRUNCATE TABLE dbo.tbl_Football_PlayerCountByTeam;

            INSERT INTO dbo.tbl_Football_PlayerCountByTeam (TeamID, TeamName, PlayerCount)
            SELECT TeamID, TeamName, PlayerCount
            FROM dbo.vw_Football_PlayerCountByTeam;
        END;
        GO

        -- Optional test of the procedure definition:
        EXEC sys.sp_helptext 'dbo.usp_Load_Football_PlayerCountByTeam';
