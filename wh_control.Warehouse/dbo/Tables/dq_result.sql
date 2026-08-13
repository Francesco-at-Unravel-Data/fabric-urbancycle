CREATE TABLE [dbo].[dq_result] (
    [batch_id]    VARCHAR (100) NOT NULL,
    [check_name]  VARCHAR (128) NOT NULL,
    [table_name]  VARCHAR (128) NOT NULL,
    [layer]       VARCHAR (20)  NOT NULL,
    [severity]    VARCHAR (20)  NOT NULL,
    [expected]    VARCHAR (500) NULL,
    [actual]      VARCHAR (500) NULL,
    [passed]      BIT           NOT NULL,
    [checked_utc] DATETIME2 (6) NOT NULL
);


GO