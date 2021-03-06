USE [EURO2016DB]
GO
ALTER TABLE [dbo].[Team] DROP CONSTRAINT [FK_Team_Group]
GO
ALTER TABLE [dbo].[Match] DROP CONSTRAINT [FK_Match_Team1]
GO
ALTER TABLE [dbo].[Match] DROP CONSTRAINT [FK_Match_Team]
GO
ALTER TABLE [dbo].[Match] DROP CONSTRAINT [FK_Match_MatchCategory]
GO
ALTER TABLE [dbo].[Bet] DROP CONSTRAINT [FK_Bet_User]
GO
ALTER TABLE [dbo].[Bet] DROP CONSTRAINT [FK_Bet_Match]
GO
/****** Object:  Table [dbo].[User]    Script Date: 09.06.2016 00:50:18 ******/
DROP TABLE [dbo].[User]
GO
/****** Object:  Table [dbo].[Team]    Script Date: 09.06.2016 00:50:18 ******/
DROP TABLE [dbo].[Team]
GO
/****** Object:  Table [dbo].[MatchCategory]    Script Date: 09.06.2016 00:50:18 ******/
DROP TABLE [dbo].[MatchCategory]
GO
/****** Object:  Table [dbo].[Match]    Script Date: 09.06.2016 00:50:18 ******/
DROP TABLE [dbo].[Match]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 09.06.2016 00:50:18 ******/
DROP TABLE [dbo].[Group]
GO
/****** Object:  Table [dbo].[Bet]    Script Date: 09.06.2016 00:50:18 ******/
DROP TABLE [dbo].[Bet]
GO
/****** Object:  Table [dbo].[Bet]    Script Date: 09.06.2016 00:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MatchId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Score1] [int] NULL,
	[Score2] [int] NULL,
	[PointsGained] [int] NULL,
 CONSTRAINT [PK_Bet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Group]    Script Date: 09.06.2016 00:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Match]    Script Date: 09.06.2016 00:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Match](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Team1Id] [int] NOT NULL,
	[Team2Id] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[MatchCategoryId] [int] NOT NULL,
	[Score1] [int] NULL,
	[Score2] [int] NULL,
	[GroupId] [int] NOT NULL,
	[IsPlaceholder] [bit] NULL,
 CONSTRAINT [PK_Match] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MatchCategory]    Script Date: 09.06.2016 00:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MatchCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Team]    Script Date: 09.06.2016 00:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Acronym] [nvarchar](50) NOT NULL,
	[GroupId] [int] NOT NULL,
	[IsPlaceholder] [bit] NOT NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 09.06.2016 00:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[FriendlyUsername] [nvarchar](50) NULL,
	[TotalPoints] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Bet] ON 

GO
INSERT [dbo].[Bet] ([Id], [MatchId], [UserId], [Score1], [Score2], [PointsGained]) VALUES (1, 4, 2, 4, 49, 0)
GO
INSERT [dbo].[Bet] ([Id], [MatchId], [UserId], [Score1], [Score2], [PointsGained]) VALUES (2, 3, 2, 777, 7, 0)
GO
INSERT [dbo].[Bet] ([Id], [MatchId], [UserId], [Score1], [Score2], [PointsGained]) VALUES (3, 5, 2, 4, 3, 0)
GO
INSERT [dbo].[Bet] ([Id], [MatchId], [UserId], [Score1], [Score2], [PointsGained]) VALUES (4, 6, 2, 9, 120, 0)
GO
INSERT [dbo].[Bet] ([Id], [MatchId], [UserId], [Score1], [Score2], [PointsGained]) VALUES (5, 6, 2, NULL, 1, 0)
GO
INSERT [dbo].[Bet] ([Id], [MatchId], [UserId], [Score1], [Score2], [PointsGained]) VALUES (6, 6, 2, NULL, 123, 0)
GO
INSERT [dbo].[Bet] ([Id], [MatchId], [UserId], [Score1], [Score2], [PointsGained]) VALUES (7, 42, 2, 6, NULL, 0)
GO
INSERT [dbo].[Bet] ([Id], [MatchId], [UserId], [Score1], [Score2], [PointsGained]) VALUES (8, 40, 2, 1, NULL, 0)
GO
INSERT [dbo].[Bet] ([Id], [MatchId], [UserId], [Score1], [Score2], [PointsGained]) VALUES (9, 19, 2, 2, NULL, 0)
GO
INSERT [dbo].[Bet] ([Id], [MatchId], [UserId], [Score1], [Score2], [PointsGained]) VALUES (10, 21, 2, 7, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[Bet] OFF
GO
SET IDENTITY_INSERT [dbo].[Group] ON 

GO
INSERT [dbo].[Group] ([Id], [Name]) VALUES (1, N'Group A')
GO
INSERT [dbo].[Group] ([Id], [Name]) VALUES (2, N'Group B')
GO
INSERT [dbo].[Group] ([Id], [Name]) VALUES (3, N'Group C')
GO
INSERT [dbo].[Group] ([Id], [Name]) VALUES (4, N'Group D')
GO
INSERT [dbo].[Group] ([Id], [Name]) VALUES (5, N'Group E')
GO
INSERT [dbo].[Group] ([Id], [Name]) VALUES (6, N'Group F')
GO
INSERT [dbo].[Group] ([Id], [Name]) VALUES (7, N'Round of 16')
GO
INSERT [dbo].[Group] ([Id], [Name]) VALUES (8, N'Quarter-Finals')
GO
INSERT [dbo].[Group] ([Id], [Name]) VALUES (9, N'Semi-Finals')
GO
INSERT [dbo].[Group] ([Id], [Name]) VALUES (10, N'Final')
GO
SET IDENTITY_INSERT [dbo].[Group] OFF
GO
SET IDENTITY_INSERT [dbo].[Match] ON 

GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (3, 2, 3, CAST(N'2016-06-10 21:00:00.000' AS DateTime), 1, NULL, NULL, 1, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (4, 1, 4, CAST(N'2016-06-11 15:00:00.000' AS DateTime), 1, NULL, NULL, 1, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (5, 8, 7, CAST(N'2016-06-11 18:00:00.000' AS DateTime), 1, NULL, NULL, 2, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (6, 5, 6, CAST(N'2016-06-11 21:00:00.000' AS DateTime), 1, NULL, NULL, 2, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (7, 15, 12, CAST(N'2016-06-12 15:00:00.000' AS DateTime), 1, NULL, NULL, 4, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (8, 53, 10, CAST(N'2016-06-12 18:00:00.000' AS DateTime), 1, NULL, NULL, 3, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (9, 9, 11, CAST(N'2016-06-12 21:00:00.000' AS DateTime), 1, NULL, NULL, 3, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (10, 14, 13, CAST(N'2016-06-13 15:00:00.000' AS DateTime), 1, NULL, NULL, 4, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (11, 18, 19, CAST(N'2016-06-13 18:00:00.000' AS DateTime), 1, NULL, NULL, 5, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (12, 16, 17, CAST(N'2016-06-13 21:00:00.000' AS DateTime), 1, NULL, NULL, 5, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (13, 20, 21, CAST(N'2016-06-14 18:00:00.000' AS DateTime), 1, NULL, NULL, 6, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (14, 23, 22, CAST(N'2016-06-14 21:00:00.000' AS DateTime), 1, NULL, NULL, 6, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (15, 6, 7, CAST(N'2016-06-15 15:00:00.000' AS DateTime), 2, NULL, NULL, 2, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (16, 3, 4, CAST(N'2016-06-15 18:00:00.000' AS DateTime), 2, NULL, NULL, 1, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (17, 2, 1, CAST(N'2016-06-15 21:00:00.000' AS DateTime), 2, NULL, NULL, 1, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (18, 5, 8, CAST(N'2016-06-16 15:00:00.000' AS DateTime), 2, NULL, NULL, 2, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (19, 11, 10, CAST(N'2016-06-16 18:00:00.000' AS DateTime), 2, NULL, NULL, 3, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (20, 9, 53, CAST(N'2016-06-16 21:00:00.000' AS DateTime), 2, NULL, NULL, 3, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (21, 17, 19, CAST(N'2016-06-17 15:00:00.000' AS DateTime), 2, NULL, NULL, 5, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (22, 13, 12, CAST(N'2016-06-17 18:00:00.000' AS DateTime), 2, NULL, NULL, 4, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (23, 14, 15, CAST(N'2016-06-17 21:00:00.000' AS DateTime), 2, NULL, NULL, 4, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (24, 16, 18, CAST(N'2016-06-18 15:00:00.000' AS DateTime), 2, NULL, NULL, 5, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (25, 22, 21, CAST(N'2016-06-18 18:00:00.000' AS DateTime), 2, NULL, NULL, 6, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (26, 23, 20, CAST(N'2016-06-18 21:00:00.000' AS DateTime), 2, NULL, NULL, 6, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (27, 3, 1, CAST(N'2016-06-19 21:00:00.000' AS DateTime), 3, NULL, NULL, 1, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (28, 4, 2, CAST(N'2016-06-19 21:00:00.000' AS DateTime), 3, NULL, NULL, 1, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (29, 6, 8, CAST(N'2016-06-20 21:00:00.000' AS DateTime), 3, NULL, NULL, 2, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (30, 7, 5, CAST(N'2016-06-20 21:00:00.000' AS DateTime), 3, NULL, NULL, 2, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (31, 11, 53, CAST(N'2016-06-21 18:00:00.000' AS DateTime), 3, NULL, NULL, 3, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (32, 10, 9, CAST(N'2016-06-21 18:00:00.000' AS DateTime), 3, NULL, NULL, 3, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (33, 13, 15, CAST(N'2016-06-21 21:00:00.000' AS DateTime), 3, NULL, NULL, 4, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (34, 12, 14, CAST(N'2016-06-21 21:00:00.000' AS DateTime), 3, NULL, NULL, 4, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (35, 21, 23, CAST(N'2016-06-22 18:00:00.000' AS DateTime), 3, NULL, NULL, 6, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (36, 22, 20, CAST(N'2016-06-22 18:00:00.000' AS DateTime), 3, NULL, NULL, 6, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (37, 17, 18, CAST(N'2016-06-22 21:00:00.000' AS DateTime), 3, NULL, NULL, 5, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (38, 19, 16, CAST(N'2016-06-22 21:00:00.000' AS DateTime), 3, NULL, NULL, 5, 0)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (40, 26, 28, CAST(N'2016-06-25 15:00:00.000' AS DateTime), 4, NULL, NULL, 7, 1)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (41, 29, 30, CAST(N'2016-06-25 18:00:00.000' AS DateTime), 4, NULL, NULL, 7, 1)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (42, 31, 32, CAST(N'2016-06-25 21:00:00.000' AS DateTime), 4, NULL, NULL, 7, 1)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (43, 33, 34, CAST(N'2016-06-26 15:00:00.000' AS DateTime), 4, NULL, NULL, 7, 1)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (44, 35, 36, CAST(N'2016-06-26 18:00:00.000' AS DateTime), 4, NULL, NULL, 7, 1)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (45, 37, 38, CAST(N'2016-06-26 21:00:00.000' AS DateTime), 4, NULL, NULL, 7, 1)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (46, 54, 38, CAST(N'2016-06-27 18:00:00.000' AS DateTime), 4, NULL, NULL, 7, 1)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (47, 39, 40, CAST(N'2016-06-27 21:00:00.000' AS DateTime), 4, NULL, NULL, 7, 1)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (48, 41, 42, CAST(N'2016-06-30 21:00:00.000' AS DateTime), 5, NULL, NULL, 8, 1)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (49, 43, 44, CAST(N'2016-07-01 21:00:00.000' AS DateTime), 5, NULL, NULL, 8, 1)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (50, 55, 56, CAST(N'2016-07-02 21:00:00.000' AS DateTime), 5, NULL, NULL, 8, 1)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (51, 45, 46, CAST(N'2016-07-03 21:00:00.000' AS DateTime), 5, NULL, NULL, 8, 1)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (52, 47, 48, CAST(N'2016-07-06 21:00:00.000' AS DateTime), 6, NULL, NULL, 9, 1)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (53, 49, 50, CAST(N'2016-07-07 21:00:00.000' AS DateTime), 6, NULL, NULL, 9, 1)
GO
INSERT [dbo].[Match] ([Id], [Team1Id], [Team2Id], [StartDate], [MatchCategoryId], [Score1], [Score2], [GroupId], [IsPlaceholder]) VALUES (54, 51, 52, CAST(N'2016-07-10 21:00:00.000' AS DateTime), 7, NULL, NULL, 10, 1)
GO
SET IDENTITY_INSERT [dbo].[Match] OFF
GO
SET IDENTITY_INSERT [dbo].[MatchCategory] ON 

GO
INSERT [dbo].[MatchCategory] ([Id], [Name]) VALUES (1, N'Group Stage - MD 1')
GO
INSERT [dbo].[MatchCategory] ([Id], [Name]) VALUES (2, N'Group Stage - MD 2')
GO
INSERT [dbo].[MatchCategory] ([Id], [Name]) VALUES (3, N'Group Stage - MD 3')
GO
INSERT [dbo].[MatchCategory] ([Id], [Name]) VALUES (4, N'Round of 16')
GO
INSERT [dbo].[MatchCategory] ([Id], [Name]) VALUES (5, N'Quarter-Finals')
GO
INSERT [dbo].[MatchCategory] ([Id], [Name]) VALUES (6, N'Semi-Finals')
GO
INSERT [dbo].[MatchCategory] ([Id], [Name]) VALUES (7, N'Final')
GO
SET IDENTITY_INSERT [dbo].[MatchCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Team] ON 

GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (1, N'Albania', N'ALB', 1, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (2, N'France', N'FRA', 1, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (3, N'Romania', N'ROU', 1, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (4, N'Switzerland', N'SUI', 1, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (5, N'England', N'ENG', 2, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (6, N'Russia', N'RUS', 2, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (7, N'Slovakia', N'SVK', 2, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (8, N'Wales', N'WAL', 2, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (9, N'Germany', N'GER', 3, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (10, N'Northern Ireland', N'NIR', 3, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (11, N'Ukraine', N'UKR', 3, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (12, N'Croatia', N'CRO', 4, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (13, N'Czech Republic', N'CZE', 4, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (14, N'Spain', N'ESP', 4, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (15, N'Turkey', N'TUR', 4, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (16, N'Belgium', N'BEL', 5, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (17, N'Italy', N'ITA', 5, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (18, N'Republic of Ireland', N'IRL', 5, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (19, N'Sweden', N'SWE', 5, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (20, N'Austria', N'AUT', 6, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (21, N'Hungary', N'HUN', 6, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (22, N'Iceland', N'ISL', 6, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (23, N'Portugal', N'POR', 6, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (26, N'RUNNER-UP A', N'A2', 7, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (28, N'RUNNER-UP C', N'C2', 7, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (29, N'WINNER B', N'B1', 7, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (30, N'THIRD PLACE A/C/D', N'ACD3', 7, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (31, N'WINNER D', N'D1', 7, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (32, N'THIRD PLACE B/E/F', N'BEF3', 7, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (33, N'WINNER A', N'A1', 7, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (34, N'THIRD PLACE C/D/E', N'CDE3', 7, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (35, N'WINNER C', N'C1', 7, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (36, N'THIRD PLACE A/B/F', N'ABF3', 7, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (37, N'WINNER F', N'F1', 7, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (38, N'RUNNER-UP D', N'D2', 7, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (39, N'RUNNER-UP B', N'B2', 7, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (40, N'RUNNER-UP F', N'F2', 7, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (41, N'WINNER R16 (ST-ETIENNE)', N'W16SE', 8, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (42, N'WINNER R16 (LENS)', N'W16LE', 8, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (43, N'WINNER R16 (PARIS)', N'W16P', 8, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (44, N'WINNER R16 (TOULOUSE)', N'W16T', 8, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (45, N'WINNER R16 (LYON)', N'W16LY', 8, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (46, N'WINNER R16 (NICE)', N'W16N', 8, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (47, N'WINNER QF (MARSEILLE)', N'WQFM', 9, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (48, N'WINNER QF (LILLE)', N'WQFL', 9, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (49, N'WINNER QF (BORDEAUX)', N'WQFB', 9, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (50, N'WINNER QF (ST-DENIS)', N'WQFSD', 9, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (51, N'WINNER SF (LYON)', N'WSFL', 10, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (52, N'WINNER SF (MARSEILLE)', N'WSFM', 10, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (53, N'Poland', N'POL', 3, 0)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (54, N'WINNER E', N'E1', 7, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (55, N'WINNER R16 (LILLE)', N'W16LI', 8, 1)
GO
INSERT [dbo].[Team] ([Id], [Name], [Acronym], [GroupId], [IsPlaceholder]) VALUES (56, N'WINNER R16 (ST-DENIS)', N'W16SD', 8, 1)
GO
SET IDENTITY_INSERT [dbo].[Team] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

GO
INSERT [dbo].[User] ([Id], [Username], [FriendlyUsername], [TotalPoints]) VALUES (1, N'xxx', NULL, 0)
GO
INSERT [dbo].[User] ([Id], [Username], [FriendlyUsername], [TotalPoints]) VALUES (2, N'ALIEN\gusti', N'gusti', 0)
GO
INSERT [dbo].[User] ([Id], [Username], [FriendlyUsername], [TotalPoints]) VALUES (3, N'User1', N'User One', 30)
GO
INSERT [dbo].[User] ([Id], [Username], [FriendlyUsername], [TotalPoints]) VALUES (4, N'User2', N'User Two', 29)
GO
INSERT [dbo].[User] ([Id], [Username], [FriendlyUsername], [TotalPoints]) VALUES (5, N'User3', N'User Three', 28)
GO
INSERT [dbo].[User] ([Id], [Username], [FriendlyUsername], [TotalPoints]) VALUES (6, N'User4', N'User4', 20)
GO
INSERT [dbo].[User] ([Id], [Username], [FriendlyUsername], [TotalPoints]) VALUES (7, N'User5', N'User5', 15)
GO
INSERT [dbo].[User] ([Id], [Username], [FriendlyUsername], [TotalPoints]) VALUES (8, N'User6', N'User6', 14)
GO
INSERT [dbo].[User] ([Id], [Username], [FriendlyUsername], [TotalPoints]) VALUES (9, N'USer7', N'User 7', 10)
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Bet]  WITH CHECK ADD  CONSTRAINT [FK_Bet_Match] FOREIGN KEY([MatchId])
REFERENCES [dbo].[Match] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bet] CHECK CONSTRAINT [FK_Bet_Match]
GO
ALTER TABLE [dbo].[Bet]  WITH CHECK ADD  CONSTRAINT [FK_Bet_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bet] CHECK CONSTRAINT [FK_Bet_User]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_MatchCategory] FOREIGN KEY([MatchCategoryId])
REFERENCES [dbo].[MatchCategory] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_MatchCategory]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_Team] FOREIGN KEY([Team1Id])
REFERENCES [dbo].[Team] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_Team]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_Team1] FOREIGN KEY([Team2Id])
REFERENCES [dbo].[Team] ([Id])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_Team1]
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Group] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Group]
GO

DELETE FROM [User]
DELETE FROM [Bet]