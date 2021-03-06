USE [EmlakOfisi]
GO
/****** Object:  Table [dbo].[Adverts]    Script Date: 28.05.2020 07:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adverts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Price] [int] NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[AdvertType] [nvarchar](30) NOT NULL,
	[AgentId] [int] NOT NULL,
	[Heating] [nvarchar](50) NULL,
	[NumberOfRooms] [nvarchar](50) NULL,
	[TotalFloor] [int] NULL,
	[PlaceFloor] [int] NULL,
	[IsInHousingEstate] [bit] NULL,
	[IsFurnished] [bit] NULL,
	[IsInUse] [bit] NULL,
 CONSTRAINT [PK_Adverts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agents]    Script Date: 28.05.2020 07:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agents](
	[Username] [nvarchar](50) NOT NULL,
	[CompanyName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Agents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Adverts] ON 

INSERT [dbo].[Adverts] ([Id], [Title], [Price], [Location], [AdvertType], [AgentId], [Heating], [NumberOfRooms], [TotalFloor], [PlaceFloor], [IsInHousingEstate], [IsFurnished], [IsInUse]) VALUES (2, N'Test1', 1000, N'Test1', N'Kiralık', 2, N'Kombi', N'2+1', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Adverts] ([Id], [Title], [Price], [Location], [AdvertType], [AgentId], [Heating], [NumberOfRooms], [TotalFloor], [PlaceFloor], [IsInHousingEstate], [IsFurnished], [IsInUse]) VALUES (3, N'Test1', 1000, N'Test1', N'Kiralık', 2, N'Kombi', N'2+1', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Adverts] ([Id], [Title], [Price], [Location], [AdvertType], [AgentId], [Heating], [NumberOfRooms], [TotalFloor], [PlaceFloor], [IsInHousingEstate], [IsFurnished], [IsInUse]) VALUES (4, N'test3', 1250, N'Ataşehir', N'Satılık', 2, N'Kombi', N'3+1', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Adverts] ([Id], [Title], [Price], [Location], [AdvertType], [AgentId], [Heating], [NumberOfRooms], [TotalFloor], [PlaceFloor], [IsInHousingEstate], [IsFurnished], [IsInUse]) VALUES (5, N'test4', 5000, N'test4', N'kiralık', 1, N'SOba', N'1+1', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Adverts] ([Id], [Title], [Price], [Location], [AdvertType], [AgentId], [Heating], [NumberOfRooms], [TotalFloor], [PlaceFloor], [IsInHousingEstate], [IsFurnished], [IsInUse]) VALUES (6, N'test5', 1250, N'test5', N'satılık', 3, N'Zemin', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Adverts] ([Id], [Title], [Price], [Location], [AdvertType], [AgentId], [Heating], [NumberOfRooms], [TotalFloor], [PlaceFloor], [IsInHousingEstate], [IsFurnished], [IsInUse]) VALUES (8, N'Kiralık Fırsat', 1500, N'Ataşehir', N'Kiralık', 1, N'Kombi', N'2+1', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Adverts] ([Id], [Title], [Price], [Location], [AdvertType], [AgentId], [Heating], [NumberOfRooms], [TotalFloor], [PlaceFloor], [IsInHousingEstate], [IsFurnished], [IsInUse]) VALUES (9, N'deneme', 2000, N'deneme', N'satılık', 1, N'soba', N'1+1', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Adverts] ([Id], [Title], [Price], [Location], [AdvertType], [AgentId], [Heating], [NumberOfRooms], [TotalFloor], [PlaceFloor], [IsInHousingEstate], [IsFurnished], [IsInUse]) VALUES (10, N'test2', 1250, N'Ataşehir', N'Kiralık', 1, N'Kombi', N'5+1', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Adverts] ([Id], [Title], [Price], [Location], [AdvertType], [AgentId], [Heating], [NumberOfRooms], [TotalFloor], [PlaceFloor], [IsInHousingEstate], [IsFurnished], [IsInUse]) VALUES (11, N'deneme', 5000, N'KAdıköy', N'Kiralık', 1, N'Komb', N'3+1', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Adverts] ([Id], [Title], [Price], [Location], [AdvertType], [AgentId], [Heating], [NumberOfRooms], [TotalFloor], [PlaceFloor], [IsInHousingEstate], [IsFurnished], [IsInUse]) VALUES (12, N'Kİralık Kelepir', 1000, N'Şişli', N'Kiralık', 1, N'Kombi', N'1+1', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Adverts] OFF
SET IDENTITY_INSERT [dbo].[Agents] ON 

INSERT [dbo].[Agents] ([Username], [CompanyName], [Password], [Id]) VALUES (N'test10', N'test10', N'1234', 1)
INSERT [dbo].[Agents] ([Username], [CompanyName], [Password], [Id]) VALUES (N'test1', N'test1', N'1234', 2)
INSERT [dbo].[Agents] ([Username], [CompanyName], [Password], [Id]) VALUES (N'test2', N'test2', N'12345', 3)
INSERT [dbo].[Agents] ([Username], [CompanyName], [Password], [Id]) VALUES (N'emlakci', N'emLak emlak', N'123456', 5)
INSERT [dbo].[Agents] ([Username], [CompanyName], [Password], [Id]) VALUES (N'test9', N'test9', N'1234', 6)
SET IDENTITY_INSERT [dbo].[Agents] OFF
ALTER TABLE [dbo].[Adverts]  WITH CHECK ADD  CONSTRAINT [FK_Adverts_Agents] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agents] ([Id])
GO
ALTER TABLE [dbo].[Adverts] CHECK CONSTRAINT [FK_Adverts_Agents]
GO
