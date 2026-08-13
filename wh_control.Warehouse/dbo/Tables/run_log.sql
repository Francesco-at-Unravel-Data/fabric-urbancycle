CREATE TABLE [dbo].[run_log] (
    [batch_id]      VARCHAR (100)  NOT NULL,
    [pipeline_name] VARCHAR (128)  NOT NULL,
    [source_name]   VARCHAR (100)  NULL,
    [layer]         VARCHAR (20)   NOT NULL,
    [started_utc]   DATETIME2 (6)  NOT NULL,
    [ended_utc]     DATETIME2 (6)  NULL,
    [status]        VARCHAR (20)   NOT NULL,
    [rows_read]     BIGINT         NULL,
    [rows_written]  BIGINT         NULL,
    [rows_rejected] BIGINT         NULL,
    [error_message] VARCHAR (4000) NULL
);


GO