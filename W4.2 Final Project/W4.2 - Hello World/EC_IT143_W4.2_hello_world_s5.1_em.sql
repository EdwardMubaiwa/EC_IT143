/*
Purpose:
Create a table from the current date and time view.
*/

DROP TABLE IF EXISTS dbo.t_hello_world_current_datetime;
GO

SELECT *
INTO dbo.t_hello_world_current_datetime
FROM dbo.v_hello_world_current_datetime;
GO

-- View the table
SELECT *
FROM dbo.t_hello_world_current_datetime;
GO