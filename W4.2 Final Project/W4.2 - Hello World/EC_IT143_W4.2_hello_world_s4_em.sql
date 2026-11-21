/*
Question:
What is the current date and time?

Purpose:
Create a reusable view that returns the current
date and time.
*/

CREATE OR ALTER VIEW dbo.v_hello_world_current_datetime
AS
SELECT GETDATE() AS CurrentDateTime;
GO

-- Test the view
SELECT *
FROM dbo.v_hello_world_current_datetime;
GO