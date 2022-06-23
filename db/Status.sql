CREATE TABLE [dbo].[Status](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[IconName] [nvarchar](255) NULL,
	[Name] [nvarchar](50) NULL,
	[BoxXPos] [int] NULL,
	[BoxYPos] [int] NULL,
	[BoxWidth] [int] NULL,
	[BoxHeight] [int] NULL,
	[Enabled] [bit] NOT NULL,
	[Description] [ntext] NULL,
	[RevNumID] [int] NULL,
	[BlockRights] [bit] NOT NULL,
	[WorkflowID] [int] NOT NULL,
	[StatusType] [tinyint] NOT NULL,
	[RevisionVarID] [int] NULL,
 CONSTRAINT [aaaaaStatus1_PK] PRIMARY KEY NONCLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



