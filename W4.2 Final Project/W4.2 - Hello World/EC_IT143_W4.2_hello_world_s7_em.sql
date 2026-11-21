/*
Purpose:
Create a stored procedure to load the current
date and time into the destination table.
*/

CREATE OR ALTER PROCEDURE dbo.usp_hello_world_current_datetime
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE dbo.t_hello_world_current_datetime;

    INSERT INTO dbo.t_hello_world_current_datetime
    (
        CurrentDateTime
    )
    SELECT CurrentDateTime
    FROM dbo.v_hello_world_current_datetime;
END;
GO