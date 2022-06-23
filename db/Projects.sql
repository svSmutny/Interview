CREATE TABLE [dbo].[Projects](
	[ProjectID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[StartTime] [datetime] NULL,
	[Deadline] [datetime] NULL,
	[TimeEstimate] [int] NULL,
	[Busy] [bit] NOT NULL,
	[MoveCount] [int] NULL,
	[Path] [nvarchar](260) NULL,
	[Deleted] [bit] NOT NULL,
	[FolderType] [int] NOT NULL,
 CONSTRAINT [aaaaaProjects1_PK] PRIMARY KEY NONCLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

