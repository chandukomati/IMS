USE [master]
GO
/****** Object:  Database [ImsDB]    Script Date: 03-07-2022 13:54:49 ******/
CREATE DATABASE [ImsDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ImsDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ImsDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ImsDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ImsDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ImsDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ImsDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ImsDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ImsDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ImsDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ImsDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ImsDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ImsDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ImsDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ImsDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ImsDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ImsDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ImsDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ImsDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ImsDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ImsDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ImsDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ImsDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ImsDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ImsDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ImsDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ImsDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ImsDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ImsDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ImsDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ImsDB] SET  MULTI_USER 
GO
ALTER DATABASE [ImsDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ImsDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ImsDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ImsDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ImsDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ImsDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ImsDB', N'ON'
GO
ALTER DATABASE [ImsDB] SET QUERY_STORE = OFF
GO
USE [ImsDB]
GO
/****** Object:  Table [dbo].[tblProject]    Script Date: 03-07-2022 13:54:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProject](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Project] [nvarchar](200) NULL,
	[CreatedBy] [varchar](200) NULL,
	[CreatedOn] [datetime] NULL,
	[EditedBy] [nvarchar](200) NULL,
	[EditedOn] [datetime] NULL,
 CONSTRAINT [PK_tblProject] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRoleMaster]    Script Date: 03-07-2022 13:54:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoleMaster](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UserName] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[Role] [nvarchar](200) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[CreatedOn] [datetime] NULL,
	[EditedBy] [nvarchar](200) NULL,
	[EditedOn] [datetime] NULL,
 CONSTRAINT [PK_RoleMaster] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTGBuxar]    Script Date: 03-07-2022 13:54:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTGBuxar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DrawingNo] [nvarchar](50) NULL,
	[MarkNo] [nvarchar](50) NULL,
	[Batch] [nvarchar](50) NULL,
	[PartSerialNo] [nvarchar](50) NULL,
	[UnitWT] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [varchar](200) NULL,
	[CreatedOn] [datetime] NULL,
	[EditedBy] [nvarchar](200) NULL,
	[EditedOn] [datetime] NULL,
	[ProjectId] [int] NULL,
	[IsApprove] [bit] NULL,
	[VehicleNo] [nvarchar](150) NULL,
	[ApprovedBy] [varchar](200) NULL,
	[ApprovedOn] [datetime] NULL,
 CONSTRAINT [PK_tblTGBuxar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVehicle]    Script Date: 03-07-2022 13:54:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVehicle](
	[VehicleID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectID] [int] NULL,
	[VehicleNo] [nvarchar](200) NULL,
	[Status] [nvarchar](200) NULL,
	[CreatedBy] [varchar](200) NULL,
	[CreatedOn] [datetime] NULL,
	[EditedBy] [nvarchar](200) NULL,
	[EditedOn] [datetime] NULL,
 CONSTRAINT [PK_tblVehicle] PRIMARY KEY CLUSTERED 
(
	[VehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblRoleMaster] ON 
GO
INSERT [dbo].[tblRoleMaster] ([RoleId], [Name], [UserName], [Password], [Role], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn]) VALUES (1, N'jai', N'jaipal@gmail.com', N'j', N'LOG', 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblRoleMaster] ([RoleId], [Name], [UserName], [Password], [Role], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn]) VALUES (2, N'Praveens', N'praveen@gmail.com', N'praveen123', N'PMG', 1, NULL, NULL, N'chandukomati53@gmail.com', CAST(N'2022-06-29T15:11:30.473' AS DateTime))
GO
INSERT [dbo].[tblRoleMaster] ([RoleId], [Name], [UserName], [Password], [Role], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn]) VALUES (3, N'chandrashekhar komatii', N'chandukomati53@gmail.com', N'ADMIN', N'PMG', 1, N'jaipal@gmail.com', CAST(N'2022-06-11T16:30:59.233' AS DateTime), N'jaipal@gmail.com', CAST(N'2022-06-11T16:32:50.760' AS DateTime))
GO
INSERT [dbo].[tblRoleMaster] ([RoleId], [Name], [UserName], [Password], [Role], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn]) VALUES (4, N'shusang', N'jaipal', N'LOG', N'LOG', 1, N'chandukomati53@gmail.com', CAST(N'2022-06-29T15:08:30.930' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblRoleMaster] OFF
GO
/****** Object:  StoredProcedure [dbo].[GetProjectItemCount]    Script Date: 03-07-2022 13:54:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetProjectItemCount]

AS
BEGIN
select p.Project,count(i.ID) as TotalItem, count(i.IsApprove) as TotalApprove
from tblProject p
left join tblTGBuxar i on p.ID = i.ProjectId
group by p.Project
END
GO
USE [master]
GO
ALTER DATABASE [ImsDB] SET  READ_WRITE 
GO
