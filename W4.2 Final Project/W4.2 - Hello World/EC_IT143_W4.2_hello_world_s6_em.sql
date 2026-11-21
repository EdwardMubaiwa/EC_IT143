/*
Purpose:
Load the table using data from the view.
*/

TRUNCATE TABLE dbo.t_hello_world_current_datetime;
GO

INSERT INTO dbo.t_hello_world_current_datetime
(
    CurrentDateTime
)
SELECT CurrentDateTime
FROM dbo.v_hello_world_current_datetime;
GO

-- Verify the loaded data
SELECT *
FROM dbo.t_hello_world_current_datetime;
GO