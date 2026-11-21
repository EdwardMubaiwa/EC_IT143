/*
    Assignment: W4.2 - T-SQL Data Manipulation: Answer-Focused Approach
    Community: Football
    Author: EM
    Purpose: Demonstrate the eight-step answer-focused T-SQL workflow.
    Database: MyCommunitiesDB
*/
        /*
        STEP 8 - CALL THE STORED PROCEDURE
        Execute the procedure to refresh the destination table from the view.
        */
        USE MyCommunitiesDB;
        GO

        EXEC dbo.usp_Load_Football_PlayerCountByTeam;

        SELECT * FROM dbo.tbl_Football_PlayerCountByTeam;
