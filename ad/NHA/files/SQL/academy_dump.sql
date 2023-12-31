USE [master]
GO
/****** Object:  Database [academy]    Script Date: 8/26/2023 3:45:18 PM ******/
CREATE DATABASE [academy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'academy', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\academy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'academy_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\academy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [academy] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [academy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [academy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [academy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [academy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [academy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [academy] SET ARITHABORT OFF 
GO
ALTER DATABASE [academy] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [academy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [academy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [academy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [academy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [academy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [academy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [academy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [academy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [academy] SET  ENABLE_BROKER 
GO
ALTER DATABASE [academy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [academy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [academy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [academy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [academy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [academy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [academy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [academy] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [academy] SET  MULTI_USER 
GO
ALTER DATABASE [academy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [academy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [academy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [academy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [academy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [academy] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [academy] SET QUERY_STORE = OFF
GO
USE [academy]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 8/26/2023 3:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] NOT NULL,
	[Firstname] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Team] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Students] ([Id], [Firstname], [LastName], [Team]) VALUES (1, N'Noah', N'Young', N'7 (David)')
INSERT [dbo].[Students] ([Id], [Firstname], [LastName], [Team]) VALUES (2, N'Samuel', N'Evans', N'7 (David)')
INSERT [dbo].[Students] ([Id], [Firstname], [LastName], [Team]) VALUES (3, N'Willa', N'Wilson', N'7 (David)')
INSERT [dbo].[Students] ([Id], [Firstname], [LastName], [Team]) VALUES (4, N'Zane', N'Harris', N'8 (Yara)')
INSERT [dbo].[Students] ([Id], [Firstname], [LastName], [Team]) VALUES (5, N'Ethan', N'Miller', N'8 (Yara)')
INSERT [dbo].[Students] ([Id], [Firstname], [LastName], [Team]) VALUES (6, N'Scott', N'Quinn', N'8 (Yara)')
INSERT [dbo].[Students] ([Id], [Firstname], [LastName], [Team]) VALUES (7, N'Victor', N'Gonzalez', N'9 (Katherine)')
INSERT [dbo].[Students] ([Id], [Firstname], [LastName], [Team]) VALUES (8, N'Lee', N'Liam', N'9 (Katherine)')
INSERT [dbo].[Students] ([Id], [Firstname], [LastName], [Team]) VALUES (9, N'Taylor', N'Brown', N'9 (Katherine)')
INSERT [dbo].[Students] ([Id], [Firstname], [LastName], [Team]) VALUES (10, N'Sophia', N'Taylor', N'10 (Uma)')
INSERT [dbo].[Students] ([Id], [Firstname], [LastName], [Team]) VALUES (11, N'Charlie', N'Davis', N'10 (Uma)')
INSERT [dbo].[Students] ([Id], [Firstname], [LastName], [Team]) VALUES (12, N'Isabella', N'Yamanaka', N'10 (Uma)')
GO
USE [master]
GO
ALTER DATABASE [academy] SET  READ_WRITE 
GO
