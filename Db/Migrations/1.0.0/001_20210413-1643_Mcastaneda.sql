-- <Migration ID="0940089b-0427-43f1-918e-c3d1bfa607e1" />
GO

PRINT N'Creating [dbo].[Sales]'
GO
CREATE TABLE [dbo].[Sales]
(
[TransactionId] [smallint] NOT NULL IDENTITY(1, 1),
[CustomerId] [smallint] NULL,
[Net Amount] [int] NULL,
[Completed] [bit] NULL
)
GO
PRINT N'Creating [dbo].[flyway_schema_history]'
GO
CREATE TABLE [dbo].[flyway_schema_history]
(
[installed_rank] [int] NOT NULL,
[version] [nvarchar] (50) NULL,
[description] [nvarchar] (200) NULL,
[type] [nvarchar] (20) NOT NULL,
[script] [nvarchar] (1000) NOT NULL,
[checksum] [int] NULL,
[installed_by] [nvarchar] (100) NOT NULL,
[installed_on] [datetime] NOT NULL CONSTRAINT [DF__flyway_sc__insta__5CD6CB2B] DEFAULT (getdate()),
[execution_time] [int] NOT NULL,
[success] [bit] NOT NULL
)
GO
PRINT N'Creating primary key [flyway_schema_history_pk] on [dbo].[flyway_schema_history]'
GO
ALTER TABLE [dbo].[flyway_schema_history] ADD CONSTRAINT [flyway_schema_history_pk] PRIMARY KEY CLUSTERED ([installed_rank])
GO
PRINT N'Creating index [flyway_schema_history_s_idx] on [dbo].[flyway_schema_history]'
GO
CREATE NONCLUSTERED INDEX [flyway_schema_history_s_idx] ON [dbo].[flyway_schema_history] ([success])
GO
PRINT N'Creating [dbo].[t11]'
GO
CREATE TABLE [dbo].[t11]
(
[id] [int] NULL,
[nombre] [varchar] (50) NULL
)
GO
PRINT N'Creating [dbo].[tb1]'
GO
CREATE TABLE [dbo].[tb1]
(
[id] [int] NULL,
[nombre] [varchar] (50) NULL
)
GO
