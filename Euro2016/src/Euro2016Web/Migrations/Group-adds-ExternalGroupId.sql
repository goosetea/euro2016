USE [EURO2016DB]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 10.06.2016 23:38:28 ******/
DROP TABLE [dbo].[Group]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 10.06.2016 23:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ExternalGroupId] [nvarchar](max) NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Group] ON 

GO
INSERT [dbo].[Group] ([Id], [Name], [ExternalGroupId]) VALUES (1, N'Group A', N'2002441')
GO
INSERT [dbo].[Group] ([Id], [Name], [ExternalGroupId]) VALUES (2, N'Group B', N'2002442')
GO
INSERT [dbo].[Group] ([Id], [Name], [ExternalGroupId]) VALUES (3, N'Group C', N'2002443')
GO
INSERT [dbo].[Group] ([Id], [Name], [ExternalGroupId]) VALUES (4, N'Group D', N'2002444')
GO
INSERT [dbo].[Group] ([Id], [Name], [ExternalGroupId]) VALUES (5, N'Group E', N'2004543')
GO
INSERT [dbo].[Group] ([Id], [Name], [ExternalGroupId]) VALUES (6, N'Group F', N'2004544')
GO
INSERT [dbo].[Group] ([Id], [Name], [ExternalGroupId]) VALUES (7, N'Round of 16', NULL)
GO
INSERT [dbo].[Group] ([Id], [Name], [ExternalGroupId]) VALUES (8, N'Quarter-Finals', NULL)
GO
INSERT [dbo].[Group] ([Id], [Name], [ExternalGroupId]) VALUES (9, N'Semi-Finals', NULL)
GO
INSERT [dbo].[Group] ([Id], [Name], [ExternalGroupId]) VALUES (10, N'Final', NULL)
GO
SET IDENTITY_INSERT [dbo].[Group] OFF
GO
