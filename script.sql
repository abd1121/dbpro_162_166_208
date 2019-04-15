USE [master]
GO
/****** Object:  Database [DB15]    Script Date: 4/15/2019 3:56:17 PM ******/
CREATE DATABASE [DB15]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB15', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DB15.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DB15_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DB15_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB15] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB15].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB15] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB15] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB15] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB15] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB15] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB15] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB15] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB15] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB15] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB15] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB15] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB15] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB15] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB15] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB15] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB15] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB15] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB15] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB15] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB15] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB15] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB15] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB15] SET RECOVERY FULL 
GO
ALTER DATABASE [DB15] SET  MULTI_USER 
GO
ALTER DATABASE [DB15] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB15] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB15] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB15] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DB15] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB15', N'ON'
GO
USE [DB15]
GO
/****** Object:  Table [dbo].[Build]    Script Date: 4/15/2019 3:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Build](
	[Id] [int] NOT NULL,
	[OperatingSystem] [nvarchar](50) NOT NULL,
	[UserInterface] [nvarchar](50) NOT NULL,
	[Dimension] [nvarchar](50) NOT NULL,
	[Weight] [nvarchar](50) NOT NULL,
	[Sim] [nvarchar](50) NOT NULL,
	[Colors] [nvarchar](max) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Build] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Camera]    Script Date: 4/15/2019 3:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camera](
	[Main] [nvarchar](max) NULL,
	[Features] [nvarchar](max) NULL,
	[Front] [nvarchar](max) NULL,
	[Id] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Camera] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/15/2019 3:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] NOT NULL,
	[Manufacturer] [nvarchar](max) NOT NULL,
	[AddDate] [date] NOT NULL,
	[UpdateDate] [date] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Connectivity]    Script Date: 4/15/2019 3:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Connectivity](
	[WLAN] [nvarchar](max) NULL,
	[Bluetooth] [nvarchar](50) NULL,
	[GPS] [nvarchar](50) NULL,
	[Radio] [nvarchar](50) NULL,
	[USB] [nvarchar](max) NOT NULL,
	[NFC] [bit] NOT NULL,
	[Id] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Connectivity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Display]    Script Date: 4/15/2019 3:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Display](
	[Id] [int] NOT NULL,
	[Technology] [nvarchar](max) NOT NULL,
	[Size] [nvarchar](50) NOT NULL,
	[Resolution] [nvarchar](max) NOT NULL,
	[ExtraFeature] [nvarchar](max) NULL,
	[ProductId] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExtraFeatures]    Script Date: 4/15/2019 3:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraFeatures](
	[Sensors] [nvarchar](max) NULL,
	[Audio] [nvarchar](max) NOT NULL,
	[Browser] [nvarchar](50) NOT NULL,
	[Messaging] [nvarchar](max) NOT NULL,
	[Games] [nvarchar](max) NULL,
	[Torch] [nvarchar](50) NULL,
	[Id] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_ExtraFeatures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Frequency]    Script Date: 4/15/2019 3:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Frequency](
	[2G_Band] [nvarchar](max) NULL,
	[3G_Band] [nvarchar](max) NULL,
	[4G_Band] [nvarchar](max) NULL,
	[Id] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Frequency] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Processor]    Script Date: 4/15/2019 3:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Processor](
	[Id] [int] NOT NULL,
	[CPU] [nvarchar](max) NOT NULL,
	[Chipset] [nvarchar](max) NOT NULL,
	[GPU] [nvarchar](max) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Processor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/15/2019 3:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[AddDate] [date] NOT NULL,
	[UpdateDate] [date] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Specs]    Script Date: 4/15/2019 3:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specs](
	[Price] [int] NOT NULL,
	[Battery] [nvarchar](50) NOT NULL,
	[ROM] [nvarchar](50) NOT NULL,
	[Card] [nvarchar](50) NOT NULL,
	[ProductId] [int] NOT NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_Specs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Build]  WITH CHECK ADD  CONSTRAINT [FK_Build_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Build] CHECK CONSTRAINT [FK_Build_Product]
GO
ALTER TABLE [dbo].[Camera]  WITH CHECK ADD  CONSTRAINT [FK_Camera_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Camera] CHECK CONSTRAINT [FK_Camera_Product]
GO
ALTER TABLE [dbo].[Connectivity]  WITH CHECK ADD  CONSTRAINT [FK_Connectivity_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Connectivity] CHECK CONSTRAINT [FK_Connectivity_Product]
GO
ALTER TABLE [dbo].[Display]  WITH CHECK ADD  CONSTRAINT [FK_Display_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Display] CHECK CONSTRAINT [FK_Display_Product]
GO
ALTER TABLE [dbo].[ExtraFeatures]  WITH CHECK ADD  CONSTRAINT [FK_ExtraFeatures_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ExtraFeatures] CHECK CONSTRAINT [FK_ExtraFeatures_Product]
GO
ALTER TABLE [dbo].[Frequency]  WITH CHECK ADD  CONSTRAINT [FK_Frequency_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Frequency] CHECK CONSTRAINT [FK_Frequency_Product]
GO
ALTER TABLE [dbo].[Processor]  WITH CHECK ADD  CONSTRAINT [FK_Processor_Processor] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Processor] CHECK CONSTRAINT [FK_Processor_Processor]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Specs]  WITH CHECK ADD  CONSTRAINT [FK_Specs_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Specs] CHECK CONSTRAINT [FK_Specs_Product]
GO
USE [master]
GO
ALTER DATABASE [DB15] SET  READ_WRITE 
GO
