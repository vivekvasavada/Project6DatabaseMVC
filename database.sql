USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 8/6/2017 10:44:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoriesID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoriesName] [nvarchar](50) NOT NULL,
	[AccessoriesPhoto] [nvarchar](500) NOT NULL,
	[AccessoriesType] [nvarchar](50) NOT NULL,
	[AccessoriesColor] [nvarchar](50) NOT NULL,
	[AccessoriesSeason] [nvarchar](50) NOT NULL,
	[AccessoriesOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BottomsID]    Script Date: 8/6/2017 10:44:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BottomsID](
	[BottomsID] [int] IDENTITY(1,1) NOT NULL,
	[BottomsName] [nvarchar](50) NOT NULL,
	[BottomsPhoto] [nchar](500) NOT NULL,
	[BottomsType] [nvarchar](50) NOT NULL,
	[BottomsColor] [nvarchar](50) NOT NULL,
	[BottomsSeason] [nvarchar](50) NOT NULL,
	[BottomsOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BottomsID] PRIMARY KEY CLUSTERED 
(
	[BottomsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 8/6/2017 10:44:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoesID] [int] IDENTITY(1,1) NOT NULL,
	[ShoesName] [nvarchar](50) NOT NULL,
	[ShoesPhoto] [nvarchar](500) NOT NULL,
	[ShoesType] [nvarchar](50) NOT NULL,
	[ShoesColor] [nvarchar](50) NOT NULL,
	[ShoesSeason] [nvarchar](50) NOT NULL,
	[ShoesOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 8/6/2017 10:44:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tops](
	[TopsID] [int] IDENTITY(1,1) NOT NULL,
	[TopsName] [varchar](50) NOT NULL,
	[TopsPhoto] [nvarchar](500) NOT NULL,
	[TopsType] [nvarchar](50) NOT NULL,
	[TopsColor] [nvarchar](50) NOT NULL,
	[TopsSeason] [nvarchar](50) NOT NULL,
	[TopsOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
