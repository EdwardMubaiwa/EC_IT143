/*
Purpose:
Refine the table structure by adding a primary key
and an appropriate data type.
*/

DROP TABLE IF EXISTS dbo.t_hello_world_current_datetime;
GO

CREATE TABLE dbo.t_hello_world_current_datetime
(
    CurrentDateTimeID INT IDENTITY(1,1) PRIMARY KEY,
    CurrentDateTime DATETIME2 NOT NULL
);
GO

-- Verify the table structure
SELECT *
FROM dbo.t_hello_world_current_datetime;
GO