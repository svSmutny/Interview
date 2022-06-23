CREATE TABLE [dbo].[DocumentsInProjects](
	[ProjectID] [int] NOT NULL,
	[DocumentID] [int] NOT NULL,
	[Deleted] [int] NULL,
 CONSTRAINT [aaaaaDocumentsInProjects1_PK] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC,
	[DocumentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
