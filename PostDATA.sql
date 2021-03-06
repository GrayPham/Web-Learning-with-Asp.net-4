USE [master]
GO
/****** Object:  Database [POSTDATA]    Script Date: 2/14/2022 9:59:24 PM ******/
CREATE DATABASE [POSTDATA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'POSTDATA', FILENAME = N'D:\Cai dat\SQL server\SQL\MSSQL15.MSSQLSERVER\MSSQL\DATA\POSTDATA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'POSTDATA_log', FILENAME = N'D:\Cai dat\SQL server\SQL\MSSQL15.MSSQLSERVER\MSSQL\DATA\POSTDATA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [POSTDATA] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [POSTDATA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [POSTDATA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [POSTDATA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [POSTDATA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [POSTDATA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [POSTDATA] SET ARITHABORT OFF 
GO
ALTER DATABASE [POSTDATA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [POSTDATA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [POSTDATA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [POSTDATA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [POSTDATA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [POSTDATA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [POSTDATA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [POSTDATA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [POSTDATA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [POSTDATA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [POSTDATA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [POSTDATA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [POSTDATA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [POSTDATA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [POSTDATA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [POSTDATA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [POSTDATA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [POSTDATA] SET RECOVERY FULL 
GO
ALTER DATABASE [POSTDATA] SET  MULTI_USER 
GO
ALTER DATABASE [POSTDATA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [POSTDATA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [POSTDATA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [POSTDATA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [POSTDATA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [POSTDATA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'POSTDATA', N'ON'
GO
ALTER DATABASE [POSTDATA] SET QUERY_STORE = OFF
GO
USE [POSTDATA]
GO
/****** Object:  User [root]    Script Date: 2/14/2022 9:59:24 PM ******/
CREATE USER [root] FOR LOGIN [root] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 2/14/2022 9:59:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](50) NOT NULL,
	[Phone2] [varchar](50) NULL,
	[Fax] [varchar](50) NOT NULL,
	[MapPathLarge] [varchar](max) NOT NULL,
	[MapPathSmall] [varchar](max) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ads]    Script Date: 2/14/2022 9:59:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ads](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ImagePath] [varchar](max) NOT NULL,
	[Link] [varchar](max) NOT NULL,
	[Size] [varchar](50) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeleteDate] [datetime] NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Ads] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2/14/2022 9:59:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 2/14/2022 9:59:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NOT NULL,
	[NameSurName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[CommnentContent] [varchar](250) NOT NULL,
	[isApproved] [bit] NOT NULL,
	[ApprovedUserID] [int] NULL,
	[ApprovedDate] [datetime] NULL,
	[AddDate] [datetime] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NULL,
	[LastUpdateDate] [datetime] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 2/14/2022 9:59:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameSurname] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [varchar](20) NULL,
	[Subject] [varchar](250) NOT NULL,
	[Message] [varchar](max) NOT NULL,
	[isRead] [bit] NOT NULL,
	[ReadUserID] [int] NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NULL,
	[LastUpdateDate] [datetime] NULL,
	[AddDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FavLogoTitle]    Script Date: 2/14/2022 9:59:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavLogoTitle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Fav] [varchar](max) NOT NULL,
	[Logo] [varchar](max) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_FavLogoTitle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log_Table]    Script Date: 2/14/2022 9:59:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[IPAddress] [varchar](20) NOT NULL,
	[ProcessID] [int] NOT NULL,
	[ProcessType] [int] NOT NULL,
	[ProcessCategoryType] [varchar](100) NOT NULL,
	[ProcessDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Log_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meta]    Script Date: 2/14/2022 9:59:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meta](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[MetaContent] [varchar](max) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeleteDate] [datetime] NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Meta] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 2/14/2022 9:59:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](250) NOT NULL,
	[ShortContent] [varchar](250) NOT NULL,
	[PostContent] [varchar](max) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ViewCount] [int] NOT NULL,
	[SeoLink] [varchar](100) NOT NULL,
	[Slider] [bit] NOT NULL,
	[Area1] [bit] NOT NULL,
	[Area2] [bit] NOT NULL,
	[Area3] [bit] NOT NULL,
	[Notification] [bit] NOT NULL,
	[LanguageName] [varchar](50) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[AddUserID] [int] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[isDeleted] [bit] NOT NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostImage]    Script Date: 2/14/2022 9:59:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostImage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NOT NULL,
	[ImagePath] [varchar](max) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PostImage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostTag]    Script Date: 2/14/2022 9:59:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostTag](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NOT NULL,
	[TagContent] [varchar](30) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PostTag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcessType]    Script Date: 2/14/2022 9:59:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProcessName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ProcessType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialMedia]    Script Date: 2/14/2022 9:59:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialMedia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ImagePath] [varchar](max) NOT NULL,
	[Link] [varchar](50) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SocialMedia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_User]    Script Date: 2/14/2022 9:59:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Email] [varchar](30) NULL,
	[NameSurname] [varchar](50) NOT NULL,
	[ImagePath] [varchar](max) NOT NULL,
	[isAdmin] [bit] NOT NULL,
	[DeteleDate] [datetime] NULL,
	[isDeleted] [bit] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video]    Script Date: 2/14/2022 9:59:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VideoPath] [varchar](max) NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[OriginalVideoPath] [varchar](100) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[AddUserID] [int] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[LastUpdateUserID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Video] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([ID], [Address], [Email], [Phone], [Phone2], [Fax], [MapPathLarge], [MapPathSmall], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, N'26 , CuMLan', N'hunghtk456@gmail.com', N'0927148099', N'0927148098', N'0927148097', N'123', N'123', CAST(N'2022-01-27T10:31:50.643' AS DateTime), 1, CAST(N'2022-01-29T23:49:23.493' AS DateTime), 1, CAST(N'2022-01-29T23:49:23.493' AS DateTime))
INSERT [dbo].[Address] ([ID], [Address], [Email], [Phone], [Phone2], [Fax], [MapPathLarge], [MapPathSmall], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, N'26 , CuMLan', N'hunghtk456@gmail.com', N'0927148099', N'0927148098', N'0927148097', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.4808775073097!2d106.77010036474964!3d10.850982542270987!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752b1d766cc827%3A0x83d8049bfec147ec!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBTxrAgUGjhuqFtIEvhu7kgVGh14bqtdCBUcC4gSENN!5e0!3m2!1svi!2s!4v1643253953711!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.4808775073097!2d106.77010036474964!3d10.850982542270987!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752b1d766cc827%3A0x83d8049bfec147ec!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBTxrAgUGjhuqFtIEvhu7kgVGh14bqtdCBUcC4gSENN!5e0!3m2!1svi!2s!4v1643253953711!5m2!1svi!2s" width="270" height="240" style="border:0;" allowfullscreen="" loading="lazy"></iframe>', CAST(N'2022-01-27T10:45:01.970' AS DateTime), 0, NULL, 1, CAST(N'2022-02-03T09:34:04.977' AS DateTime))
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Ads] ON 

INSERT [dbo].[Ads] ([ID], [Name], [ImagePath], [Link], [Size], [AddDate], [isDeleted], [DeleteDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, N'Olala', N'bf0f9203-8e90-4827-a48b-c61371f3e280131943797_222666359353624_8357918975126419137_n.jpg', N'https://www.facebook.com/phamhung2903', N'978x965', CAST(N'2022-01-26T22:20:10.527' AS DateTime), 1, CAST(N'2022-01-29T23:57:40.563' AS DateTime), 1, CAST(N'2022-01-29T23:57:40.563' AS DateTime))
INSERT [dbo].[Ads] ([ID], [Name], [ImagePath], [Link], [Size], [AddDate], [isDeleted], [DeleteDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, N'Manager', N'03526a22-2445-41ed-a4a5-d0f3491be7a3218253881_353042442982681_779135031840633244_n.jpg', N'https://www.facebook.com', N'978x965', CAST(N'2022-02-03T07:49:37.753' AS DateTime), 0, NULL, 1, CAST(N'2022-02-03T07:49:37.753' AS DateTime))
INSERT [dbo].[Ads] ([ID], [Name], [ImagePath], [Link], [Size], [AddDate], [isDeleted], [DeleteDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (3, N'Learning', N'0480703f-f6cd-4bc4-a842-f354a1b8b0f4ads (1).jpeg', N'https://www.facebook.com/phamhung2903', N'2375x1362', CAST(N'2022-02-07T17:12:34.753' AS DateTime), 0, NULL, 1, CAST(N'2022-02-07T17:19:24.223' AS DateTime))
SET IDENTITY_INSERT [dbo].[Ads] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [CategoryName], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, N'Anh Yeu Em (Tam Nhubh)', CAST(N'2022-01-27T23:29:19.010' AS DateTime), 1, CAST(N'2022-02-03T07:50:31.983' AS DateTime), 1, CAST(N'2022-02-03T07:50:31.983' AS DateTime))
INSERT [dbo].[Category] ([ID], [CategoryName], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, N'Anniversaries', CAST(N'2022-01-27T23:30:46.240' AS DateTime), 1, CAST(N'2022-02-03T07:50:38.360' AS DateTime), 1, CAST(N'2022-02-03T07:50:38.360' AS DateTime))
INSERT [dbo].[Category] ([ID], [CategoryName], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (3, N'DeleteCategory', CAST(N'2022-02-02T09:46:21.097' AS DateTime), 1, CAST(N'2022-02-02T09:46:27.947' AS DateTime), 1, CAST(N'2022-02-02T09:46:27.947' AS DateTime))
INSERT [dbo].[Category] ([ID], [CategoryName], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (4, N'DeleteCategory', CAST(N'2022-02-02T09:46:50.460' AS DateTime), 1, CAST(N'2022-02-03T08:59:14.507' AS DateTime), 1, CAST(N'2022-02-03T08:59:14.507' AS DateTime))
INSERT [dbo].[Category] ([ID], [CategoryName], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, N'Programming Languages', CAST(N'2022-02-02T21:47:13.453' AS DateTime), 0, NULL, 1, CAST(N'2022-02-02T21:47:13.453' AS DateTime))
INSERT [dbo].[Category] ([ID], [CategoryName], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (6, N'Game Programming', CAST(N'2022-02-02T21:47:59.757' AS DateTime), 0, NULL, 1, CAST(N'2022-02-02T21:47:59.757' AS DateTime))
INSERT [dbo].[Category] ([ID], [CategoryName], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (7, N'Mobile Programming', CAST(N'2022-02-02T21:48:12.880' AS DateTime), 0, NULL, 1, CAST(N'2022-02-02T21:48:12.880' AS DateTime))
INSERT [dbo].[Category] ([ID], [CategoryName], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (8, N'Databases', CAST(N'2022-02-02T21:48:20.967' AS DateTime), 0, NULL, 1, CAST(N'2022-02-02T21:48:20.967' AS DateTime))
INSERT [dbo].[Category] ([ID], [CategoryName], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (9, N'Web Development', CAST(N'2022-02-02T21:48:37.227' AS DateTime), 0, NULL, 1, CAST(N'2022-02-02T21:48:37.227' AS DateTime))
INSERT [dbo].[Category] ([ID], [CategoryName], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (10, N'Network Security', CAST(N'2022-02-02T21:49:01.233' AS DateTime), 0, NULL, 1, CAST(N'2022-02-02T21:49:01.233' AS DateTime))
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([ID], [PostID], [NameSurName], [Email], [CommnentContent], [isApproved], [ApprovedUserID], [ApprovedDate], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, 3, N'Python Pham', N'hunghtk456@gmail.com', N'try tesst', 1, 1, CAST(N'2022-02-08T17:07:40.213' AS DateTime), CAST(N'2022-02-08T15:01:05.703' AS DateTime), 0, NULL, 1, CAST(N'2022-02-08T17:07:40.213' AS DateTime))
INSERT [dbo].[Comment] ([ID], [PostID], [NameSurName], [Email], [CommnentContent], [isApproved], [ApprovedUserID], [ApprovedDate], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, 8, N'Pham Van Manh Hung', N'hunghtk456@gmail.com', N'Comment success', 1, 1, CAST(N'2022-02-08T20:28:38.560' AS DateTime), CAST(N'2022-02-08T15:09:44.850' AS DateTime), 0, NULL, 1, CAST(N'2022-02-08T20:28:38.560' AS DateTime))
INSERT [dbo].[Comment] ([ID], [PostID], [NameSurName], [Email], [CommnentContent], [isApproved], [ApprovedUserID], [ApprovedDate], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (3, 8, N'Python Pham', N'hunghtk456@gmail.com', N'comment', 0, NULL, NULL, CAST(N'2022-02-08T20:28:13.417' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[Comment] ([ID], [PostID], [NameSurName], [Email], [CommnentContent], [isApproved], [ApprovedUserID], [ApprovedDate], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (4, 8, N'Pham Van Manh Hung', N'hunghtk456@gmail.com', N'Try it', 0, NULL, NULL, CAST(N'2022-02-09T00:38:00.033' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[Comment] ([ID], [PostID], [NameSurName], [Email], [CommnentContent], [isApproved], [ApprovedUserID], [ApprovedDate], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, 8, N'Pham Van Manh Hung', N'hunghtk456@gmail.com', N'Try it 2', 0, NULL, NULL, CAST(N'2022-02-09T00:38:36.267' AS DateTime), 0, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID], [NameSurname], [Email], [Phone], [Subject], [Message], [isRead], [ReadUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate], [AddDate]) VALUES (1, N'Lev', N'hunghtk456@gmail.com', N'0927148099', N'UnreadMessages', N'UnreadMessages', 0, NULL, 1, CAST(N'2022-02-09T00:01:01.820' AS DateTime), 1, CAST(N'2022-02-09T00:01:01.820' AS DateTime), CAST(N'2020-05-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Contact] ([ID], [NameSurname], [Email], [Phone], [Subject], [Message], [isRead], [ReadUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate], [AddDate]) VALUES (2, N'Python Pham', N'hunghtk456@gmail.com', NULL, N'= UserStatic.UserID', N'HÙng
', 0, NULL, 0, NULL, NULL, CAST(N'2022-02-14T09:44:21.157' AS DateTime), CAST(N'2022-02-14T09:44:21.157' AS DateTime))
INSERT [dbo].[Contact] ([ID], [NameSurname], [Email], [Phone], [Subject], [Message], [isRead], [ReadUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate], [AddDate]) VALUES (3, N'Python Pham', N'hunghtk456@gmail.com', NULL, N'= UserStatic.UserID', N'Hungnggngng
', 0, NULL, 0, NULL, NULL, CAST(N'2022-02-14T09:45:54.037' AS DateTime), CAST(N'2022-02-14T09:45:54.037' AS DateTime))
INSERT [dbo].[Contact] ([ID], [NameSurname], [Email], [Phone], [Subject], [Message], [isRead], [ReadUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate], [AddDate]) VALUES (4, N'Python Pham', N'hunghtk456@gmail.com', NULL, N'Message', N'hung pham', 0, NULL, 0, NULL, NULL, CAST(N'2022-02-14T09:58:13.603' AS DateTime), CAST(N'2022-02-14T09:58:13.603' AS DateTime))
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[FavLogoTitle] ON 

INSERT [dbo].[FavLogoTitle] ([ID], [Title], [Fav], [Logo], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, N'Virtual Learning', N'2573969a-deb3-48e5-ba4e-d74e41a7e8efFav.png', N'69054057-e8b3-47b8-947e-e06ff6670f5aLogo.png', CAST(N'2022-01-01T00:00:00.000' AS DateTime), 0, NULL, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[FavLogoTitle] OFF
GO
SET IDENTITY_INSERT [dbo].[Log_Table] ON 

INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (1, 1, N'::1', 12, 1, N'Login', CAST(N'2022-01-24T00:34:17.360' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (2, 1, N'::1', 12, 1, N'Login', CAST(N'2022-01-24T00:56:42.320' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (3, 1, N'::1', 12, 1, N'Login', CAST(N'2022-01-24T00:59:17.433' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (4, 1, N'::1', 12, 1, N'Login', CAST(N'2022-01-24T01:20:39.933' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (5, 1, N'::1', 1, 14, N'Meta', CAST(N'2022-01-24T10:51:42.510' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (6, 1, N'::1', 2, 14, N'Meta', CAST(N'2022-01-24T10:53:53.337' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (7, 1, N'::1', 3, 14, N'Meta', CAST(N'2022-01-24T22:02:04.017' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (8, 1, N'::1', 1, 17, N'Social Media', CAST(N'2022-01-25T10:25:09.047' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (9, 1, N'::1', 2, 17, N'Social Media', CAST(N'2022-01-25T10:25:43.703' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (10, 1, N'::1', 3, 17, N'Social Media', CAST(N'2022-01-25T10:29:28.027' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (11, 1, N'::1', 4, 17, N'Social Media', CAST(N'2022-01-25T10:30:35.250' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (12, 1, N'::1', 5, 17, N'Social Media', CAST(N'2022-01-25T10:33:05.833' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (13, 1, N'::1', 3, 18, N'Social Media', CAST(N'2022-01-25T16:15:05.943' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (14, 1, N'::1', 3, 18, N'Social Media', CAST(N'2022-01-25T16:15:15.243' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (15, 1, N'::1', 4, 18, N'Social Media', CAST(N'2022-01-25T16:15:27.100' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (16, 1, N'::1', 3, 18, N'Social Media', CAST(N'2022-01-25T21:27:33.330' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (17, 1, N'::1', 3, 18, N'Social Media', CAST(N'2022-01-25T21:27:43.370' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (18, 1, N'::1', 3, 18, N'Social Media', CAST(N'2022-01-25T21:29:50.537' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (19, 1, N'::1', 3, 18, N'Social Media', CAST(N'2022-01-25T21:31:15.037' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (20, 1, N'::1', 4, 18, N'Social Media', CAST(N'2022-01-25T21:33:04.713' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (21, 1, N'::1', 3, 18, N'Social Media', CAST(N'2022-01-25T21:33:24.387' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (22, 1, N'127.0.0.1', 3, 20, N'User', CAST(N'2022-01-26T00:17:28.477' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (23, 1, N'::1', 4, 20, N'User', CAST(N'2022-01-26T00:19:06.573' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (24, 1, N'::1', 2, 21, N'User', CAST(N'2022-01-26T16:16:54.497' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (25, 1, N'::1', 2, 21, N'User', CAST(N'2022-01-26T16:16:58.300' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (26, 1, N'::1', 2, 21, N'User', CAST(N'2022-01-26T16:17:11.487' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (27, 1, N'::1', 1, 21, N'User', CAST(N'2022-01-26T16:18:26.553' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (28, 1, N'::1', 5, 20, N'User', CAST(N'2022-01-26T16:22:01.990' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (29, 1, N'::1', 1, 5, N'Ads', CAST(N'2022-01-26T22:20:11.170' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (30, 1, N'::1', 1, 2, N'Ads', CAST(N'2022-01-27T00:39:34.310' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (31, 1, N'::1', 1, 12, N'IconFavTitle', CAST(N'2022-01-27T01:23:57.610' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (32, 1, N'::1', 1, 12, N'IconFavTitle', CAST(N'2022-01-27T01:27:26.263' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (33, 1, N'::1', 1, 12, N'IconFavTitle', CAST(N'2022-01-27T01:32:07.030' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (34, 1, N'::1', 1, 12, N'IconFavTitle', CAST(N'2022-01-27T01:49:27.063' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (35, 1, N'::1', 1, 12, N'IconFavTitle', CAST(N'2022-01-27T01:50:44.823' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (36, 1, N'::1', 1, 2, N'Address', CAST(N'2022-01-27T10:31:51.043' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (37, 1, N'::1', 2, 2, N'Address', CAST(N'2022-01-27T10:45:02.000' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (38, 1, N'::1', 1, 3, N'Address', CAST(N'2022-01-27T11:08:43.440' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (39, 1, N'::1', 1, 23, N'Video', CAST(N'2022-01-27T16:16:19.423' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (40, 1, N'::1', 1, 24, N'Video', CAST(N'2022-01-27T22:48:58.813' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (41, 1, N'::1', 1, 24, N'Video', CAST(N'2022-01-27T22:50:28.877' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (42, 1, N'::1', 1, 8, N'Category', CAST(N'2022-01-27T23:29:19.330' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (43, 1, N'::1', 2, 8, N'Category', CAST(N'2022-01-27T23:30:46.490' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (44, 1, N'::1', 1, 9, N'Category', CAST(N'2022-01-28T00:32:54.080' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (45, 1, N'::1', 1, 26, N'Post', CAST(N'2022-01-28T22:36:39.810' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (46, 1, N'::1', 1, 26, N'Image', CAST(N'2022-01-28T22:36:39.847' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (47, 1, N'::1', 1, 32, N'Tag', CAST(N'2022-01-28T22:36:39.867' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (48, 1, N'::1', 1, 27, N'Post', CAST(N'2022-01-28T23:05:38.207' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (49, 1, N'::1', 2, 26, N'Image', CAST(N'2022-01-28T23:05:38.233' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (50, 1, N'::1', 3, 26, N'Image', CAST(N'2022-01-28T23:05:38.240' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (51, 1, N'::1', 4, 26, N'Image', CAST(N'2022-01-28T23:05:38.247' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (52, 1, N'::1', 5, 26, N'Image', CAST(N'2022-01-28T23:05:38.253' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (53, 1, N'::1', 6, 26, N'Image', CAST(N'2022-01-28T23:05:38.260' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (54, 1, N'::1', 7, 26, N'Image', CAST(N'2022-01-28T23:05:38.270' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (55, 1, N'::1', 2, 32, N'Tag', CAST(N'2022-01-28T23:05:38.290' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (56, 1, N'::1', 3, 32, N'Tag', CAST(N'2022-01-28T23:05:38.300' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (57, 1, N'::1', 1, 27, N'Post', CAST(N'2022-01-28T23:06:06.590' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (58, 1, N'::1', 4, 32, N'Tag', CAST(N'2022-01-28T23:06:06.607' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (59, 1, N'::1', 5, 32, N'Tag', CAST(N'2022-01-28T23:06:06.613' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (60, 1, N'::1', 1, 16, N'Meta', CAST(N'2022-01-29T01:50:46.233' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (61, 1, N'::1', 3, 16, N'Meta', CAST(N'2022-01-29T22:59:36.377' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (62, 1, N'::1', 1, 4, N'Address', CAST(N'2022-01-29T23:49:23.513' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (63, 1, N'::1', 1, 7, N'Ads', CAST(N'2022-01-29T23:57:40.583' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (64, 1, N'::1', 6, 28, N'Post', CAST(N'2022-01-30T00:22:01.563' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (65, 1, N'::1', 4, 28, N'Post', CAST(N'2022-01-30T00:22:11.453' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (66, 1, N'::1', 1, 28, N'Post', CAST(N'2022-01-30T00:22:15.480' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (67, 1, N'::1', 1, 28, N'Post', CAST(N'2022-01-30T00:49:46.680' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (68, 1, N'::1', 2, 22, N'User', CAST(N'2022-01-30T01:04:18.203' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (69, 1, N'::1', 3, 8, N'Category', CAST(N'2022-02-02T09:46:21.130' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (70, 1, N'::1', 3, 10, N'Category', CAST(N'2022-02-02T09:46:27.983' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (71, 1, N'::1', 4, 8, N'Category', CAST(N'2022-02-02T09:46:50.463' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (72, 1, N'::1', 2, 26, N'Post', CAST(N'2022-02-02T09:47:51.837' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (73, 1, N'::1', 8, 26, N'Image', CAST(N'2022-02-02T09:47:51.857' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (74, 1, N'::1', 6, 32, N'Tag', CAST(N'2022-02-02T09:47:51.877' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (75, 1, N'::1', 7, 32, N'Tag', CAST(N'2022-02-02T09:47:51.887' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (76, 1, N'::1', 8, 32, N'Tag', CAST(N'2022-02-02T09:47:51.893' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (77, 1, N'::1', 12, 1, N'Login', CAST(N'2022-02-02T20:19:58.207' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (78, 1, N'::1', 12, 1, N'Login', CAST(N'2022-02-02T20:21:21.230' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (79, 1, N'::1', 3, 21, N'User', CAST(N'2022-02-02T20:25:12.777' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (80, 1, N'::1', 4, 21, N'User', CAST(N'2022-02-02T20:25:31.237' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (81, 1, N'::1', 6, 20, N'User', CAST(N'2022-02-02T20:27:24.370' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (82, 1, N'::1', 6, 21, N'User', CAST(N'2022-02-02T20:27:33.380' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (83, 1, N'::1', 6, 21, N'User', CAST(N'2022-02-02T20:27:36.837' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (84, 1, N'::1', 6, 21, N'User', CAST(N'2022-02-02T20:29:05.647' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (85, 5, N'::1', 6, 21, N'User', CAST(N'2022-02-02T20:35:12.920' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (86, 5, N'::1', 5, 21, N'User', CAST(N'2022-02-02T20:37:09.140' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (87, 1, N'::1', 12, 1, N'Login', CAST(N'2022-02-02T21:26:58.537' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (88, 1, N'::1', 12, 1, N'Login', CAST(N'2022-02-02T21:27:34.370' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (89, 1, N'::1', 12, 1, N'Login', CAST(N'2022-02-02T21:33:20.313' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (90, 1, N'::1', 5, 8, N'Category', CAST(N'2022-02-02T21:47:13.480' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (91, 1, N'::1', 6, 8, N'Category', CAST(N'2022-02-02T21:47:59.763' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (92, 1, N'::1', 7, 8, N'Category', CAST(N'2022-02-02T21:48:12.887' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (93, 1, N'::1', 8, 8, N'Category', CAST(N'2022-02-02T21:48:20.970' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (94, 1, N'::1', 9, 8, N'Category', CAST(N'2022-02-02T21:48:37.233' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (95, 1, N'::1', 10, 8, N'Category', CAST(N'2022-02-02T21:49:01.247' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (96, 1, N'::1', 3, 26, N'Post', CAST(N'2022-02-02T21:54:04.313' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (97, 1, N'::1', 9, 26, N'Image', CAST(N'2022-02-02T21:54:04.333' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (98, 1, N'::1', 9, 32, N'Tag', CAST(N'2022-02-02T21:54:04.357' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (99, 1, N'::1', 10, 32, N'Tag', CAST(N'2022-02-02T21:54:04.360' AS DateTime))
GO
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (100, 1, N'::1', 11, 32, N'Tag', CAST(N'2022-02-02T21:54:04.367' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (101, 1, N'::1', 4, 26, N'Post', CAST(N'2022-02-02T22:10:48.980' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (102, 1, N'::1', 10, 26, N'Image', CAST(N'2022-02-02T22:10:49.010' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (103, 1, N'::1', 12, 32, N'Tag', CAST(N'2022-02-02T22:10:49.027' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (104, 1, N'::1', 5, 26, N'Post', CAST(N'2022-02-02T22:14:31.307' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (105, 1, N'::1', 11, 26, N'Image', CAST(N'2022-02-02T22:14:31.337' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (106, 1, N'::1', 13, 32, N'Tag', CAST(N'2022-02-02T22:14:31.360' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (107, 1, N'::1', 14, 32, N'Tag', CAST(N'2022-02-02T22:14:31.367' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (108, 1, N'::1', 6, 26, N'Post', CAST(N'2022-02-02T22:16:48.413' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (109, 1, N'::1', 12, 26, N'Image', CAST(N'2022-02-02T22:16:48.443' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (110, 1, N'::1', 15, 32, N'Tag', CAST(N'2022-02-02T22:16:48.460' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (111, 1, N'::1', 16, 32, N'Tag', CAST(N'2022-02-02T22:16:48.467' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (112, 1, N'::1', 17, 32, N'Tag', CAST(N'2022-02-02T22:16:48.473' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (113, 1, N'127.0.0.1', 6, 28, N'Post', CAST(N'2022-02-02T22:20:16.050' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (114, 1, N'127.0.0.1', 5, 28, N'Post', CAST(N'2022-02-02T22:20:18.563' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (115, 1, N'::1', 7, 26, N'Post', CAST(N'2022-02-02T22:22:02.233' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (116, 1, N'::1', 13, 26, N'Image', CAST(N'2022-02-02T22:22:02.263' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (117, 1, N'::1', 8, 26, N'Post', CAST(N'2022-02-02T22:23:08.073' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (118, 1, N'::1', 14, 26, N'Image', CAST(N'2022-02-02T22:23:08.103' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (119, 1, N'::1', 18, 32, N'Tag', CAST(N'2022-02-02T22:23:08.117' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (120, 1, N'::1', 19, 32, N'Tag', CAST(N'2022-02-02T22:23:08.123' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (121, 1, N'::1', 20, 32, N'Tag', CAST(N'2022-02-02T22:23:08.133' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (122, 1, N'::1', 2, 5, N'Ads', CAST(N'2022-02-03T07:49:37.803' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (123, 1, N'::1', 2, 23, N'Video', CAST(N'2022-02-03T07:50:21.580' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (124, 1, N'::1', 1, 10, N'Category', CAST(N'2022-02-03T07:50:32.047' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (125, 1, N'::1', 2, 10, N'Category', CAST(N'2022-02-03T07:50:38.367' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (126, 1, N'::1', 1, 21, N'User', CAST(N'2022-02-03T07:51:05.263' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (127, 1, N'::1', 3, 18, N'Social Media', CAST(N'2022-02-03T08:27:56.733' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (128, 1, N'::1', 4, 18, N'Social Media', CAST(N'2022-02-03T08:28:22.727' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (129, 1, N'::1', 5, 18, N'Social Media', CAST(N'2022-02-03T08:28:36.577' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (130, 1, N'::1', 6, 17, N'Social Media', CAST(N'2022-02-03T08:28:56.013' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (131, 1, N'::1', 7, 17, N'Social Media', CAST(N'2022-02-03T08:29:13.573' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (132, 1, N'::1', 8, 17, N'Social Media', CAST(N'2022-02-03T08:29:31.757' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (133, 1, N'::1', 8, 18, N'Social Media', CAST(N'2022-02-03T08:44:09.853' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (134, 1, N'::1', 8, 18, N'Social Media', CAST(N'2022-02-03T08:45:24.573' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (135, 1, N'::1', 4, 18, N'Social Media', CAST(N'2022-02-03T08:54:45.863' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (136, 1, N'::1', 5, 18, N'Social Media', CAST(N'2022-02-03T08:55:13.433' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (137, 1, N'::1', 6, 18, N'Social Media', CAST(N'2022-02-03T08:56:11.907' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (138, 1, N'::1', 7, 18, N'Social Media', CAST(N'2022-02-03T08:56:31.643' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (139, 1, N'::1', 7, 18, N'Social Media', CAST(N'2022-02-03T08:56:47.927' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (140, 1, N'::1', 8, 18, N'Social Media', CAST(N'2022-02-03T08:57:53.170' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (141, 1, N'::1', 4, 10, N'Category', CAST(N'2022-02-03T08:59:14.567' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (142, 1, N'::1', 2, 28, N'Post', CAST(N'2022-02-03T08:59:14.643' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (143, 1, N'::1', 2, 28, N'Post', CAST(N'2022-02-03T08:59:14.647' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (144, 1, N'::1', 1, 12, N'IconFavTitle', CAST(N'2022-02-03T09:14:41.793' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (145, 1, N'::1', 1, 21, N'User', CAST(N'2022-02-03T09:15:45.500' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (146, 1, N'::1', 2, 3, N'Address', CAST(N'2022-02-03T09:34:05.000' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (147, 1, N'::1', 3, 27, N'Post', CAST(N'2022-02-03T09:54:35.847' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (148, 1, N'::1', 15, 26, N'Image', CAST(N'2022-02-03T09:54:35.877' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (149, 1, N'::1', 21, 32, N'Tag', CAST(N'2022-02-03T09:54:35.900' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (150, 1, N'::1', 22, 32, N'Tag', CAST(N'2022-02-03T09:54:35.907' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (151, 1, N'::1', 23, 32, N'Tag', CAST(N'2022-02-03T09:54:35.913' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (152, 1, N'::1', 24, 32, N'Tag', CAST(N'2022-02-03T09:54:35.917' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (153, 1, N'::1', 4, 27, N'Post', CAST(N'2022-02-03T10:00:19.837' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (154, 1, N'::1', 25, 32, N'Tag', CAST(N'2022-02-03T10:00:19.870' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (155, 1, N'::1', 26, 32, N'Tag', CAST(N'2022-02-03T10:00:19.877' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (156, 1, N'::1', 4, 27, N'Post', CAST(N'2022-02-03T10:00:26.980' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (157, 1, N'::1', 27, 32, N'Tag', CAST(N'2022-02-03T10:00:26.990' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (158, 1, N'::1', 28, 32, N'Tag', CAST(N'2022-02-03T10:00:26.997' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (159, 1, N'::1', 3, 5, N'Ads', CAST(N'2022-02-07T17:12:34.790' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (160, 1, N'::1', 3, 2, N'Ads', CAST(N'2022-02-07T17:16:25.493' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (161, 1, N'::1', 3, 2, N'Ads', CAST(N'2022-02-07T17:19:24.240' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (162, 1, N'::1', 12, 1, N'Login', CAST(N'2022-02-08T17:06:28.900' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (163, 1, N'::1', 12, 1, N'Login', CAST(N'2022-02-08T17:07:34.767' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (164, 1, N'::1', 1, 35, N'Comment', CAST(N'2022-02-08T17:07:40.227' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (165, 1, N'::1', 12, 1, N'Login', CAST(N'2022-02-08T20:21:49.653' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (166, 1, N'::1', 2, 35, N'Comment', CAST(N'2022-02-08T20:28:38.573' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (167, 1, N'::1', 12, 1, N'Login', CAST(N'2022-02-09T00:00:01.700' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (168, 1, N'::1', 1, 37, N'Contact', CAST(N'2022-02-09T00:00:16.390' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (169, 1, N'::1', 1, 38, N'Contact', CAST(N'2022-02-09T00:01:01.827' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (170, 1, N'::1', 12, 1, N'Login', CAST(N'2022-02-09T00:12:03.990' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (171, 1, N'::1', 12, 1, N'Login', CAST(N'2022-02-09T00:36:53.757' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (172, 1, N'::1', 12, 1, N'Login', CAST(N'2022-02-09T00:44:57.813' AS DateTime))
INSERT [dbo].[Log_Table] ([ID], [UserID], [IPAddress], [ProcessID], [ProcessType], [ProcessCategoryType], [ProcessDate]) VALUES (173, 1, N'::1', 12, 1, N'Login', CAST(N'2022-02-14T09:46:52.563' AS DateTime))
SET IDENTITY_INSERT [dbo].[Log_Table] OFF
GO
SET IDENTITY_INSERT [dbo].[Meta] ON 

INSERT [dbo].[Meta] ([ID], [Name], [MetaContent], [AddDate], [isDeleted], [DeleteDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, N'Description', N'HUng pham', CAST(N'2022-01-24T10:51:42.187' AS DateTime), 1, CAST(N'2022-01-29T01:50:46.213' AS DateTime), 1, CAST(N'2022-01-29T01:50:46.213' AS DateTime))
INSERT [dbo].[Meta] ([ID], [Name], [MetaContent], [AddDate], [isDeleted], [DeleteDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, N'Author', N'Tam Nhu', CAST(N'2022-01-24T10:53:52.767' AS DateTime), 0, NULL, 1, CAST(N'2022-01-24T10:53:52.767' AS DateTime))
INSERT [dbo].[Meta] ([ID], [Name], [MetaContent], [AddDate], [isDeleted], [DeleteDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (3, N'Description', N'spkt', CAST(N'2022-01-24T22:02:03.780' AS DateTime), 1, CAST(N'2022-01-29T22:59:36.333' AS DateTime), 1, CAST(N'2022-01-29T22:59:36.333' AS DateTime))
SET IDENTITY_INSERT [dbo].[Meta] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [DeletedDate], [isDeleted], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, N'Tang Tâm Nhu', N'123546', N'<p>Anh y&ecirc;u em&nbsp;</p>
', 2, 1, N'tang-tâm-nhu', 0, 1, 0, 0, 0, N'Vietnamese', CAST(N'2022-01-28T22:36:39.737' AS DateTime), 1, CAST(N'2022-01-30T00:49:46.597' AS DateTime), 1, 1, CAST(N'2022-01-30T00:49:46.597' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [DeletedDate], [isDeleted], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, N'Tang Tâm Nhu', N'0927148099', N'<p>C?c cung ng?c ngh?ch</p>
', 4, 3, N'tang-tâm-nhu', 1, 1, 1, 0, 0, N'English', CAST(N'2022-02-02T09:47:51.810' AS DateTime), 1, CAST(N'2022-02-03T08:59:14.587' AS DateTime), 1, 1, CAST(N'2022-02-03T08:59:14.587' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [DeletedDate], [isDeleted], [LastUpdateUserID], [LastUpdateDate]) VALUES (3, N'Node.JS For Beginners', N'Dive into Nodejs, learn rapidly growing web server technology, Nodejs & understand how NodeJS works with Node course!', N'<h4>Course Details</h4>

<p>Hello there,</p>

<p>Welcome to&nbsp;<strong>NodeJS For Beginners</strong>&nbsp;course.<br />
<br />
<strong>Node.js</strong>&nbsp;is an open-source, cross-platform, back-end, JavaScript runtime environment that executes JavaScript code outside a web browser.<br />
By learning growing web server technology, NodeJS, you can improve your skills, get a new job and you can build powerful, robust web applications.<br />
<br />
<strong>What Node.JS can do?</strong></p>

<ul>
	<li>
	<p>Nodejs can generate the dynamic page content</p>
	</li>
	<li>
	<p>Nodejs can create, open, read, write, delete, and close files on the server</p>
	</li>
	<li>
	<p>Nodejs can collect form data</p>
	</li>
	<li>
	<p>Nodejs can add, delete, modify data in your database</p>
	</li>
</ul>

<p>This course is designed to be a comprehensive approach to Node JS. It is really easy to learn Node JS. That is being said, no prior knowledge or experience is required. At the end of this course, you will get the basics of Node JS.</p>

<p>In this course, we&#39;ll look at how the C++ written V8 Javascript engine works and how NodeJS uses it to expand the abilities of Javascript.</p>

<p><strong>In this course;</strong></p>

<p>You&#39;ll learn how asynchronous code works in Node and the Node event loop, as well as how to use the event emitter, streams, buffers, pipes, and work with files. We&#39;ll see how that leads to building a web server in Node with hands-on examples.<br />
With my Node JS course, you will learn rapidly growing web server technology, and become a Node developer which is among the highest-paid in the industry.</p>

<p><strong>You&#39;ll also get:</strong></p>

<ul>
	<li>
	<p>Lifetime Access to The Course</p>
	</li>
	<li>
	<p>Fast &amp; Friendly Support in the Q&amp;A section</p>
	</li>
	<li>
	<p>Udemy Certificate of Completion Ready for Download</p>
	</li>
</ul>

<p>Dive in now&nbsp;<strong>NodeJS For Beginners&nbsp;</strong>course</p>

<p>We offer&nbsp;<strong>full support</strong>, answering any questions.</p>

<p>See you in the course!</p>

<h4>Requirements</h4>

<ul>
	<li>&nbsp;Ability to install software on your computer</li>
	<li>&nbsp;Basic HTML knowledge</li>
	<li>&nbsp;Basic understanding of JavaScript</li>
	<li>&nbsp;Desire to learn NodeJS, Node, Node JS</li>
	<li>&nbsp;Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
	<li>&nbsp;LIFETIME ACCESS, course updates, new content, anytime, anywhere, on any device.</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>&nbsp;Dive into Nodejs, learn rapidy growing web server technology, Nodejs &amp; understand how NodeJS works with Node course!</li>
	<li>&nbsp;By learning growing web server technology, Nodejs, you can improve your skills, get a new job and you can build powerful, robust web applications.</li>
	<li>&nbsp;Learn the key concepts of the NodeJS</li>
	<li>&nbsp;Learn to create servers, and understand how it works</li>
	<li>&nbsp;Understand and use the Event Emitter</li>
	<li>&nbsp;Understand Buffers, Streams, and Pipes</li>
	<li>&nbsp;Learn routing with NodeJS</li>
	<li>&nbsp;Nodejs is essential to developing real-time applications in JavaScript, and has been instrumental in the development of websites like eBay and PayPal.</li>
	<li>&nbsp;Node is designed around an event loop, which allows for easy management of asynchronous functions. This makes it a popular environment for modern developers</li>
	<li>&nbsp;NodeJs is a server environment built for fast and easily scalable network applications.</li>
	<li>&nbsp;NodeJs is open-source, meaning it&rsquo;s a free code for all developers.</li>
	<li>&nbsp;NodeJS is a Javascript library for full stack web development, backend web development</li>
	<li>&nbsp;Node is backend side, on the other hand react is front end web development side</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>&nbsp;Anyone looking to build a career as a NodeJS developer</li>
	<li>&nbsp;Anyone interested in NodeJS</li>
	<li>&nbsp;Developers new to NodeJS</li>
</ul>
', 5, 20, N'node-js-for-beginners', 0, 1, 1, 0, 0, N'English', CAST(N'2022-02-02T21:54:04.283' AS DateTime), 1, NULL, 0, 1, CAST(N'2022-02-03T09:54:35.820' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [DeletedDate], [isDeleted], [LastUpdateUserID], [LastUpdateDate]) VALUES (4, N'Full Android Course with 14 Real Apps - 42 Hours', N'This is the most comprehensive Android app development course. Enroll & learn Android development with hands-on examples', N'<h4>Course Details</h4>

<p>Hi there,</p>

<p>Welcome to&nbsp;<strong>Full Android Course with 14 Real Apps - 42 Hours</strong>&nbsp;course.</p>

<p>Android is the most used operating system on the planet. In fact, it&rsquo;s almost omnipresent in the mobile ecosystem. With millions of Android devices in use, and an incredible 500,000+ new Android devices activated daily, the popularity of Android applications is increasing exponentially - and with it, the demand for Android application developers is soaring.<br />
<br />
If you&#39;re interested in developing new and innovative applications for the world&rsquo;s #1 mobile platform, this course is a perfect match for you.</p>

<p>This&nbsp;<strong>Full Android Course with 14 Real Apps - 42 Hours</strong>&nbsp;course will take you from beginner to advance level.</p>

<p>Our passion is to carry our experience with the right examples to anyone who will enroll in this course. In this course, you will learn Android app development step-by-step. While doing kind of show and tell in our lectures we are also explaining whys. During the lectures, we will be practicing with more than 10 examples and we will be learning to build and publish 14 major apps.</p>

<p><strong><em>What&rsquo;s important</em></strong></p>

<p>This course is expertly designed to teach everyone from complete beginners, right through to professionals as a refresher.</p>

<p><strong>In this course you will learn;</strong></p>

<p>? Java Environment Setup</p>

<p>? Java Development Environment</p>

<p>? Java Syntax</p>

<p>? Java Object Oriented Concept</p>

<p>? Java Strings</p>

<p>? Android Environment Setup - Download, install and configure the necessary software</p>

<p>? Creating a New Project</p>

<p>? Android Studio</p>

<p>? Android Components</p>

<p>? Components and Life Cycles</p>

<p>? Publishing Your App on Google Play and more</p>

<p>? You will reinforce your existing android information by applying.</p>

<p>? You will learn to develop games using Android Studio</p>

<p>? You will learn to develop applications by getting real-time data from the Internet.</p>

<p>? Using SQLite database, you will understand how to work with external databases</p>

<p>? You will be able to develop applications with powerful architecture using Architecture Components (ViewModel, LiveData, Room).</p>

<p>? You will learn how to make a messaging app using Firebase.</p>

<p>? With Firebase, you will be able to develop real-time applications</p>

<p>? You will be able to develop user-friendly interfaces using Material Design principles and components.</p>

<p>? You will be able to develop modern Android apps.</p>

<p>&nbsp;</p>

<p><strong>Why would you want to take this course?</strong></p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy&#39;s seasoned instructors&#39; expertise.</p>

<p>&nbsp;</p>

<p><strong>This course will take you from a beginner to a more experienced level.</strong></p>

<p>We will take you from beginner to advance level. You will learn&nbsp;<strong>step-by-step with hands-on demonstrations</strong>.</p>

<p><strong><em>Fresh Content</em></strong></p>

<p>It&rsquo;s no secret how technology is advancing at a rapid rate. New tools are released every day, Google updates Android and it&rsquo;s crucial to stay on top of the latest knowledge. With this course, you will always have a chance to follow the latest trends.</p>

<p><strong>You&#39;ll also get:</strong></p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>Dive in now&nbsp;<strong>Full Android Course with 14 Real Apps - 42 Hours</strong>&nbsp;course</p>

<p>We offer&nbsp;<strong>full support</strong>, answering any questions.</p>

<h4>Requirements</h4>

<ul>
	<li>&nbsp;No prior knowledge is required</li>
	<li>&nbsp;No coding knowledge required</li>
	<li>&nbsp;To have basic Java programming knowledge</li>
	<li>&nbsp;Having a working computer and internet</li>
	<li>&nbsp;Watching the course videos completely, to the end and in order</li>
	<li>&nbsp;Determination to learn and patience</li>
	<li>&nbsp;Desire to learn Android Application Development</li>
	<li>&nbsp;Nothing else! It&rsquo;s just you, your computer and your ambition to get started today</li>
</ul>

<h4>What you will learn</h4>

<ul>
	<li>&nbsp;Android</li>
	<li>&nbsp;This is the most comprehensive Android course. Learn Android app development with practices and build your android development skills.</li>
	<li>&nbsp;Due to its open-source nature, working with the Android platform necessitates constantly learning about the Android platform. My Android development course on Udemy keeps you ahead of this learning curve with hands-on lectures on Android operating systems and more.</li>
	<li>&nbsp;Learn the most used operating system on the planet</li>
	<li>&nbsp;Learn the new version of Android. Here it is: Android 11 (Android R)</li>
	<li>&nbsp;Learn Publishing Android App on Google Play</li>
	<li>&nbsp;Start from scratch and become a Professional Android App Developer</li>
	<li>&nbsp;In this course, we will build 14 different real Android Apps from scratch together</li>
	<li>&nbsp;Android applications&#39; levels in this course are from easy to difficult</li>
	<li>&nbsp;Learn how to develop modern Android Apps in the simplest way and improve your self-confidence</li>
	<li>&nbsp;You will reinforce your existing Android information by applying</li>
	<li>&nbsp;Using SQLite database, you will understand how to work with external databases</li>
	<li>&nbsp;You will be able to develop Android applications with powerful architecture using Architecture Components (ViewModel, LiveData, Room).</li>
	<li>&nbsp;With Firebase, you will be able to develop real-time applications</li>
	<li>&nbsp;You will learn how to make a messaging app using Firebase</li>
	<li>&nbsp;You will be able to develop user-friendly interfaces using Material Design principles and components</li>
	<li>&nbsp;You will be able to develop modern Android apps</li>
	<li>&nbsp;This course is built to help beginners to start making applications in Android</li>
	<li>&nbsp;You will learn to develop games using Java Programming Language and Android Studio</li>
	<li>&nbsp;You will learn to develop applications by getting real-time data from the Internet</li>
	<li>&nbsp;You will have 14 different applications that you will publish on Google Play</li>
	<li>&nbsp;You can enroll this course if you want to develop advanced Android Applications using web integrated, online database.</li>
	<li>&nbsp;android app development</li>
	<li>&nbsp;android development</li>
	<li>&nbsp;android studio</li>
	<li>&nbsp;Learn the key concepts of the Git</li>
	<li>&nbsp;Learn the entire Git workflow</li>
	<li>&nbsp;Learn create branches, resolve conflicts, undoing things etc.</li>
	<li>&nbsp;Create and fork repositories on GitHub and push changes back after locally</li>
	<li>&nbsp;Learn how to collaborate a GitHub project</li>
	<li>&nbsp;Android 11</li>
</ul>

<h4>Who should attend</h4>

<ul>
	<li>&nbsp;Those who want to develop an Android mobile application</li>
	<li>&nbsp;Who wants to improve their existing android knowledge</li>
	<li>&nbsp;Those who want to develop applications using the Java programming language</li>
	<li>&nbsp;Those who want to develop modern applications and applications with a user-friendly interface</li>
	<li>&nbsp;Those who want to develop applications with Firebase Real-Time Database, Architectural Components (View Model, Live Data, Room) and SQLite</li>
	<li>&nbsp;Those who are curious about the Android Mobile game World</li>
	<li>&nbsp;Those who want to improve their application development skills using Android studio and java programming language</li>
	<li>&nbsp;A total beginner, with a curious mind and wants to be an app developer</li>
	<li>&nbsp;Anyone planning a job transformation and wants to become an Android developer</li>
</ul>
', 7, 16, N'full-android-course-with-14-real-apps-42-hours', 1, 1, 1, 0, 0, N'English', CAST(N'2022-02-02T22:10:48.943' AS DateTime), 1, NULL, 0, 1, CAST(N'2022-02-03T10:00:26.973' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [DeletedDate], [isDeleted], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, N'Home network', N'Aprenda como hackear o Wi-Fi com o teste de vulnerabilidade no mundo real! WEP, WPA / WPA2, quebra de WPS, reconheciment', N'<p>Home network</p>
', 10, 3, N'home-network', 0, 1, 0, 1, 0, N'English', CAST(N'2022-02-02T22:14:31.263' AS DateTime), 1, CAST(N'2022-02-02T22:20:18.557' AS DateTime), 1, 1, CAST(N'2022-02-02T22:20:18.557' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [DeletedDate], [isDeleted], [LastUpdateUserID], [LastUpdateDate]) VALUES (6, N'Home network', N'Home network', N'<p>Home network</p>
', 10, 5, N'home-network', 1, 0, 0, 1, 0, N'English', CAST(N'2022-02-02T22:16:48.377' AS DateTime), 1, CAST(N'2022-02-02T22:20:15.987' AS DateTime), 1, 1, CAST(N'2022-02-02T22:20:15.987' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [DeletedDate], [isDeleted], [LastUpdateUserID], [LastUpdateDate]) VALUES (7, N'Full-android-course', N'Aprenda como hackear o Wi-Fi com o teste de vulnerabilidade no mundo real! WEP, WPA / WPA2, quebra de WPS, reconheciment', N'<p>Course Details<br />
Hi there,</p>

<p>Welcome to Full Android Course with 14 Real Apps - 42 Hours course.</p>

<p>Android is the most used operating system on the planet. In fact, it&rsquo;s almost omnipresent in the mobile ecosystem. With millions of Android devices in use, and an incredible 500,000+ new Android devices activated daily, the popularity of Android applications is increasing exponentially - and with it, the demand for Android application developers is soaring.</p>

<p>If you&#39;re interested in developing new and innovative applications for the world&rsquo;s #1 mobile platform, this course is a perfect match for you.</p>

<p>This Full Android Course with 14 Real Apps - 42 Hours course will take you from beginner to advance level.</p>

<p>Our passion is to carry our experience with the right examples to anyone who will enroll in this course. In this course, you will learn Android app development step-by-step. While doing kind of show and tell in our lectures we are also explaining whys. During the lectures, we will be practicing with more than 10 examples and we will be learning to build and publish 14 major apps.</p>

<p>What&rsquo;s important</p>

<p>This course is expertly designed to teach everyone from complete beginners, right through to professionals as a refresher.</p>

<p>In this course you will learn;</p>

<p>? Java Environment Setup</p>

<p>? Java Development Environment</p>

<p>? Java Syntax</p>

<p>? Java Object Oriented Concept</p>

<p>? Java Strings</p>

<p>? Android Environment Setup - Download, install and configure the necessary software</p>

<p>? Creating a New Project</p>

<p>? Android Studio</p>

<p>? Android Components</p>

<p>? Components and Life Cycles</p>

<p>? Publishing Your App on Google Play and more</p>

<p>? You will reinforce your existing android information by applying.</p>

<p>? You will learn to develop games using Android Studio</p>

<p>? You will learn to develop applications by getting real-time data from the Internet.</p>

<p>? Using SQLite database, you will understand how to work with external databases</p>

<p>? You will be able to develop applications with powerful architecture using Architecture Components (ViewModel, LiveData, Room).</p>

<p>? You will learn how to make a messaging app using Firebase.</p>

<p>? With Firebase, you will be able to develop real-time applications</p>

<p>? You will be able to develop user-friendly interfaces using Material Design principles and components.</p>

<p>? You will be able to develop modern Android apps.</p>

<p>Why would you want to take this course?</p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy&#39;s seasoned instructors&#39; expertise.</p>

<p>This course will take you from a beginner to a more experienced level.</p>

<p>We will take you from beginner to advance level. You will learn step-by-step with hands-on demonstrations.</p>

<p>Fresh Content</p>

<p>It&rsquo;s no secret how technology is advancing at a rapid rate. New tools are released every day, Google updates Android and it&rsquo;s crucial to stay on top of the latest knowledge. With this course, you will always have a chance to follow the latest trends.</p>

<p>You&#39;ll also get:</p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>Dive in now Full Android Course with 14 Real Apps - 42 Hours course</p>

<p>We offer full support, answering any questions.</p>

<p>Requirements<br />
&nbsp;No prior knowledge is required<br />
&nbsp;No coding knowledge required<br />
&nbsp;To have basic Java programming knowledge<br />
&nbsp;Having a working computer and internet<br />
&nbsp;Watching the course videos completely, to the end and in order<br />
&nbsp;Determination to learn and patience<br />
&nbsp;Desire to learn Android Application Development<br />
&nbsp;Nothing else! It&rsquo;s just you, your computer and your ambition to get started today<br />
What you will learn<br />
&nbsp;Android<br />
&nbsp;This is the most comprehensive Android course. Learn Android app development with practices and build your android development skills.<br />
&nbsp;Due to its open-source nature, working with the Android platform necessitates constantly learning about the Android platform. My Android development course on Udemy keeps you ahead of this learning curve with hands-on lectures on Android operating systems and more.<br />
&nbsp;Learn the most used operating system on the planet<br />
&nbsp;Learn the new version of Android. Here it is: Android 11 (Android R)<br />
&nbsp;Learn Publishing Android App on Google Play<br />
&nbsp;Start from scratch and become a Professional Android App Developer<br />
&nbsp;In this course, we will build 14 different real Android Apps from scratch together<br />
&nbsp;Android applications&#39; levels in this course are from easy to difficult<br />
&nbsp;Learn how to develop modern Android Apps in the simplest way and improve your self-confidence<br />
&nbsp;You will reinforce your existing Android information by applying<br />
&nbsp;Using SQLite database, you will understand how to work with external databases<br />
&nbsp;You will be able to develop Android applications with powerful architecture using Architecture Components (ViewModel, LiveData, Room).<br />
&nbsp;With Firebase, you will be able to develop real-time applications<br />
&nbsp;You will learn how to make a messaging app using Firebase<br />
&nbsp;You will be able to develop user-friendly interfaces using Material Design principles and components<br />
&nbsp;You will be able to develop modern Android apps<br />
&nbsp;This course is built to help beginners to start making applications in Android<br />
&nbsp;You will learn to develop games using Java Programming Language and Android Studio<br />
&nbsp;You will learn to develop applications by getting real-time data from the Internet<br />
&nbsp;You will have 14 different applications that you will publish on Google Play<br />
&nbsp;You can enroll this course if you want to develop advanced Android Applications using web integrated, online database.<br />
&nbsp;android app development<br />
&nbsp;android development<br />
&nbsp;android studio<br />
&nbsp;Learn the key concepts of the Git<br />
&nbsp;Learn the entire Git workflow<br />
&nbsp;Learn create branches, resolve conflicts, undoing things etc.<br />
&nbsp;Create and fork repositories on GitHub and push changes back after locally<br />
&nbsp;Learn how to collaborate a GitHub project<br />
&nbsp;Android 11<br />
Who should attend<br />
&nbsp;Those who want to develop an Android mobile application<br />
&nbsp;Who wants to improve their existing android knowledge<br />
&nbsp;Those who want to develop applications using the Java programming language<br />
&nbsp;Those who want to develop modern applications and applications with a user-friendly interface<br />
&nbsp;Those who want to develop applications with Firebase Real-Time Database, Architectural Components (View Model, Live Data, Room) and SQLite<br />
&nbsp;Those who are curious about the Android Mobile game World<br />
&nbsp;Those who want to improve their application development skills using Android studio and java programming language<br />
&nbsp;A total beginner, with a curious mind and wants to be an app developer<br />
&nbsp;Anyone planning a job transformation and wants to become an Android developer</p>
', 10, 4, N'full-android-course', 1, 0, 0, 1, 0, N'English', CAST(N'2022-02-02T22:22:02.190' AS DateTime), 1, NULL, 0, 1, CAST(N'2022-02-02T22:22:02.190' AS DateTime))
INSERT [dbo].[Post] ([ID], [Title], [ShortContent], [PostContent], [CategoryID], [ViewCount], [SeoLink], [Slider], [Area1], [Area2], [Area3], [Notification], [LanguageName], [AddDate], [AddUserID], [DeletedDate], [isDeleted], [LastUpdateUserID], [LastUpdateDate]) VALUES (8, N'Full-android-course', N'Aprenda como hackear o Wi-Fi com o teste de vulnerabilidade no mundo real! WEP, WPA / WPA2, quebra de WPS, reconheciment', N'<p>Course Details<br />
Hi there,</p>

<p>Welcome to Full Android Course with 14 Real Apps - 42 Hours course.</p>

<p>Android is the most used operating system on the planet. In fact, it&rsquo;s almost omnipresent in the mobile ecosystem. With millions of Android devices in use, and an incredible 500,000+ new Android devices activated daily, the popularity of Android applications is increasing exponentially - and with it, the demand for Android application developers is soaring.</p>

<p>If you&#39;re interested in developing new and innovative applications for the world&rsquo;s #1 mobile platform, this course is a perfect match for you.</p>

<p>This Full Android Course with 14 Real Apps - 42 Hours course will take you from beginner to advance level.</p>

<p>Our passion is to carry our experience with the right examples to anyone who will enroll in this course. In this course, you will learn Android app development step-by-step. While doing kind of show and tell in our lectures we are also explaining whys. During the lectures, we will be practicing with more than 10 examples and we will be learning to build and publish 14 major apps.</p>

<p>What&rsquo;s important</p>

<p>This course is expertly designed to teach everyone from complete beginners, right through to professionals as a refresher.</p>

<p>In this course you will learn;</p>

<p>? Java Environment Setup</p>

<p>? Java Development Environment</p>

<p>? Java Syntax</p>

<p>? Java Object Oriented Concept</p>

<p>? Java Strings</p>

<p>? Android Environment Setup - Download, install and configure the necessary software</p>

<p>? Creating a New Project</p>

<p>? Android Studio</p>

<p>? Android Components</p>

<p>? Components and Life Cycles</p>

<p>? Publishing Your App on Google Play and more</p>

<p>? You will reinforce your existing android information by applying.</p>

<p>? You will learn to develop games using Android Studio</p>

<p>? You will learn to develop applications by getting real-time data from the Internet.</p>

<p>? Using SQLite database, you will understand how to work with external databases</p>

<p>? You will be able to develop applications with powerful architecture using Architecture Components (ViewModel, LiveData, Room).</p>

<p>? You will learn how to make a messaging app using Firebase.</p>

<p>? With Firebase, you will be able to develop real-time applications</p>

<p>? You will be able to develop user-friendly interfaces using Material Design principles and components.</p>

<p>? You will be able to develop modern Android apps.</p>

<p>Why would you want to take this course?</p>

<p>Our answer is simple: The quality of teaching.</p>

<p>When you enroll, you will feel the OAK Academy&#39;s seasoned instructors&#39; expertise.</p>

<p>This course will take you from a beginner to a more experienced level.</p>

<p>We will take you from beginner to advance level. You will learn step-by-step with hands-on demonstrations.</p>

<p>Fresh Content</p>

<p>It&rsquo;s no secret how technology is advancing at a rapid rate. New tools are released every day, Google updates Android and it&rsquo;s crucial to stay on top of the latest knowledge. With this course, you will always have a chance to follow the latest trends.</p>

<p>You&#39;ll also get:</p>

<p>? Lifetime Access to The Course</p>

<p>? Fast &amp; Friendly Support in the Q&amp;A section</p>

<p>? Udemy Certificate of Completion Ready for Download</p>

<p>Dive in now Full Android Course with 14 Real Apps - 42 Hours course</p>

<p>We offer full support, answering any questions.</p>

<p>Requirements<br />
&nbsp;No prior knowledge is required<br />
&nbsp;No coding knowledge required<br />
&nbsp;To have basic Java programming knowledge<br />
&nbsp;Having a working computer and internet<br />
&nbsp;Watching the course videos completely, to the end and in order<br />
&nbsp;Determination to learn and patience<br />
&nbsp;Desire to learn Android Application Development<br />
&nbsp;Nothing else! It&rsquo;s just you, your computer and your ambition to get started today<br />
What you will learn<br />
&nbsp;Android<br />
&nbsp;This is the most comprehensive Android course. Learn Android app development with practices and build your android development skills.<br />
&nbsp;Due to its open-source nature, working with the Android platform necessitates constantly learning about the Android platform. My Android development course on Udemy keeps you ahead of this learning curve with hands-on lectures on Android operating systems and more.<br />
&nbsp;Learn the most used operating system on the planet<br />
&nbsp;Learn the new version of Android. Here it is: Android 11 (Android R)<br />
&nbsp;Learn Publishing Android App on Google Play<br />
&nbsp;Start from scratch and become a Professional Android App Developer<br />
&nbsp;In this course, we will build 14 different real Android Apps from scratch together<br />
&nbsp;Android applications&#39; levels in this course are from easy to difficult<br />
&nbsp;Learn how to develop modern Android Apps in the simplest way and improve your self-confidence<br />
&nbsp;You will reinforce your existing Android information by applying<br />
&nbsp;Using SQLite database, you will understand how to work with external databases<br />
&nbsp;You will be able to develop Android applications with powerful architecture using Architecture Components (ViewModel, LiveData, Room).<br />
&nbsp;With Firebase, you will be able to develop real-time applications<br />
&nbsp;You will learn how to make a messaging app using Firebase<br />
&nbsp;You will be able to develop user-friendly interfaces using Material Design principles and components<br />
&nbsp;You will be able to develop modern Android apps<br />
&nbsp;This course is built to help beginners to start making applications in Android<br />
&nbsp;You will learn to develop games using Java Programming Language and Android Studio<br />
&nbsp;You will learn to develop applications by getting real-time data from the Internet<br />
&nbsp;You will have 14 different applications that you will publish on Google Play<br />
&nbsp;You can enroll this course if you want to develop advanced Android Applications using web integrated, online database.<br />
&nbsp;android app development<br />
&nbsp;android development<br />
&nbsp;android studio<br />
&nbsp;Learn the key concepts of the Git<br />
&nbsp;Learn the entire Git workflow<br />
&nbsp;Learn create branches, resolve conflicts, undoing things etc.<br />
&nbsp;Create and fork repositories on GitHub and push changes back after locally<br />
&nbsp;Learn how to collaborate a GitHub project<br />
&nbsp;Android 11<br />
Who should attend<br />
&nbsp;Those who want to develop an Android mobile application<br />
&nbsp;Who wants to improve their existing android knowledge<br />
&nbsp;Those who want to develop applications using the Java programming language<br />
&nbsp;Those who want to develop modern applications and applications with a user-friendly interface<br />
&nbsp;Those who want to develop applications with Firebase Real-Time Database, Architectural Components (View Model, Live Data, Room) and SQLite<br />
&nbsp;Those who are curious about the Android Mobile game World<br />
&nbsp;Those who want to improve their application development skills using Android studio and java programming language<br />
&nbsp;A total beginner, with a curious mind and wants to be an app developer<br />
&nbsp;Anyone planning a job transformation and wants to become an Android developer</p>
', 10, 11, N'full-android-course', 1, 0, 0, 1, 0, N'English', CAST(N'2022-02-02T22:23:08.033' AS DateTime), 1, NULL, 0, 1, CAST(N'2022-02-02T22:23:08.033' AS DateTime))
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[PostImage] ON 

INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, 1, N'a592eda6-8415-46fa-8cb8-b67826279519boxed-bg.jpg', CAST(N'2022-01-28T22:36:39.827' AS DateTime), 1, CAST(N'2022-01-30T00:49:46.667' AS DateTime), 1, CAST(N'2022-01-30T00:49:46.667' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, 1, N'76294b2c-42a6-443c-bde2-0dc8b0d86b9689638275_112739107013017_2272630198912417792_n.jpg', CAST(N'2022-01-28T23:05:38.223' AS DateTime), 1, CAST(N'2022-01-30T00:49:46.667' AS DateTime), 1, CAST(N'2022-01-30T00:49:46.667' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (3, 1, N'061af3a8-3eee-4a46-b93f-5bf78e607c0389737648_112496307037297_1428245546983751680_n.jpg', CAST(N'2022-01-28T23:05:38.223' AS DateTime), 1, CAST(N'2022-01-30T00:49:46.667' AS DateTime), 1, CAST(N'2022-01-30T00:49:46.667' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (4, 1, N'9cd3f125-30e7-4411-94ce-d34312e22f1a97085964_134877061465888_3316794490110345216_n.jpg', CAST(N'2022-01-28T23:05:38.223' AS DateTime), 1, CAST(N'2022-01-30T00:49:46.667' AS DateTime), 1, CAST(N'2022-01-30T00:49:46.667' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, 1, N'3d73926b-b136-44cc-a634-253da111e5fe97657916_133301774956750_6628758761215361024_n.jpg', CAST(N'2022-01-28T23:05:38.223' AS DateTime), 1, CAST(N'2022-01-30T00:49:46.667' AS DateTime), 1, CAST(N'2022-01-30T00:49:46.667' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (6, 1, N'0dca7556-5e5c-45a2-952e-895fbba885ac98333117_137056777914583_807751445636972544_n.jpg', CAST(N'2022-01-28T23:05:38.223' AS DateTime), 1, CAST(N'2022-01-30T00:49:46.667' AS DateTime), 1, CAST(N'2022-01-30T00:49:46.667' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (7, 1, N'7f9bb974-90a8-4727-a8ae-cc05fe6a6374112359223_152396729713921_9130827947828073200_n.jpg', CAST(N'2022-01-28T23:05:38.223' AS DateTime), 1, CAST(N'2022-01-30T00:49:46.667' AS DateTime), 1, CAST(N'2022-01-30T00:49:46.667' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (8, 2, N'975229c5-9c54-47cb-adba-a5a3222957f798333117_137056777914583_807751445636972544_n.jpg', CAST(N'2022-02-02T09:47:51.843' AS DateTime), 1, CAST(N'2022-02-03T08:59:14.633' AS DateTime), 1, CAST(N'2022-02-03T08:59:14.633' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (9, 3, N'e1e5f870-4f8b-4a70-a405-5f1d6cdf99923653764_9a50_2.jpg', CAST(N'2022-02-02T21:54:04.320' AS DateTime), 0, NULL, 1, CAST(N'2022-02-02T21:54:04.320' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (10, 4, N'0b419d0a-ec8f-4805-a8b8-4b6353a4876b3653758_2d1e_6.jpg', CAST(N'2022-02-02T22:10:48.997' AS DateTime), 0, NULL, 1, CAST(N'2022-02-02T22:10:48.997' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (11, 5, N'9f89f9a5-dda4-44f7-bc28-84349388ac1f3653762_904b_2.jpg', CAST(N'2022-02-02T22:14:31.320' AS DateTime), 1, CAST(N'2022-02-02T22:20:18.560' AS DateTime), 1, CAST(N'2022-02-02T22:20:18.560' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (12, 6, N'bd9e2a38-1da3-4d87-9a9d-9f554373e5e63653762_904b_2.jpg', CAST(N'2022-02-02T22:16:48.427' AS DateTime), 1, CAST(N'2022-02-02T22:20:16.040' AS DateTime), 1, CAST(N'2022-02-02T22:20:16.040' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (13, 7, N'8183f4de-fa10-4c29-bd89-0c8d2fef7b7f3653762_904b_2.jpg', CAST(N'2022-02-02T22:22:02.247' AS DateTime), 0, NULL, 1, CAST(N'2022-02-02T22:22:02.247' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (14, 8, N'e86c4786-99fd-408b-ac8a-bb9708776e333653762_904b_2.jpg', CAST(N'2022-02-02T22:23:08.087' AS DateTime), 0, NULL, 1, CAST(N'2022-02-02T22:23:08.087' AS DateTime))
INSERT [dbo].[PostImage] ([ID], [PostID], [ImagePath], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (15, 3, N'c5549e36-9030-4df5-bd59-e2a4dfeb8d333653764_9a50_2.jpg', CAST(N'2022-02-03T09:54:35.867' AS DateTime), 0, NULL, 1, CAST(N'2022-02-03T09:54:35.867' AS DateTime))
SET IDENTITY_INSERT [dbo].[PostImage] OFF
GO
SET IDENTITY_INSERT [dbo].[PostTag] ON 

INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, 1, N'Hung pham', CAST(N'2022-01-28T22:36:39.850' AS DateTime), 1, CAST(N'2022-02-07T16:07:02.640' AS DateTime), 1, CAST(N'2022-02-07T16:07:02.640' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, 1, N'Hung pham', CAST(N'2022-01-28T23:05:38.283' AS DateTime), 1, CAST(N'2022-02-07T16:07:02.640' AS DateTime), 1, CAST(N'2022-02-07T16:07:02.640' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (4, 1, N'Hung pham', CAST(N'2022-01-28T23:06:06.600' AS DateTime), 1, CAST(N'2022-02-07T16:07:02.640' AS DateTime), 1, CAST(N'2022-02-07T16:07:02.640' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, 1, N' Tam Nhu', CAST(N'2022-01-28T23:06:06.600' AS DateTime), 1, CAST(N'2022-02-07T16:07:02.640' AS DateTime), 1, CAST(N'2022-02-07T16:07:02.640' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (6, 2, N'Hung pham', CAST(N'2022-02-02T09:47:51.863' AS DateTime), 1, CAST(N'2022-02-03T08:59:14.600' AS DateTime), 1, CAST(N'2022-02-03T08:59:14.600' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (7, 2, N' Tam Nhu', CAST(N'2022-02-02T09:47:51.863' AS DateTime), 1, CAST(N'2022-02-03T08:59:14.600' AS DateTime), 1, CAST(N'2022-02-03T08:59:14.600' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (8, 2, N' 2021', CAST(N'2022-02-02T09:47:51.863' AS DateTime), 1, CAST(N'2022-02-03T08:59:14.600' AS DateTime), 1, CAST(N'2022-02-03T08:59:14.600' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (9, 3, N'NodeJs', CAST(N'2022-02-02T21:54:04.340' AS DateTime), 1, CAST(N'2022-02-03T09:54:35.883' AS DateTime), 1, CAST(N'2022-02-03T09:54:35.883' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (10, 3, N' programming', CAST(N'2022-02-02T21:54:04.340' AS DateTime), 1, CAST(N'2022-02-03T09:54:35.883' AS DateTime), 1, CAST(N'2022-02-03T09:54:35.883' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (12, 4, N'Android', CAST(N'2022-02-02T22:10:49.017' AS DateTime), 1, CAST(N'2022-02-03T10:00:19.853' AS DateTime), 1, CAST(N'2022-02-03T10:00:19.853' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (13, 5, N'NodeJs', CAST(N'2022-02-02T22:14:31.343' AS DateTime), 1, CAST(N'2022-02-08T10:20:29.797' AS DateTime), 1, CAST(N'2022-02-08T10:20:29.797' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (14, 5, N' programming', CAST(N'2022-02-02T22:14:31.343' AS DateTime), 1, CAST(N'2022-02-08T10:20:29.797' AS DateTime), 1, CAST(N'2022-02-08T10:20:29.797' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (15, 6, N'Networking', CAST(N'2022-02-02T22:16:48.447' AS DateTime), 1, CAST(N'2022-02-02T22:20:16.013' AS DateTime), 1, CAST(N'2022-02-02T22:20:16.013' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (16, 6, N' Programming', CAST(N'2022-02-02T22:16:48.447' AS DateTime), 1, CAST(N'2022-02-02T22:20:16.013' AS DateTime), 1, CAST(N'2022-02-02T22:20:16.013' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (17, 6, N' Security', CAST(N'2022-02-02T22:16:48.447' AS DateTime), 1, CAST(N'2022-02-02T22:20:16.013' AS DateTime), 1, CAST(N'2022-02-02T22:20:16.013' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (18, 8, N'Networking', CAST(N'2022-02-02T22:23:08.103' AS DateTime), 0, NULL, 1, CAST(N'2022-02-02T22:23:08.107' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (19, 8, N' Programming', CAST(N'2022-02-02T22:23:08.107' AS DateTime), 0, NULL, 1, CAST(N'2022-02-02T22:23:08.107' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (20, 8, N' Security', CAST(N'2022-02-02T22:23:08.107' AS DateTime), 0, NULL, 1, CAST(N'2022-02-02T22:23:08.107' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (21, 3, N'NodeJs', CAST(N'2022-02-03T09:54:35.893' AS DateTime), 0, NULL, 1, CAST(N'2022-02-03T09:54:35.893' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (22, 3, N' programming', CAST(N'2022-02-03T09:54:35.893' AS DateTime), 0, NULL, 1, CAST(N'2022-02-03T09:54:35.893' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (25, 4, N'Android', CAST(N'2022-02-03T10:00:19.863' AS DateTime), 1, CAST(N'2022-02-03T10:00:26.983' AS DateTime), 1, CAST(N'2022-02-03T10:00:26.983' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (26, 4, N'', CAST(N'2022-02-03T10:00:19.863' AS DateTime), 1, CAST(N'2022-02-03T10:00:26.983' AS DateTime), 1, CAST(N'2022-02-03T10:00:26.983' AS DateTime))
INSERT [dbo].[PostTag] ([ID], [PostID], [TagContent], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (27, 4, N'Android', CAST(N'2022-02-03T10:00:26.987' AS DateTime), 0, NULL, 1, CAST(N'2022-02-03T10:00:26.987' AS DateTime))
SET IDENTITY_INSERT [dbo].[PostTag] OFF
GO
SET IDENTITY_INSERT [dbo].[ProcessType] ON 

INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (1, N'Login')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (2, N'Address was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (3, N'Address was update')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (4, N'Address was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (5, N'Ads was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (6, N'Ads was Updated
')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (7, N'Ads was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (8, N'Category was uploaded')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (9, N'Category was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (10, N'Category was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (11, N'Icon fav logo was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (12, N'Icon fav logo was updated')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (13, N'Icon fav logo was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (14, N'Meta was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (15, N'Meta was updated')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (16, N'Meta was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (17, N'Social media was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (18, N'Social media was updated')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (19, N'Social media was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (20, N'User was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (21, N'User was updated')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (22, N'User was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (23, N'Video was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (24, N'Video was updated')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (25, N'Video was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (26, N'Post was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (27, N'Post was updated')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (28, N'Post was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (29, N'Image was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (30, N'Image was updated')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (31, N'Image was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (32, N'Tag was added')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (33, N'Tag was updated')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (34, N'Tag was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (35, N'Comment was Approved')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (36, N'Comment was deleted')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (37, N'Contact was read')
INSERT [dbo].[ProcessType] ([ID], [ProcessName]) VALUES (38, N'Contact was deleted')
SET IDENTITY_INSERT [dbo].[ProcessType] OFF
GO
SET IDENTITY_INSERT [dbo].[SocialMedia] ON 

INSERT [dbo].[SocialMedia] ([ID], [Name], [ImagePath], [Link], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (3, N'Facebook', N'2fd8bf27-b895-4a9a-bdf8-900282a26edf233005528_361171118836480_731908314899632856_n.jpg', N'https://www.facebook.com/tam.nhubh', CAST(N'2022-01-25T10:29:27.707' AS DateTime), 0, NULL, 1, CAST(N'2022-02-03T08:27:56.733' AS DateTime))
INSERT [dbo].[SocialMedia] ([ID], [Name], [ImagePath], [Link], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (4, N'Youtube', N'aa93f372-a09d-4c2c-880d-39548e54c603218253881_353042442982681_779135031840633244_n.jpg', N'https://www.youtube.com/', CAST(N'2022-01-25T10:30:34.997' AS DateTime), 0, NULL, 1, CAST(N'2022-02-03T08:54:45.863' AS DateTime))
INSERT [dbo].[SocialMedia] ([ID], [Name], [ImagePath], [Link], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, N'Instagram', N'0647b9ad-d602-47bd-9853-84c3a98d9bcb189788265_314798340140425_7318537725519487842_n.jpg', N'https://www.instagram.com', CAST(N'2022-01-25T10:33:05.610' AS DateTime), 0, NULL, 1, CAST(N'2022-02-03T08:55:13.433' AS DateTime))
INSERT [dbo].[SocialMedia] ([ID], [Name], [ImagePath], [Link], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (6, N'Twitter', N'a5d352f6-0418-4ff5-8979-0588ed499f2e240892561_1656866117840007_8520334224590410167_n.jpg', N'https://mobile.twitter.com/login', CAST(N'2022-02-03T08:28:56.003' AS DateTime), 0, NULL, 1, CAST(N'2022-02-03T08:56:11.907' AS DateTime))
INSERT [dbo].[SocialMedia] ([ID], [Name], [ImagePath], [Link], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (7, N'Linkedin', N'f9fa0678-607b-4a3c-ba40-98e08d52c3b0240892561_1656866117840007_8520334224590410167_n.jpg', N'https://www.linkedin.com/', CAST(N'2022-02-03T08:29:13.567' AS DateTime), 0, NULL, 1, CAST(N'2022-02-03T08:56:47.927' AS DateTime))
INSERT [dbo].[SocialMedia] ([ID], [Name], [ImagePath], [Link], [AddDate], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (8, N'GooglePlus', N'9e7cf223-3500-4316-9dd1-f3f40ba07042218253881_353042442982681_779135031840633244_n.jpg', N'https://support.google.com/answer/2451065?hl=en', CAST(N'2022-02-03T08:29:31.747' AS DateTime), 0, NULL, 1, CAST(N'2022-02-03T08:57:53.170' AS DateTime))
SET IDENTITY_INSERT [dbo].[SocialMedia] OFF
GO
SET IDENTITY_INSERT [dbo].[T_User] ON 

INSERT [dbo].[T_User] ([ID], [UserName], [Password], [Email], [NameSurname], [ImagePath], [isAdmin], [DeteleDate], [isDeleted], [AddDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, N'Hung1', N'123', N'hunghtk456', N'Hung Pham', N'384a6ce8-211b-45ad-8845-c27d673b1d3f236852068_362898638663728_2253252028171316807_n.jpg', 0, NULL, 0, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, CAST(N'2022-02-03T09:15:45.470' AS DateTime))
INSERT [dbo].[T_User] ([ID], [UserName], [Password], [Email], [NameSurname], [ImagePath], [isAdmin], [DeteleDate], [isDeleted], [AddDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, N'Nhu', N'123', N'tamnhubh', N'Tam Nhu', N'01c46731-37dd-478d-bda6-edbc708850f3260829240_1031225491082385_423117389902244355_n.jpg', 0, CAST(N'2022-01-30T01:04:18.153' AS DateTime), 1, CAST(N'2020-02-02T00:00:00.000' AS DateTime), 1, CAST(N'2022-01-30T01:04:18.153' AS DateTime))
INSERT [dbo].[T_User] ([ID], [UserName], [Password], [Email], [NameSurname], [ImagePath], [isAdmin], [DeteleDate], [isDeleted], [AddDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (3, N'Hung2', N'123', N'hunghtk456@gmail.com', N'Pham Van Manh Hung', N'5cdbd2e2-3f4d-4770-8998-e2ee4b7b5905240892561_1656866117840007_8520334224590410167_n.jpg', 1, NULL, 0, CAST(N'2022-01-26T00:17:28.227' AS DateTime), 1, CAST(N'2022-02-02T20:25:12.743' AS DateTime))
INSERT [dbo].[T_User] ([ID], [UserName], [Password], [Email], [NameSurname], [ImagePath], [isAdmin], [DeteleDate], [isDeleted], [AddDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (4, N'Hung3', N'123', N'tamnhu290302@gmail.com', N'Tang Tam Nhu', N'f38c8124-b6dd-4bb0-bc6a-7e9a57e39e7c218253881_353042442982681_779135031840633244_n.jpg', 0, NULL, 0, CAST(N'2022-01-26T00:19:06.310' AS DateTime), 1, CAST(N'2022-02-02T20:25:31.233' AS DateTime))
INSERT [dbo].[T_User] ([ID], [UserName], [Password], [Email], [NameSurname], [ImagePath], [isAdmin], [DeteleDate], [isDeleted], [AddDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, N'Hung10', N'123', N'hunghtk456@gmail.com', N'Python Pham', N'5421beef-3512-4189-8ce8-823b8a3cbe40233005528_361171118836480_731908314899632856_n.jpg', 0, NULL, 0, CAST(N'2022-01-26T16:22:01.970' AS DateTime), 5, CAST(N'2022-02-02T20:37:09.110' AS DateTime))
INSERT [dbo].[T_User] ([ID], [UserName], [Password], [Email], [NameSurname], [ImagePath], [isAdmin], [DeteleDate], [isDeleted], [AddDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (6, N'Hung4', N'123', N'hunghtk456@gmail.com', N'Tam Nhu 123', N'b7d61f12-506e-4d2c-85c3-ced8ed8e1df889737648_112496307037297_1428245546983751680_n.jpg', 0, NULL, 0, CAST(N'2022-02-02T20:27:24.330' AS DateTime), 5, CAST(N'2022-02-02T20:35:12.887' AS DateTime))
SET IDENTITY_INSERT [dbo].[T_User] OFF
GO
SET IDENTITY_INSERT [dbo].[Video] ON 

INSERT [dbo].[Video] ([ID], [VideoPath], [Title], [OriginalVideoPath], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, N'<iframe width="300" height="200" src="https://www.youtube.com/embed/s6r54t-IioQ"  frameborder="0"  allowfullscreen></iframe>', N'Shaco bluetooth', N'https://www.youtube.com/watch?v=s6r54t-IioQ', CAST(N'2022-01-27T16:16:18.970' AS DateTime), 0, 0, NULL, 1, CAST(N'2022-01-27T22:50:28.857' AS DateTime))
INSERT [dbo].[Video] ([ID], [VideoPath], [Title], [OriginalVideoPath], [AddDate], [AddUserID], [isDeleted], [DeletedDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (2, N'<iframe width="300" height="200" src="https://www.youtube.com/embed/TlB_eWDSMt4&t=163s"  frameborder="0"  allowfullscreen></iframe>', N'Node.js Tutorial for Beginners: Learn Node in 1 Hour', N'https://www.youtube.com/watch?v=TlB_eWDSMt4&t=163s', CAST(N'2022-02-03T07:50:21.557' AS DateTime), 0, 0, NULL, 1, CAST(N'2022-02-03T07:50:21.557' AS DateTime))
SET IDENTITY_INSERT [dbo].[Video] OFF
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_T_User]
GO
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD  CONSTRAINT [FK_Ads_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[Ads] CHECK CONSTRAINT [FK_Ads_T_User]
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_T_User]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Post] FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([ID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Post]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_T_User]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_T_User]
GO
ALTER TABLE [dbo].[FavLogoTitle]  WITH CHECK ADD  CONSTRAINT [FK_FavLogoTitle_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[FavLogoTitle] CHECK CONSTRAINT [FK_FavLogoTitle_T_User]
GO
ALTER TABLE [dbo].[Log_Table]  WITH CHECK ADD  CONSTRAINT [FK_Log_Table_ProcessType] FOREIGN KEY([ProcessType])
REFERENCES [dbo].[ProcessType] ([ID])
GO
ALTER TABLE [dbo].[Log_Table] CHECK CONSTRAINT [FK_Log_Table_ProcessType]
GO
ALTER TABLE [dbo].[Log_Table]  WITH CHECK ADD  CONSTRAINT [FK_Log_Table_T_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[Log_Table] CHECK CONSTRAINT [FK_Log_Table_T_User]
GO
ALTER TABLE [dbo].[Meta]  WITH CHECK ADD  CONSTRAINT [FK_Meta_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[Meta] CHECK CONSTRAINT [FK_Meta_T_User]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Category]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_T_User]
GO
ALTER TABLE [dbo].[PostImage]  WITH CHECK ADD  CONSTRAINT [FK_PostImage_Post] FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([ID])
GO
ALTER TABLE [dbo].[PostImage] CHECK CONSTRAINT [FK_PostImage_Post]
GO
ALTER TABLE [dbo].[PostImage]  WITH CHECK ADD  CONSTRAINT [FK_PostImage_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[PostImage] CHECK CONSTRAINT [FK_PostImage_T_User]
GO
ALTER TABLE [dbo].[PostTag]  WITH CHECK ADD  CONSTRAINT [FK_PostTag_Post] FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([ID])
GO
ALTER TABLE [dbo].[PostTag] CHECK CONSTRAINT [FK_PostTag_Post]
GO
ALTER TABLE [dbo].[PostTag]  WITH CHECK ADD  CONSTRAINT [FK_PostTag_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[PostTag] CHECK CONSTRAINT [FK_PostTag_T_User]
GO
ALTER TABLE [dbo].[SocialMedia]  WITH CHECK ADD  CONSTRAINT [FK_SocialMedia_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[SocialMedia] CHECK CONSTRAINT [FK_SocialMedia_T_User]
GO
ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Video_T_User] FOREIGN KEY([LastUpdateUserID])
REFERENCES [dbo].[T_User] ([ID])
GO
ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Video_T_User]
GO
/****** Object:  Trigger [dbo].[delete_post]    Script Date: 2/14/2022 9:59:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[delete_post] on [dbo].[Post] after update as
begin 
declare @PostID int 
declare @UserID int
select @PostID = ID from inserted
select @UserID = LastUpdateUserID from inserted
if update(isDeleted)
begin
update PostTag set isDeleted = 1, DeletedDate = GETDATE(), LastUpdateUserID = @UserID, LastUpdateDate =GETDATE() where PostID =  @PostID
update Comment set isDeleted = 1, DeletedDate = GETDATE(), LastUpdateUserID = @UserID, LastUpdateDate =GETDATE() where PostID =  @PostID
end
end
GO
ALTER TABLE [dbo].[Post] ENABLE TRIGGER [delete_post]
GO
USE [master]
GO
ALTER DATABASE [POSTDATA] SET  READ_WRITE 
GO
