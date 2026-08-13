CREATE TABLE [dbo].[load_watermark] (
    [source_name]      VARCHAR (100) NOT NULL,
    [table_name]       VARCHAR (128) NOT NULL,
    [watermark_value]  VARCHAR (500) NULL,
    [watermark_column] VARCHAR (128) NOT NULL,
    [last_run_utc]     DATETIME2 (6) NULL,
    [last_batch_id]    VARCHAR (100) NULL
);


GO