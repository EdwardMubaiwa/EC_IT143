/*
    Assignment: W4.2 - T-SQL Data Manipulation: Answer-Focused Approach
    Community: Football
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
    t.id AS TeamID,
    t.name AS TeamName,
    COUNT(p.id) AS PlayerCount
FROM dbo.teams AS t
LEFT JOIN dbo.players AS p
    ON p.team_id = t.id
GROUP BY
    t.id,
    t.name;
