USE [master]
GO
/****** Object:  Database [DbSecimProje]    Script Date: 11.07.2023 00:55:35 ******/
CREATE DATABASE [DbSecimProje]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbSecimProje', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DbSecimProje.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DbSecimProje_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DbSecimProje_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DbSecimProje] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbSecimProje].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbSecimProje] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbSecimProje] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbSecimProje] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbSecimProje] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbSecimProje] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbSecimProje] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DbSecimProje] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbSecimProje] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbSecimProje] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbSecimProje] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbSecimProje] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbSecimProje] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbSecimProje] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbSecimProje] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbSecimProje] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DbSecimProje] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbSecimProje] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbSecimProje] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbSecimProje] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbSecimProje] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbSecimProje] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DbSecimProje] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbSecimProje] SET RECOVERY FULL 
GO
ALTER DATABASE [DbSecimProje] SET  MULTI_USER 
GO
ALTER DATABASE [DbSecimProje] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbSecimProje] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbSecimProje] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbSecimProje] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbSecimProje] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DbSecimProje] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DbSecimProje', N'ON'
GO
ALTER DATABASE [DbSecimProje] SET QUERY_STORE = OFF
GO
USE [DbSecimProje]
GO
/****** Object:  Table [dbo].[Tbl_Ilce]    Script Date: 11.07.2023 00:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Ilce](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[IlceAd] [varchar](50) NULL,
	[AParti] [smallint] NULL,
	[BParti] [smallint] NULL,
	[CParti] [smallint] NULL,
	[DParti] [smallint] NULL,
	[EParti] [smallint] NULL,
 CONSTRAINT [PK_Tbl_Ilce] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Ilce] ON 

INSERT [dbo].[Tbl_Ilce] ([ID], [IlceAd], [AParti], [BParti], [CParti], [DParti], [EParti]) VALUES (1, N'Kadıköy', 125, 25, 75, 136, 88)
INSERT [dbo].[Tbl_Ilce] ([ID], [IlceAd], [AParti], [BParti], [CParti], [DParti], [EParti]) VALUES (2, N'Beşiktaş', 155, 123, 123, 25, 65)
INSERT [dbo].[Tbl_Ilce] ([ID], [IlceAd], [AParti], [BParti], [CParti], [DParti], [EParti]) VALUES (3, N'Şişli', 25, 65, 45, 85, 95)
SET IDENTITY_INSERT [dbo].[Tbl_Ilce] OFF
GO
USE [master]
GO
ALTER DATABASE [DbSecimProje] SET  READ_WRITE 
GO
