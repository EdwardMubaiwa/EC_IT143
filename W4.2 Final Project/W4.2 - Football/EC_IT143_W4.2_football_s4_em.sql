/*
    Assignment: W4.2 - T-SQL Data Manipulation: Answer-Focused Approach
    Community: Football
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

        CREATE OR ALTER VIEW dbo.vw_Football_PlayerCountByTeam
        AS

SELECT
    t.id AS TeamID,
    t.name AS TeamName,
    COUNT(p.id) AS PlayerCount
FROM dbo.teams AS t
LEFT JOIN dbo.players AS p
    ON p.team_id = t.id
GROUP BY
    t.id,
    t.name;

        GO

        -- Test the view.
        SELECT * FROM dbo.vw_Football_PlayerCountByTeam;
