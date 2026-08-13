CREATE TABLE [dbo].[source_registry] (
    [source_name]  VARCHAR (100)  NOT NULL,
    [source_type]  VARCHAR (50)   NOT NULL,
    [endpoint]     VARCHAR (1000) NULL,
    [load_pattern] VARCHAR (50)   NOT NULL,
    [owner]        VARCHAR (100)  NOT NULL,
    [sla_minutes]  INT            NULL,
    [is_active]    BIT            NOT NULL
);


GO