CREATE TABLE [dbo].[Documents](
	[DocumentID] [int] IDENTITY(1,1) NOT NULL,
	[Filename] [nvarchar](255) NULL,
	[LockProject] [int] NULL,
	[UserID] [int] NULL,
	[LockDomain] [nvarchar](255) NULL,
	[LockPath] [nvarchar](255) NULL,
	[Busy] [bit] NOT NULL,
	[Flushed] [int] NULL,
	[DefValStored] [int] NULL,
	[RevGenCounter] [int] NULL,
	[LatestRevisionNo] [int] NULL,
	[CurrentStatusID] [int] NULL,
	[WorkingVersionModified] [int] NULL,
	[ExtensionID] [int] NULL,
	[LockDate] [datetime] NULL,
	[UserDocRefsModified] [bit] NULL,
	[Deleted] [bit] NOT NULL,
	[Shared] [int] NULL,
	[LockViewID] [uniqueidentifier] NULL,
	[Link] [bit] NULL,
	[DocTypeID] [int] NULL,
	[ObjectTypeID] [int] NULL,
	[Flags] [int] NOT NULL,
 CONSTRAINT [aaaaaDocuments1_PK] PRIMARY KEY CLUSTERED 
(
	[DocumentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
