USE [master]
GO
/****** Object:  Database [dtbs15]    Script Date: 5/7/2019 8:32:23 AM ******/
CREATE DATABASE [dtbs15]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dtbs15', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\dtbs15.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dtbs15_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\dtbs15_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dtbs15] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dtbs15].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dtbs15] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dtbs15] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dtbs15] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dtbs15] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dtbs15] SET ARITHABORT OFF 
GO
ALTER DATABASE [dtbs15] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dtbs15] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dtbs15] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dtbs15] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dtbs15] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dtbs15] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dtbs15] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dtbs15] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dtbs15] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dtbs15] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dtbs15] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dtbs15] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dtbs15] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dtbs15] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dtbs15] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dtbs15] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dtbs15] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dtbs15] SET RECOVERY FULL 
GO
ALTER DATABASE [dtbs15] SET  MULTI_USER 
GO
ALTER DATABASE [dtbs15] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dtbs15] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dtbs15] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dtbs15] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [dtbs15] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dtbs15', N'ON'
GO
USE [dtbs15]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Back_Camera]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Back_Camera](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Pixel] [nvarchar](50) NULL,
 CONSTRAINT [PK_Back_Camera] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Browser]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Browser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Browser] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[Add_Date] [date] NOT NULL,
	[Update_Date] [date] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Connectivity]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Connectivity](
	[2G_Band] [nvarchar](50) NULL,
	[3G_Band] [nvarchar](50) NULL,
	[4G_Band] [nvarchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Connectivity] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Display]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Display](
	[id] [int] NOT NULL,
	[Technology] [nvarchar](50) NULL,
 CONSTRAINT [PK_Display] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Front_Camera]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Front_Camera](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Pixel] [nvarchar](50) NULL,
 CONSTRAINT [PK_Front_Camera] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OperatingSystem]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperatingSystem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OS] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OperatingSystem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Processor]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Processor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CPU] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Processor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Add_Date] [date] NOT NULL,
	[Update_Date] [date] NULL,
	[Wifi] [bit] NOT NULL,
	[Size] [float] NOT NULL,
	[Resolution] [nvarchar](max) NOT NULL,
	[CardSupport] [bit] NOT NULL,
	[Price] [int] NOT NULL,
	[Image1] [image] NULL,
	[Image2] [image] NULL,
	[Image3] [image] NULL,
	[RamId] [int] NOT NULL,
	[FcamId] [int] NULL,
	[BcamId] [int] NULL,
	[DPT_Id] [int] NOT NULL,
	[Browser_Id] [int] NOT NULL,
	[USB_Id] [int] NOT NULL,
	[OS_Id] [int] NOT NULL,
	[Connectivity_Id] [int] NOT NULL,
	[ROM_Id] [int] NOT NULL,
	[Processor_Id] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RAM]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RAM](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Capacity] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RAM] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ROM]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROM](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ROM] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ROM] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USB]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USB](
	[id] [int] NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_USB] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  View [dbo].[By Brand]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[By Brand] As SELECT Name,Price,Manufacturer from dbo.Product,dbo.Category where Price < 60000 and Product.CategoryId=Category.id;
GO
/****** Object:  View [dbo].[BY_BackCamera]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[BY_BackCamera] As SELECT Name,Price,Manufacturer,Capacity,Pixel from dbo.Product,dbo.Category,dbo.RAM,dbo.Back_Camera where Product.CategoryId=Category.id and Product.BcamId=Back_Camera.id and Product.RamId=RAM.id;
GO
/****** Object:  View [dbo].[BY_BackCamera16MP]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[BY_BackCamera16MP] As SELECT Name,Price,Manufacturer,Capacity,Pixel from dbo.Product,dbo.Category,dbo.RAM,dbo.Back_Camera where Product.CategoryId=Category.id and Pixel='16MP'  ;
GO
/****** Object:  View [dbo].[By_Browser]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[By_Browser] As select name,price,Type,Manufacturer from dbo.Product,dbo.Browser,dbo.Category where Product.id=Category.id and Product.Browser_Id=Browser.id;
GO
/****** Object:  View [dbo].[By_Display]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[By_Display] As select name,price,Technology,Manufacturer from dbo.Product,dbo.Display,dbo.Category where Product.id=Category.id and Product.DPT_Id=Display.id;
GO
/****** Object:  View [dbo].[By_OS]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[By_OS] As select name,price,OS,Manufacturer from dbo.Product,dbo.OperatingSystem,dbo.Category where Product.id=Category.id and Product.OS_Id=OperatingSystem.id;
GO
/****** Object:  View [dbo].[BY_RAM]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[BY_RAM] As Select Name,Price,Capacity,OS,Manufacturer from dbo.Product,dbo.RAM,dbo.OperatingSystem,dbo.Category where Capacity='4GB' and Product.CategoryId=Category.id and Product.RamId=RAM.Id and Product.OS_Id=OperatingSystem.id
GO
/****** Object:  View [dbo].[Price<60000]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Price<60000] As SELECT Name,Price,Manufacturer,ROM from dbo.Product,dbo.Category,dbo.ROM where Price < 60000 and Product.CategoryId=Category.id;
GO
/****** Object:  View [dbo].[RecentADD]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[RecentADD] As select Add_date,Name,Price from dbo.Product where YEAR(Add_Date)='2019'
GO
/****** Object:  View [dbo].[View_Name]    Script Date: 5/7/2019 8:32:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[View_Name] As SELECT Name,Price from dbo.Product;
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'cb1eb147-8b67-4d03-a31c-4bf4b0b2c677', N'admin@uetquizzing.com', 0, N'AMZKVtyC/JKAtLxdEE1Z9yPR09X5JF5ZIX8z61adLTkjJ44byiVavx3uO+6HAFgYYw==', N'6120a110-32db-4c3b-9331-1f649241231b', NULL, 0, 0, NULL, 1, 0, N'admin@uetquizzing.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd4c0df61-d1c9-4225-acc3-2b6c69b8fada', N'admin@gmail.com', 0, N'AP9QHA4oJwA1TIJQcpqH4Pwmz7vGyuHjpnjW2ql6lEE6Cvv9dZB+r3WYR78/JXqylg==', N'f6dadee5-28f4-4bb2-a1db-89c46f3370ba', NULL, 0, 0, NULL, 1, 0, N'admin@gmail.com')
SET IDENTITY_INSERT [dbo].[Back_Camera] ON 

INSERT [dbo].[Back_Camera] ([Id], [Pixel]) VALUES (1, N'50px')
INSERT [dbo].[Back_Camera] ([Id], [Pixel]) VALUES (3, N'16 px')
INSERT [dbo].[Back_Camera] ([Id], [Pixel]) VALUES (1002, N'8MP')
INSERT [dbo].[Back_Camera] ([Id], [Pixel]) VALUES (1003, N'12MP')
INSERT [dbo].[Back_Camera] ([Id], [Pixel]) VALUES (1004, N'64MP')
INSERT [dbo].[Back_Camera] ([Id], [Pixel]) VALUES (1005, N'13MP')
INSERT [dbo].[Back_Camera] ([Id], [Pixel]) VALUES (1006, N'5MP')
INSERT [dbo].[Back_Camera] ([Id], [Pixel]) VALUES (1007, N'24MP')
SET IDENTITY_INSERT [dbo].[Back_Camera] OFF
SET IDENTITY_INSERT [dbo].[Browser] ON 

INSERT [dbo].[Browser] ([id], [Type]) VALUES (1, N'html5')
INSERT [dbo].[Browser] ([id], [Type]) VALUES (2, N'ios')
SET IDENTITY_INSERT [dbo].[Browser] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [Manufacturer], [Add_Date], [Update_Date]) VALUES (1, N'Samsung', CAST(N'2019-04-27' AS Date), NULL)
INSERT [dbo].[Category] ([id], [Manufacturer], [Add_Date], [Update_Date]) VALUES (2, N'OPPO', CAST(N'2019-12-12' AS Date), NULL)
INSERT [dbo].[Category] ([id], [Manufacturer], [Add_Date], [Update_Date]) VALUES (3, N'HUAWEI', CAST(N'2019-05-12' AS Date), NULL)
INSERT [dbo].[Category] ([id], [Manufacturer], [Add_Date], [Update_Date]) VALUES (4, N'REALME', CAST(N'2019-05-12' AS Date), NULL)
INSERT [dbo].[Category] ([id], [Manufacturer], [Add_Date], [Update_Date]) VALUES (5, N'APPLE', CAST(N'2019-05-12' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Connectivity] ON 

INSERT [dbo].[Connectivity] ([2G_Band], [3G_Band], [4G_Band], [id]) VALUES (N'1800gps', N'1500Hz', N'LTE', 1)
SET IDENTITY_INSERT [dbo].[Connectivity] OFF
INSERT [dbo].[Display] ([id], [Technology]) VALUES (0, N'Super Amoled')
INSERT [dbo].[Display] ([id], [Technology]) VALUES (3, N'IPS-LCD')
INSERT [dbo].[Display] ([id], [Technology]) VALUES (5, N'LCD')
SET IDENTITY_INSERT [dbo].[Front_Camera] ON 

INSERT [dbo].[Front_Camera] ([Id], [Pixel]) VALUES (1, N'48 px')
SET IDENTITY_INSERT [dbo].[Front_Camera] OFF
SET IDENTITY_INSERT [dbo].[OperatingSystem] ON 

INSERT [dbo].[OperatingSystem] ([Id], [OS]) VALUES (1, N'Android Pie(9.0)')
SET IDENTITY_INSERT [dbo].[OperatingSystem] OFF
SET IDENTITY_INSERT [dbo].[Processor] ON 

INSERT [dbo].[Processor] ([Id], [CPU]) VALUES (1, N'Octacore')
INSERT [dbo].[Processor] ([Id], [CPU]) VALUES (2, N'hexa core')
INSERT [dbo].[Processor] ([Id], [CPU]) VALUES (3, N'quad core')
SET IDENTITY_INSERT [dbo].[Processor] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [CategoryId], [Add_Date], [Update_Date], [Wifi], [Size], [Resolution], [CardSupport], [Price], [Image1], [Image2], [Image3], [RamId], [FcamId], [BcamId], [DPT_Id], [Browser_Id], [USB_Id], [OS_Id], [Connectivity_Id], [ROM_Id], [Processor_Id]) VALUES (1, N'Samsung Galaxy A70', 1, CAST(N'2017-12-12' AS Date), NULL, 1, 6.5, N'1080 * 2040', 1, 65000, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, 1, 1, 3, 2)
INSERT [dbo].[Product] ([Id], [Name], [CategoryId], [Add_Date], [Update_Date], [Wifi], [Size], [Resolution], [CardSupport], [Price], [Image1], [Image2], [Image3], [RamId], [FcamId], [BcamId], [DPT_Id], [Browser_Id], [USB_Id], [OS_Id], [Connectivity_Id], [ROM_Id], [Processor_Id]) VALUES (2, N'OPPO F11', 2, CAST(N'2017-12-12' AS Date), NULL, 1, 6.3000001907348633, N'1080*720', 1, 40000, NULL, NULL, NULL, 1, 1, 1007, 3, 1, 3, 1, 1, 1, 1)
INSERT [dbo].[Product] ([Id], [Name], [CategoryId], [Add_Date], [Update_Date], [Wifi], [Size], [Resolution], [CardSupport], [Price], [Image1], [Image2], [Image3], [RamId], [FcamId], [BcamId], [DPT_Id], [Browser_Id], [USB_Id], [OS_Id], [Connectivity_Id], [ROM_Id], [Processor_Id]) VALUES (3, N'Realme 3', 4, CAST(N'2017-12-12' AS Date), NULL, 1, 6.4000000953674316, N'1080*1440', 1, 26000, NULL, NULL, NULL, 1, 1, 3, 3, 1, 3, 1, 1, 3, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[RAM] ON 

INSERT [dbo].[RAM] ([Id], [Capacity]) VALUES (1, N'4GB')
INSERT [dbo].[RAM] ([Id], [Capacity]) VALUES (2, N'6GB')
INSERT [dbo].[RAM] ([Id], [Capacity]) VALUES (3, N'8GB')
INSERT [dbo].[RAM] ([Id], [Capacity]) VALUES (4, N'12GB')
INSERT [dbo].[RAM] ([Id], [Capacity]) VALUES (5, N'1GB')
INSERT [dbo].[RAM] ([Id], [Capacity]) VALUES (6, N'2GB')
SET IDENTITY_INSERT [dbo].[RAM] OFF
SET IDENTITY_INSERT [dbo].[ROM] ON 

INSERT [dbo].[ROM] ([id], [ROM]) VALUES (1, N'32GB')
INSERT [dbo].[ROM] ([id], [ROM]) VALUES (2, N'64GB')
INSERT [dbo].[ROM] ([id], [ROM]) VALUES (3, N'128GB')
INSERT [dbo].[ROM] ([id], [ROM]) VALUES (4, N'16GB')
INSERT [dbo].[ROM] ([id], [ROM]) VALUES (5, N'8GB')
INSERT [dbo].[ROM] ([id], [ROM]) VALUES (6, N'256GB')
SET IDENTITY_INSERT [dbo].[ROM] OFF
INSERT [dbo].[USB] ([id], [Type]) VALUES (1, N'Type C 1.0')
INSERT [dbo].[USB] ([id], [Type]) VALUES (2, N'Type C 2.0')
INSERT [dbo].[USB] ([id], [Type]) VALUES (3, N'microusb 2.0')
INSERT [dbo].[USB] ([id], [Type]) VALUES (4, N'microusb 3.0')
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/7/2019 8:32:23 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 5/7/2019 8:32:23 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 5/7/2019 8:32:23 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 5/7/2019 8:32:23 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 5/7/2019 8:32:23 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/7/2019 8:32:23 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Back_Camera] FOREIGN KEY([BcamId])
REFERENCES [dbo].[Back_Camera] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Back_Camera]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Browser] FOREIGN KEY([Browser_Id])
REFERENCES [dbo].[Browser] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Browser]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Connectivity] FOREIGN KEY([Connectivity_Id])
REFERENCES [dbo].[Connectivity] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Connectivity]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Display] FOREIGN KEY([DPT_Id])
REFERENCES [dbo].[Display] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Display]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Front_Camera] FOREIGN KEY([FcamId])
REFERENCES [dbo].[Front_Camera] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Front_Camera]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_OperatingSystem] FOREIGN KEY([OS_Id])
REFERENCES [dbo].[OperatingSystem] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_OperatingSystem]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_OperatingSystem1] FOREIGN KEY([OS_Id])
REFERENCES [dbo].[OperatingSystem] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_OperatingSystem1]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_RAM] FOREIGN KEY([RamId])
REFERENCES [dbo].[RAM] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_RAM]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ROM] FOREIGN KEY([RamId])
REFERENCES [dbo].[ROM] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ROM]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_USB] FOREIGN KEY([USB_Id])
REFERENCES [dbo].[USB] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_USB]
GO
USE [master]
GO
ALTER DATABASE [dtbs15] SET  READ_WRITE 
GO
