USE [ImsDB]
GO
/****** Object:  UserDefinedTableType [dbo].[TGbox]    Script Date: 17-05-2023 21:27:16 ******/
CREATE TYPE [dbo].[TGbox] AS TABLE(
	[ProjectId] [int] NULL,
	[DrawingNo] [nvarchar](50) NULL,
	[MarkNo] [nvarchar](50) NULL,
	[Batch] [nvarchar](50) NULL,
	[PartSerialNo] [nvarchar](50) NULL,
	[UnitWT] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](10) NULL,
	[CreatedOn] [datetime] NULL
)
GO
/****** Object:  Table [dbo].[tblProject]    Script Date: 17-05-2023 21:27:16 ******/
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
/****** Object:  Table [dbo].[tblRoleMaster]    Script Date: 17-05-2023 21:27:16 ******/
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
/****** Object:  Table [dbo].[tblTGBuxar]    Script Date: 17-05-2023 21:27:16 ******/
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
/****** Object:  Table [dbo].[tblVehicle]    Script Date: 17-05-2023 21:27:16 ******/
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
SET IDENTITY_INSERT [dbo].[tblProject] ON 
GO
INSERT [dbo].[tblProject] ([ID], [Project], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn]) VALUES (1, N'test2', N'jaipal@gmail.com', CAST(N'2022-07-04T18:10:42.110' AS DateTime), N'chandukomati53@gmail.com', CAST(N'2023-05-17T21:22:41.943' AS DateTime))
GO
INSERT [dbo].[tblProject] ([ID], [Project], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn]) VALUES (2, N'tets2', N'jaipal@gmail.com', CAST(N'2022-07-04T18:17:21.500' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblProject] ([ID], [Project], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn]) VALUES (3, N'TG', N'chandukomati53@gmail.com', CAST(N'2022-07-12T14:23:26.783' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblProject] ([ID], [Project], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn]) VALUES (4, N'HZW', N'20005952', CAST(N'2022-12-23T18:23:05.020' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblProject] OFF
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
INSERT [dbo].[tblRoleMaster] ([RoleId], [Name], [UserName], [Password], [Role], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn]) VALUES (7, N'chandu komati', N'CHANDU@gmail.com', N'PMG', N'PMG', 1, N'chandukomati53@gmail.com', CAST(N'2023-05-17T21:19:25.180' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblRoleMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTGBuxar] ON 
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (1, N'0011-02SC1001', N'0011-02SC1001', N'B/G11111', N'1/1', N'0.06119', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, 1, N'GJ05GK9562', N'chandukomati53@gmail.com', CAST(N'2022-08-04T17:25:33.590' AS DateTime))
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (2, N'0011-02SC1003', N'0011-02SC1003', N'B/G111314', N'1/4', N'0.0549575', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (3, N'0011-02SC1003', N'0011-02SC1003', N'B/G111324', N'2/4', N'0.0549575', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (4, N'0047C-04SC1002', N'0047C-04SC1002', N'B/GSC10211', N'1/1', N'0.08738', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (5, N'0080-04SC1011', N'0080-04SC1011', N'B/OB101111', N'1/1', N'0.3937', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (6, N'0011-02PU9005', N'0011-02PU9005', N'B/G119511', N'1/1', N'0.10357', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, 1, N'GJ05GK9566', N'chandukomati53@gmail.com', CAST(N'2022-08-06T11:07:14.800' AS DateTime))
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (7, N'0018A-08HB5012', N'0018A-08HB5012', N'B/8B501212', N'1/2', N'0.752225', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (8, N'0018A-08HB5012', N'0018A-08HB5012', N'B/8B501222', N'2/2', N'0.752225', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (9, N'0018B-10HB5007', N'0018B-10HB5007', N'B/FB500711', N'1/1', N'0.75189', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (10, N'0047C-04SB3016', N'0047C-04SB3016', N'B/GSB01622', N'2/2', N'0.13875', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (11, N'0047C-04SB3019', N'0047C-04SB3019', N'B/GSB01922', N'2/2', N'0.14105', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (12, N'0047C-04ST8011', N'0047C-04ST8011', N'B/GST01112', N'1/2', N'0.202115', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (13, N'0047C-04ST8011', N'0047C-04ST8011', N'B/GST01122', N'2/2', N'0.202115', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (14, N'0047C-04ST8012', N'0047C-04ST8012', N'B/GST01211', N'1/1', N'0.20548', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (15, N'0080-04SB3025', N'0080-04SB3025', N'B/OB302511', N'1/1', N'0.16266', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (16, N'0080-04ST8002', N'0080-04ST8002', N'B/ST800212', N'1/2', N'0.197275', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (17, N'0080-04ST8002', N'0080-04ST8002', N'B/ST800222', N'2/2', N'0.197275', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (18, N'0080-04ST8006', N'0080-04ST8006', N'B/OB800611', N'1/1', N'0.20659', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (19, N'0080-04ST8015', N'0080-04ST8015', N'B/ST801511', N'1/1', N'0.19816', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (20, N'0080-04ST8017', N'0080-04ST8017', N'B/ST801711', N'1/1', N'0.19726', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (21, N'0083A-01HG1003', N'0083A-01HG1003', N'B/G1HG1318', N'1/8', N'0.0129425', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (22, N'0083A-01HG1003', N'0083A-01HG1003', N'B/G1HG1328', N'2/8', N'0.0129425', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (23, N'0083A-01HG1003', N'0083A-01HG1003', N'B/G1HG1338', N'3/8', N'0.0129425', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (24, N'0083A-01HG1003', N'0083A-01HG1003', N'B/G1HG1348', N'4/8', N'0.0129425', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (25, N'0083A-01HG1003', N'0083A-01HG1003', N'B/G1HG1358', N'5/8', N'0.0129425', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (26, N'0083A-01HG1003', N'0083A-01HG1003', N'B/G1HG1368', N'6/8', N'0.0129425', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (27, N'0083A-01HG1003', N'0083A-01HG1003', N'B/G1HG1378', N'7/8', N'0.0129425', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (28, N'0083A-01HG1003', N'0083A-01HG1003', N'B/G1HG1388', N'8/8', N'0.0129425', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (29, N'0083A-01XB3021', N'0083A-01XB3021', N'B/G1B32112', N'1/2', N'0.11819', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (30, N'0083A-01XB3021', N'0083A-01XB3021', N'B/G1B32122', N'2/2', N'0.11819', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (31, N'0083A-04HG1004', N'0083A-04HG1004', N'B/G4G10043', N'3/14', N'0.016335', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (32, N'0083A-04HG1004', N'0083A-04HG1004', N'B/G4G10044', N'4/14', N'0.016335', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (33, N'0083A-04HG1004', N'0083A-04HG1004', N'B/G4G10045', N'5/14', N'0.016335', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (34, N'0083A-04HG1004', N'0083A-04HG1004', N'B/G4G10046', N'6/14', N'0.016335', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (35, N'0083A-04HG1004', N'0083A-04HG1004', N'B/G4G10047', N'7/14', N'0.016335', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (36, N'0083A-04HG1004', N'0083A-04HG1004', N'B/G4G10048', N'8/14', N'0.016335', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (37, N'0083A-04HG1004', N'0083A-04HG1004', N'B/G4G10049', N'9/14', N'0.016335', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (38, N'0083A-04HG1004', N'0083A-04HG1004', N'B/G4HG141', N'10/14', N'0.016335', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (39, N'0083A-04HG1004', N'0083A-04HG1004', N'B/G4HG1411', N'11/14', N'0.016335', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (40, N'0083A-04HG1004', N'0083A-04HG1004', N'B/G4HG1412', N'12/14', N'0.016335', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (41, N'0083A-04HG1004', N'0083A-04HG1004', N'B/G4HG1413', N'13/14', N'0.016335', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (42, N'0083A-04HG1004', N'0083A-04HG1004', N'B/G4HG1004', N'14/14', N'0.016335', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (43, N'0083A-04HG1006', N'0083A-04HG1006', N'B/G4HG1617', N'1/7', N'0.0158842857142857', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (44, N'0083A-04HG1006', N'0083A-04HG1006', N'B/G4HG1627', N'2/7', N'0.0158842857142857', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (45, N'0083A-04HG1006', N'0083A-04HG1006', N'B/G4HG1637', N'3/7', N'0.0158842857142857', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (46, N'0083A-04HG1006', N'0083A-04HG1006', N'B/G4HG1647', N'4/7', N'0.0158842857142857', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (47, N'0083A-04HG1006', N'0083A-04HG1006', N'B/G4HG1657', N'5/7', N'0.0158842857142857', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (48, N'0083A-04HG1006', N'0083A-04HG1006', N'B/G4HG1667', N'6/7', N'0.0158842857142857', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (49, N'0083A-04HG1006', N'0083A-04HG1006', N'B/G4HG1677', N'7/7', N'0.0158842857142857', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (50, N'0083A-04HG1008', N'0083A-04HG1008', N'B/G4HG1814', N'1/4', N'0.01665', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (51, N'0083A-04HG1008', N'0083A-04HG1008', N'B/G4HG1824', N'2/4', N'0.01665', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (52, N'0083A-04HG1008', N'0083A-04HG1008', N'B/G4HG1834', N'3/4', N'0.01665', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (53, N'0083A-04HG1008', N'0083A-04HG1008', N'B/G4HG1844', N'4/4', N'0.01665', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (54, N'0083A-04HG1013', N'0083A-04HG1013', N'B/G4HG131', N'1/10', N'0.016561', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (55, N'0083A-04HG1013', N'0083A-04HG1013', N'B/G4HG132', N'2/10', N'0.016561', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (56, N'0083A-04HG1013', N'0083A-04HG1013', N'B/G4HG133', N'3/10', N'0.016561', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (57, N'0083A-04HG1013', N'0083A-04HG1013', N'B/G4HG134', N'4/10', N'0.016561', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (58, N'0083A-04HG1013', N'0083A-04HG1013', N'B/G4HG135', N'5/10', N'0.016561', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (59, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G10152', N'2/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (60, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G10153', N'3/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (61, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G10154', N'4/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (62, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G10155', N'5/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (63, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G10156', N'6/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (64, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G10157', N'7/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (65, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G10158', N'8/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (66, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G10159', N'9/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (67, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4HG1151', N'10/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (68, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11511', N'11/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (69, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11512', N'12/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (70, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11513', N'13/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (71, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11514', N'14/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (72, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11515', N'15/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (73, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11516', N'16/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (74, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11517', N'17/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (75, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11518', N'18/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (76, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11519', N'19/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (77, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4HG1152', N'20/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (78, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11521', N'21/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (79, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11522', N'22/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (80, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11523', N'23/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (81, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11524', N'24/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (82, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11525', N'25/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (83, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11526', N'26/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (84, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11527', N'27/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (85, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11528', N'28/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (86, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11529', N'29/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (87, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4HG1153', N'30/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (88, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11531', N'31/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (89, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11532', N'32/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (90, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4G11533', N'33/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (91, N'0083A-04HG1015', N'0083A-04HG1015', N'B/G4HG1015', N'34/34', N'0.015435', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (92, N'0083A-04HG1020', N'0083A-04HG1020', N'B/G4HG1211', N'1/1', N'0.01716', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (93, N'0083A-04HG1026', N'0083A-04HG1026', N'B/G4G12612', N'1/2', N'0.015875', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (94, N'0083A-04HG1026', N'0083A-04HG1026', N'B/G4G12622', N'2/2', N'0.015875', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (95, N'0083A-04HG1028', N'0083A-04HG1028', N'B/G4G12811', N'1/1', N'0.01745', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (96, N'0083A-04HG1033', N'0083A-04HG1033', N'B/G4G13312', N'1/2', N'0.01767', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (97, N'0083A-04HG1033', N'0083A-04HG1033', N'B/G4G13322', N'2/2', N'0.01767', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (98, N'0083A-04HG1035', N'0083A-04HG1035', N'B/G4G13514', N'1/4', N'0.0158725', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (99, N'0083A-04HG1035', N'0083A-04HG1035', N'B/G4G13524', N'2/4', N'0.0158725', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (100, N'0083A-04HG1035', N'0083A-04HG1035', N'B/G4G13534', N'3/4', N'0.0158725', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (101, N'0083A-04HG1042', N'0083A-04HG1042', N'B/G4G14212', N'1/2', N'0.01722', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (102, N'0083A-04HG1042', N'0083A-04HG1042', N'B/G4G14222', N'2/2', N'0.01722', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (103, N'0083A-04HG1048', N'0083A-04HG1048', N'B/G4G14811', N'1/1', N'0.01589', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (104, N'0083A-04HG1049', N'0083A-04HG1049', N'B/G4G14911', N'1/1', N'0.01589', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (105, N'0083A-04WB7001', N'0083A-04WB7001', N'B/G4WB7122', N'2/2', N'0.456235', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (106, N'0083A-04XB3052', N'0083A-04XB3052', N'B/G4B35217', N'1/7', N'0.123708571428571', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (107, N'0083A-04XB3052', N'0083A-04XB3052', N'B/G4B35227', N'2/7', N'0.123708571428571', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (108, N'0083A-04XB3052', N'0083A-04XB3052', N'B/G4B35237', N'3/7', N'0.123708571428571', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (109, N'0083A-04XB3052', N'0083A-04XB3052', N'B/G4B35247', N'4/7', N'0.123708571428571', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (110, N'0083A-04XB3052', N'0083A-04XB3052', N'B/G4B35257', N'5/7', N'0.123708571428571', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (111, N'0083A-04XB3052', N'0083A-04XB3052', N'B/G4B35267', N'6/7', N'0.123708571428571', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (112, N'0083A-04XB3052', N'0083A-04XB3052', N'B/G4B35277', N'7/7', N'0.123708571428571', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (113, N'0083A-04XB3060', N'0083A-04XB3060', N'B/G4XB3611', N'1/1', N'0.12162', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (114, N'0083A-04XB3074', N'0083A-04XB3074', N'B/G4B37411', N'1/1', N'0.02189', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (115, N'0083A-04XB3099', N'0083A-04XB3099', N'B/G4B39912', N'1/2', N'0.097415', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (116, N'0083A-04XB3099', N'0083A-04XB3099', N'B/G4B39922', N'2/2', N'0.097415', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (117, N'0083A-04XB3100', N'0083A-04XB3100', N'B/G4XB111', N'1/1', N'0.09742', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (118, N'0083A-04XB3104', N'0083A-04XB3104', N'B/G4B31411', N'1/1', N'0.11085', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (119, N'0083A-04XB3107', N'0083A-04XB3107', N'B/G4B31711', N'1/1', N'0.11085', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (120, N'0083A-04XB3110', N'0083A-04XB3110', N'B/G4B3112', N'1/2', N'0.11085', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (121, N'0083A-04XB3110', N'0083A-04XB3110', N'B/G4B31122', N'2/2', N'0.11085', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (122, N'0083A-04XB3126', N'0083A-04XB3126', N'B/G4312611', N'1/1', N'0.12531', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (123, N'0083A-04XB3130', N'0083A-04XB3130', N'B/G4B11', N'1/1', N'0.12631', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (124, N'0083A-04XB3139', N'0083A-04XB3139', N'B/G4313911', N'1/1', N'0.0974', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (125, N'0120C-01HB5009', N'0120C-01HB5009', N'B/ZX500911', N'1/1', N'0.03749', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (126, N'0120C-01HB5035', N'0120C-01HB5035', N'B/HB03511', N'1/1', N'0.02754', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (127, N'026B-HB5007', N'026B-HB5007', N'B/50071/1', N'1/1', N'0.00165', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (128, N'1411A-01HB5210', N'1411A-01HB5210', N'B/HB521022', N'2/2', N'0.038955', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (129, N'0083A-07WB7005', N'0083A-07WB7005', N'BTWB70059', N'1/1', N'0.24597', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (130, N'0083A-07XB3001', N'0083A-07XB3001', N'BTXB300137', N'1/3', N'0.0164233333333333', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (131, N'0083A-07XB3001', N'0083A-07XB3001', N'BTXB300138', N'2/3', N'0.0164233333333333', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (132, N'0083A-07XB3001', N'0083A-07XB3001', N'BTXB300139', N'3/3', N'0.0164233333333333', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (133, N'1411C-01ST8006', N'1411C-01ST8006', N'BS8006272', N'1/1', N'0.03611', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (134, N'0027A-05SB3002', N'0027A-05SB3002', N'BSB300222', N'1/1', N'0.24683', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (135, N'0027A-05SB3025', N'0027A-05SB3025', N'BSB302541', N'1/1', N'1.56892', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (136, N'0027A-05SB3033', N'0027A-05SB3033', N'BSB303347', N'1/1', N'2.1324', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (137, N'0027A-05SB3056', N'0027A-05SB3056', N'BSB305667', N'1/1', N'2.31375', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (138, N'0027A-07SB3011', N'0027A-07SB3011', N'BSB3011102', N'1/1', N'0.12142', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (139, N'0027A-07SB3023', N'0027A-07SB3023', N'BSB3023111', N'1/1', N'2.31375', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (140, N'0027A-07SB3027', N'0027A-07SB3027', N'BSB3027114', N'1/1', N'1.97096', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (141, N'0027A-07SB3029', N'0027A-07SB3029', N'BSB3029116', N'1/1', N'2.28878', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (142, N'0027A-07SB3041', N'0027A-07SB3041', N'BSB3041127', N'1/1', N'2.74624', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (143, N'0027A-07SB3061', N'0027A-07SB3061', N'BSB3061141', N'1/1', N'0.05752', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (144, N'0027A-07SB3062', N'0027A-07SB3062', N'BSB3062142', N'1/1', N'0.07133', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (145, N'0027A-07ST8001', N'0027A-07ST8001', N'BST8001162', N'1/1', N'0.16575', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (146, N'0027A-07ST8003', N'0027A-07ST8003', N'BST8003164', N'1/1', N'0.15837', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (147, N'0027A-07SB3012', N'0027A-07SB3012', N'BSB3012193', N'2/2', N'2.31374', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (148, N'0027A-07SB3048', N'0027A-07SB3048', N'BSB3048200', N'1/2', N'0.098585', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (149, N'0027A-07SB3048', N'0027A-07SB3048', N'BSB3048201', N'2/2', N'0.098585', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (150, N'0027A-07SB3014', N'0027A-07SB3014', N'BSB3014220', N'1/4', N'0.05682', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (151, N'0027A-07SB3014', N'0027A-07SB3014', N'BSB3014221', N'2/4', N'0.05682', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (152, N'0027A-07SB3014', N'0027A-07SB3014', N'BSB3014222', N'3/4', N'0.05682', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (153, N'0027A-07SB3014', N'0027A-07SB3014', N'BSB3014223', N'4/4', N'0.05682', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (154, N'0027A-05SB3030', N'0027A-05SB3030', N'BSB3030224', N'1/5', N'0.031258', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (155, N'0027A-05SB3030', N'0027A-05SB3030', N'BSB3030225', N'2/5', N'0.031258', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (156, N'0027A-05SB3030', N'0027A-05SB3030', N'BSB3030226', N'3/5', N'0.031258', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (157, N'0027A-05SB3030', N'0027A-05SB3030', N'BSB3030227', N'4/5', N'0.031258', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (158, N'0027A-05SB3030', N'0027A-05SB3030', N'BSB3030228', N'5/5', N'0.031258', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (159, N'0027A-07ST8006', N'0027A-07ST8006', N'BST8006167', N'1/1', N'0.18653', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (160, N'0025A-05SB3012', N'0025A-05SB3012', N'BSB301211', N'1/1', N'1.95757', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (161, N'0025A-06HB5015', N'0025A-06HB5015', N'BHB501576', N'1/1', N'0.02473', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (162, N'0025A-06HB5038', N'0025A-06HB5038', N'BHB503894', N'1/1', N'0.08004', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (163, N'0025A-06HB5045', N'0025A-06HB5045', N'BHB504599', N'1/1', N'0.0689', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (164, N'0025A-06HB5061', N'0025A-06HB5061', N'BHB5061115', N'1/1', N'0.03693', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (165, N'0025A-06SB3099', N'0025A-06SB3099', N'BSB3099205', N'1/1', N'1.97999', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (166, N'0025A-07SB3009', N'0025A-07SB3009', N'BSB3009221', N'1/1', N'1.82271', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (167, N'0025A-07SB3019', N'0025A-07SB3019', N'BSB3019229', N'1/1', N'2.28116', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (168, N'0025A-07SB3057', N'0025A-07SB3057', N'BSB3057263', N'1/1', N'0.05769', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (169, N'0025A-08FB2014', N'0025A-08FB2014', N'BFB2014283', N'1/1', N'1.8185', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (170, N'0025A-08FB2017', N'0025A-08FB2017', N'BFB2017286', N'1/1', N'1.00159', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (171, N'0025A-08FB2024', N'0025A-08FB2024', N'BFB2024293', N'1/1', N'0.55901', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (172, N'0025A-08SB3007', N'0025A-08SB3007', N'BSB3007363', N'1/1', N'0.87074', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (173, N'0025A-08SB3013', N'0025A-08SB3013', N'BSB3013368', N'1/1', N'1.21176', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (174, N'0025A-08SB3039', N'0025A-08SB3039', N'BSB3039392', N'1/1', N'0.23128', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (175, N'0025A-08SB3045', N'0025A-08SB3045', N'BSB3045397', N'1/1', N'1.92616', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (176, N'0025A-08SB3061', N'0025A-08SB3061', N'BSB3061411', N'1/1', N'1.90803', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (177, N'0025A-08SB3092', N'0025A-08SB3092', N'BSB3092432', N'1/1', N'0.05134', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (178, N'0025A-08SB3001', N'0025A-08SB3001', N'BSB3001508', N'1/2', N'0.09787', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (179, N'0025A-08SB3001', N'0025A-08SB3001', N'BSB3001509', N'2/2', N'0.09787', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (180, N'0025A-06FB2020', N'0025A-06FB2020', N'BFB202059', N'1/1', N'0.99033', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (181, N'0022A-06SB3010', N'0022A-06SB3010', N'BSB3010141', N'1/1', N'1.263', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (182, N'0022A-07HB5003', N'0022A-07HB5003', N'BHB5003259', N'1/1', N'0.06469', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (183, N'0022A-07SB3010', N'0022A-07SB3010', N'BSB3010270', N'1/1', N'0.03341', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (184, N'0022A-07SB3016', N'0022A-07SB3016', N'BSB3016276', N'1/1', N'0.03453', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (185, N'0022A-07SB3024', N'0022A-07SB3024', N'BSB3024283', N'1/1', N'0.05263', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (186, N'0022A-07SB3047', N'0022A-07SB3047', N'BSB3047302', N'1/1', N'0.04391', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (187, N'0022A-08FB2003', N'0022A-08FB2003', N'BFB2003311', N'1/1', N'0.86732', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (188, N'0022A-08FB2009', N'0022A-08FB2009', N'BFB2009317', N'1/1', N'0.96907', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (189, N'0022A-08FB2011', N'0022A-08FB2011', N'BFB2011319', N'1/1', N'2.42867', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (190, N'0022A-08FB2012', N'0022A-08FB2012', N'BFB2012320', N'1/1', N'2.12791', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (191, N'0022A-08HB5002', N'0022A-08HB5002', N'BHB5002338', N'1/1', N'0.0436', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (192, N'0022A-08HB5003', N'0022A-08HB5003', N'BHB5003339', N'1/1', N'0.0655', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (193, N'0022A-08HB5007', N'0022A-08HB5007', N'BHB5007342', N'1/1', N'0.0494', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (194, N'0022A-08HB5011', N'0022A-08HB5011', N'BHB5011346', N'1/1', N'0.05058', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (195, N'0022A-08HB5013', N'0022A-08HB5013', N'BHB5013348', N'1/1', N'0.05116', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (196, N'0022A-08HB5025', N'0022A-08HB5025', N'BHB5025359', N'1/1', N'0.05909', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (197, N'0022A-08HB5040', N'0022A-08HB5040', N'BHB5040374', N'1/1', N'0.04977', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (198, N'0022A-08HB5058', N'0022A-08HB5058', N'BHB5058390', N'1/1', N'0.07442', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (199, N'0022A-08HB5069', N'0022A-08HB5069', N'BHB5069400', N'1/1', N'0.03565', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (200, N'0022A-08MR6004', N'0022A-08MR6004', N'BMR6004413', N'1/1', N'0.58499', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (201, N'0022A-08SB3030', N'0022A-08SB3030', N'BSB3030438', N'1/1', N'1.64592', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (202, N'0022A-08SB3037', N'0022A-08SB3037', N'BSB3037444', N'1/1', N'1.6134', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (203, N'0022A-08SB3088', N'0022A-08SB3088', N'BSB3088483', N'1/1', N'0.05624', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (204, N'0022A-08SB3095', N'0022A-08SB3095', N'BSB3095490', N'1/1', N'0.07565', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (205, N'0022A-08SB3103', N'0022A-08SB3103', N'BSB3103498', N'1/1', N'0.07379', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (206, N'0022A-08VB4010', N'0022A-08VB4010', N'BVB4010545', N'1/1', N'0.17633', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (207, N'0022A-06SB3008', N'0022A-06SB3008', N'BSB3008564', N'1/2', N'0.04674', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (208, N'0022A-06SB3008', N'0022A-06SB3008', N'BSB3008565', N'2/2', N'0.04674', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (209, N'0022A-06SB3027', N'0022A-06SB3027', N'BSB3027574', N'1/2', N'0.054415', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (210, N'0022A-08BK3004', N'0022A-08BK3004', N'BBK3004306', N'1/1', N'0.49609', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (211, N'0046A-06FB2003', N'0046A-06FB2003', N'BFB20033', N'1/1', N'0.89909', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (212, N'0046A-06SB3005', N'0046A-06SB3005', N'BSB300515', N'1/1', N'1.93145', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (213, N'0046A-06ST8001', N'0046A-06ST8001', N'BST800123', N'1/1', N'0.13771', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (214, N'0069A-05SR7020', N'0069A-05SR7020', N'BTSR702019', N'1/1', N'0.0669', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (215, N'0069A-06SR7001', N'0069A-06SR7001', N'BTSR700136', N'1/1', N'0.13087', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (216, N'0069A-06SR7013', N'0069A-06SR7013', N'BTSR701347', N'1/1', N'0.15337', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (217, N'0069A-06SR7016', N'0069A-06SR7016', N'BTSR701649', N'1/1', N'0.14495', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (218, N'0069A-06SR7025', N'0069A-06SR7025', N'BTSR702558', N'1/1', N'0.2601', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (219, N'0069A-06SR7039', N'0069A-06SR7039', N'BTSR703969', N'1/1', N'0.1428', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (220, N'0069A-06SR7054', N'0069A-06SR7054', N'BTSR705481', N'1/1', N'0.1512', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (221, N'0069A-06SR7074', N'0069A-06SR7074', N'BTSR707499', N'1/1', N'0.11844', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (222, N'0069A-06SR7046', N'0069A-06SR7046', N'BSR7046182', N'1/9', N'0.2754', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (223, N'0045A-02GP7003', N'0045A-02GP7003', N'BTGP70031', N'1/1', N'0.02511', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (224, N'0045A-02GP7004', N'0045A-02GP7004', N'BTGP70042', N'1/1', N'0.02511', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (225, N'0045A-02GP7014', N'0045A-02GP7014', N'BTGP70146', N'1/1', N'0.07111', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (226, N'0045A-02SR7004', N'0045A-02SR7004', N'BTSR700412', N'1/1', N'0.02528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (227, N'0045A-02SR7006', N'0045A-02SR7006', N'BTSR700614', N'1/1', N'0.90681', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (228, N'0045A-02SR7024', N'0045A-02SR7024', N'BTSR702427', N'1/1', N'0.05601', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (229, N'0045A-02SR7042', N'0045A-02SR7042', N'BTSR704244', N'1/1', N'0.06189', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (230, N'0045A-02SA7003', N'0045A-02SA7003', N'BTSA700388', N'1/2', N'0.00447', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (231, N'0045A-02SA7003', N'0045A-02SA7003', N'BTSA700389', N'2/2', N'0.00447', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (232, N'0045A-02SA7005', N'0045A-02SA7005', N'BTSA005109', N'1/3', N'0.00492333333333333', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (233, N'0045A-02SA7005', N'0045A-02SA7005', N'BTSA005110', N'2/3', N'0.00492333333333333', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (234, N'0045A-02SA7005', N'0045A-02SA7005', N'BTSA005111', N'3/3', N'0.00492333333333333', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (235, N'0045A-02SR7022', N'0045A-02SR7022', N'BTSR022116', N'1/4', N'0.05935', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (236, N'0045A-02SR7022', N'0045A-02SR7022', N'BTSR02211', N'2/4', N'0.05935', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (237, N'0045A-02SR7022', N'0045A-02SR7022', N'BTSR022118', N'3/4', N'0.05935', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (238, N'0045A-02SR7022', N'0045A-02SR7022', N'BTSR022119', N'4/4', N'0.05935', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (239, N'0045A-02SA7006', N'0045A-02SA7006', N'BTSA006126', N'1/6', N'0.00444166666666667', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (240, N'0045A-02SA7006', N'0045A-02SA7006', N'BTSA00612', N'2/6', N'0.00444166666666667', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (241, N'0045A-02SA7006', N'0045A-02SA7006', N'BTSA006128', N'3/6', N'0.00444166666666667', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (242, N'0045A-02SA7006', N'0045A-02SA7006', N'BTSA006129', N'4/6', N'0.00444166666666667', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (243, N'0045A-02SA7006', N'0045A-02SA7006', N'BTSA006130', N'5/6', N'0.00444166666666667', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (244, N'0045A-02SA7006', N'0045A-02SA7006', N'BTSA006131', N'6/6', N'0.00444166666666667', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (245, N'0045A-02GP7008', N'0045A-02GP7008', N'BTGP008132', N'1/14', N'0.0217485714285714', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (246, N'0045A-02GP7008', N'0045A-02GP7008', N'BTGP008133', N'2/14', N'0.0217485714285714', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (247, N'0045A-02GP7008', N'0045A-02GP7008', N'BTGP008134', N'3/14', N'0.0217485714285714', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (248, N'0045A-02GP7008', N'0045A-02GP7008', N'BTGP008135', N'4/14', N'0.0217485714285714', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (249, N'0045A-02GP7008', N'0045A-02GP7008', N'BTGP008136', N'5/14', N'0.0217485714285714', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (250, N'0045A-02GP7008', N'0045A-02GP7008', N'BTGP00813', N'6/14', N'0.0217485714285714', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (251, N'0045A-02GP7008', N'0045A-02GP7008', N'BTGP008138', N'7/14', N'0.0217485714285714', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (252, N'0045A-02GP7008', N'0045A-02GP7008', N'BTGP008139', N'8/14', N'0.0217485714285714', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (253, N'0045A-02GP7008', N'0045A-02GP7008', N'BTGP008140', N'9/14', N'0.0217485714285714', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (254, N'0045A-02GP7008', N'0045A-02GP7008', N'BTGP008141', N'10/14', N'0.0217485714285714', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (255, N'0045A-02GP7008', N'0045A-02GP7008', N'BTGP008142', N'11/14', N'0.0217485714285714', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (256, N'0045A-02GP7008', N'0045A-02GP7008', N'BTGP008143', N'12/14', N'0.0217485714285714', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (257, N'0045A-02GP7008', N'0045A-02GP7008', N'BTGP008144', N'13/14', N'0.0217485714285714', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (258, N'0045A-02GP7008', N'0045A-02GP7008', N'BTGP008145', N'14/14', N'0.0217485714285714', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (259, N'0066-05SB3015', N'0066-05SB3015', N'BTSB30512', N'1/1', N'0.03521', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (260, N'0066-05SC1010', N'0066-05SC1010', N'BTSC101028', N'1/1', N'0.25732', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (261, N'0066-05SC1023', N'0066-05SC1023', N'BTSC102339', N'1/1', N'0.41767', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (262, N'0066-05SC1031', N'0066-05SC1031', N'BTSC103147', N'1/1', N'0.88122', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (263, N'0066-05ST8006', N'0066-05ST8006', N'BTST800663', N'1/1', N'0.23072', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (264, N'0066-05ST8007', N'0066-05ST8007', N'BTST800764', N'1/1', N'0.2368', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (265, N'0066-05ST8008', N'0066-05ST8008', N'BTST800865', N'1/1', N'0.1973', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (266, N'0066-05ST8009', N'0066-05ST8009', N'BTST800966', N'1/1', N'0.1507', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (267, N'0066-05ST8010', N'0066-05ST8010', N'BTST801067', N'1/1', N'0.21897', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (268, N'0066-05ST8011', N'0066-05ST8011', N'BTST801168', N'1/1', N'0.22326', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (269, N'0066-05ST8015', N'0066-05ST8015', N'BTST801572', N'1/1', N'0.2368', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (270, N'0066-05ST8017', N'0066-05ST8017', N'BTST801774', N'1/1', N'0.23594', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (271, N'0066-05ST8018', N'0066-05ST8018', N'BTST801875', N'1/1', N'0.22552', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (272, N'0066-05ST8020', N'0066-05ST8020', N'BTST802077', N'1/1', N'0.2254', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (273, N'0066-05ST8021', N'0066-05ST8021', N'BTST802178', N'1/1', N'0.22665', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (274, N'0066-05ST8023', N'0066-05ST8023', N'BTST802380', N'1/1', N'0.20256', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (275, N'0066-05ST8024', N'0066-05ST8024', N'BTST802481', N'1/1', N'0.23594', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (276, N'0066-05ST8025', N'0066-05ST8025', N'BTST802582', N'1/1', N'0.22889', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (277, N'0066-05TB2012', N'0066-05TB2012', N'BTB2012101', N'1/1', N'0.13253', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (278, N'0066-05TB2014', N'0066-05TB2014', N'BTB2014103', N'1/1', N'0.19271', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (279, N'0066-05TB2023', N'0066-05TB2023', N'BTB2023110', N'1/1', N'0.12292', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (280, N'0066-05TB2038', N'0066-05TB2038', N'BTB2038122', N'1/1', N'0.20251', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (281, N'0066-05TB2039', N'0066-05TB2039', N'BTB2039123', N'1/1', N'0.53781', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (282, N'0066-05TB2040', N'0066-05TB2040', N'BTB2040124', N'1/1', N'0.53781', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (283, N'0066-05TB2042', N'0066-05TB2042', N'BTB2042125', N'1/1', N'0.53781', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (284, N'0066-05VB4001', N'0066-05VB4001', N'BTB4001143', N'1/1', N'0.0669', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (285, N'0066-05TB2010', N'0066-05TB2010', N'BTB2010177', N'2/2', N'0.129255', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (286, N'0066-05WB7005', N'0066-05WB7005', N'BTB7005186', N'1/2', N'0.88098', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (287, N'0066-05TB2002', N'0066-05TB2002', N'BTB2002238', N'1/15', N'0.143516', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (288, N'0066-05TB2002', N'0066-05TB2002', N'BTB2002239', N'2/15', N'0.143516', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (289, N'0066-05TB2002', N'0066-05TB2002', N'BTB2002240', N'3/15', N'0.143516', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (290, N'0066-05TB2002', N'0066-05TB2002', N'BTB2002241', N'4/15', N'0.143516', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (291, N'0066-05TB2002', N'0066-05TB2002', N'BTB2002242', N'5/15', N'0.143516', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (292, N'0066-05TB2002', N'0066-05TB2002', N'BTB2002243', N'6/15', N'0.143516', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (293, N'0066-05TB2002', N'0066-05TB2002', N'BTB2002244', N'7/15', N'0.143516', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (294, N'0066-05TB2002', N'0066-05TB2002', N'BTB2002245', N'8/15', N'0.143516', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (295, N'0066-05TB2002', N'0066-05TB2002', N'BTB2002246', N'9/15', N'0.143516', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (296, N'0066-05TB2002', N'0066-05TB2002', N'BTB2002247', N'10/15', N'0.143516', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (297, N'0066-05TB2002', N'0066-05TB2002', N'BTB2002248', N'11/15', N'0.143516', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (298, N'0066-05TB2002', N'0066-05TB2002', N'BTB2002249', N'12/15', N'0.143516', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (299, N'0066-05TB2002', N'0066-05TB2002', N'BTB2002250', N'13/15', N'0.143516', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (300, N'0066-05TB2002', N'0066-05TB2002', N'BTB2002251', N'14/15', N'0.143516', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (301, N'0066-05TB2002', N'0066-05TB2002', N'BTB2002252', N'15/15', N'0.143516', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (302, N'0048B-06GP7012', N'0048B-06GP7012', N'BTGP70129', N'1/1', N'0.2039', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (303, N'0048B-06SR7008', N'0048B-06SR7008', N'BTSR700820', N'1/1', N'0.4124', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (304, N'0048B-08SR7013', N'0048B-08SR7013', N'BTSR701393', N'1/1', N'0.1176', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (305, N'0048B-08SR7016', N'0048B-08SR7016', N'BTSR701695', N'1/1', N'0.03246', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (306, N'0048B-08SR7049', N'0048B-08SR7049', N'BSR7049117', N'1/1', N'0.11344', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (307, N'0048B-08SR7051', N'0048B-08SR7051', N'BSR7051118', N'1/1', N'0.08958', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (308, N'0048B-08SR7054', N'0048B-08SR7054', N'BSR7054120', N'1/1', N'1.08582', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (309, N'0048B-08SR7082', N'0048B-08SR7082', N'BSR7082138', N'1/1', N'0.15677', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (310, N'0048B-08SR7086', N'0048B-08SR7086', N'BSR7086229', N'1/2', N'0.45865', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (311, N'0048B-08SR7086', N'0048B-08SR7086', N'BSR7086230', N'2/2', N'0.45865', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (312, N'0048B-08SR7087', N'0048B-08SR7087', N'BSR7087231', N'1/2', N'0.45865', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (313, N'0048B-08SR7087', N'0048B-08SR7087', N'BSR7087232', N'2/2', N'0.45865', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (314, N'0048B-08SR7088', N'0048B-08SR7088', N'BSR7088233', N'1/2', N'0.45865', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (315, N'0048B-06SR7013', N'0048B-06SR7013', N'BSR7013235', N'1/3', N'0.0262433333333333', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (316, N'0048B-06SR7013', N'0048B-06SR7013', N'BSR7013236', N'2/3', N'0.0262433333333333', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (317, N'0048B-06SR7013', N'0048B-06SR7013', N'BSR7013237', N'3/3', N'0.0262433333333333', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (318, N'0048B-08SR7008', N'0048B-08SR7008', N'BSR7008327', N'5/5', N'0.1561', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (319, N'0048B-08GP7001', N'0048B-08GP7001', N'BGP7001454', N'39/50', N'0.021782', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (320, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002466', N'1/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (321, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002467', N'2/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (322, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002468', N'3/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (323, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002469', N'4/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (324, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002470', N'5/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (325, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002471', N'6/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (326, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002472', N'7/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (327, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002473', N'8/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (328, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002474', N'9/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (329, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002475', N'10/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (330, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002476', N'11/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (331, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002477', N'12/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (332, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002478', N'13/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (333, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002479', N'14/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (334, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002480', N'15/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (335, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002481', N'16/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (336, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002482', N'17/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (337, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002483', N'18/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (338, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002484', N'19/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (339, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002485', N'20/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (340, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002486', N'21/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (341, N'0048B-06GP7002', N'0048B-06GP7002', N'BGP7002487', N'22/53', N'0.0217818867924528', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (342, N'0029A-05SR7003', N'0029A-05SR7003', N'BTR700311', N'1/1', N'0.12901', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (343, N'0029A-07SR7022', N'0029A-07SR7022', N'BTSR702246', N'1/1', N'0.45865', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (344, N'0029A-07SR7026', N'0029A-07SR7026', N'BTSR702649', N'1/1', N'0.21227', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (345, N'0069A-06SR7094', N'0069A-06SR7094', N'BTSR709411', N'1/1', N'0.08005', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (346, N'0120C-04HG1003', N'0120C-04HG1003', N'BTHG314/14', N'14/14', N'0.321792857142857', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (347, N'0119B-01SC1008', N'0119B-01SC1008', N'BTSC10081', N'1/1', N'0.1496', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (348, N'0364B-07FB2008', N'0364B-07FB2008', N'BTB200811', N'1/1', N'0.46272', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (349, N'0364B-07SB3012', N'0364B-07SB3012', N'BTB30121/2', N'1/2', N'0.02285', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (350, N'0364B-07SB3012', N'0364B-07SB3012', N'BTB30122/2', N'2/2', N'0.02285', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (351, N'0364B-07SB3019', N'0364B-07SB3019', N'BTB30191/1', N'1/1', N'0.02631', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (352, N'0364B-07SB3031', N'0364B-07SB3031', N'BTB30311/2', N'1/2', N'0.019825', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (353, N'0364B-07SB3031', N'0364B-07SB3031', N'BTB30312/2', N'2/2', N'0.019825', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (354, N'0364B-07SB3042', N'0364B-07SB3042', N'BTB30421/1', N'1/1', N'0.06554', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (355, N'0364B-07SC1027', N'0364B-07SC1027', N'BTC10271/1', N'1/1', N'0.04537', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (356, N'0364B-07SC1029', N'0364B-07SC1029', N'BTC10291/1', N'1/1', N'0.03628', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (357, N'0364B-07SC1030', N'0364B-07SC1030', N'BTC10301/1', N'1/1', N'0.04201', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (358, N'0364B-07TB2040', N'0364B-07TB2040', N'BB20401/1', N'1/1', N'0.1456', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (359, N'0364B-07WB7008', N'0364B-07WB7008', N'BTB70081/1', N'1/1', N'0.10856', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (360, N'0364B-07WB7009', N'0364B-07WB7009', N'BTB70091/4', N'1/4', N'0.374485', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (361, N'0364B-07WB7009', N'0364B-07WB7009', N'BTB70092/4', N'2/4', N'0.374485', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (362, N'0364B-07WB7009', N'0364B-07WB7009', N'BTB70093/4', N'3/4', N'0.374485', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (363, N'0364B-07WB7009', N'0364B-07WB7009', N'BTB70094/4', N'4/4', N'0.374485', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (364, N'0119B-02SB3005', N'0119B-02SB3005', N'BT2SB3005', N'1/1', N'0.05814', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (365, N'0119B-01SC1003', N'0119B-01SC1003', N'BT1SC10031', N'1/2', N'0.133395', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (366, N'0011-10SB3037', N'0011-10SB3037', N'BT-MSB3037', N'1/1', N'0.397', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (367, N'0027B-09FB2204', N'0027B-09FB2204', N'BT9FB2Q204', N'1/1', N'1.34525', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (368, N'0035A-09FB2104', N'0035A-09FB2104', N'BTI-FB2104', N'1/1', N'0.63355', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (369, N'0037A-09FB2104', N'0037A-09FB2104', N'BT-FB2104', N'1/1', N'0.63355', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (370, N'0037A-10FB2009', N'0037A-10FB2009', N'BT0FB2009', N'1/1', N'0.68262', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (371, N'0037A-10SB3001', N'0037A-10SB3001', N'BTYC-3001', N'1/1', N'0.72429', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (372, N'0037A-10SB3008', N'0037A-10SB3008', N'BTYC-3008', N'1/1', N'0.72429', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (373, N'0040A-09FB2104', N'0040A-09FB2104', N'BTI-X2104', N'1/1', N'0.82074', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (374, N'0040A-09SB3005', N'0040A-09SB3005', N'BTSD/3005', N'1/1', N'1.06244', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (375, N'0040A-09SB3042', N'0040A-09SB3042', N'BTSD/3042', N'1/1', N'1.09749', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (376, N'0040A-10FB2014', N'0040A-10FB2014', N'BT0FB2014', N'1/1', N'3.17103', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (377, N'0040A-10FB2021', N'0040A-10FB2021', N'BTWK-2021', N'1/1', N'0.50122', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (378, N'0040A-10FB2025', N'0040A-10FB2025', N'BT0FB2025', N'1/1', N'2.80969', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (379, N'0040A-10FB2028', N'0040A-10FB2028', N'BTGH-0028', N'1/1', N'1.61449', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (380, N'0040A-10FB2030', N'0040A-10FB2030', N'BTGH-0030', N'1/1', N'0.86759', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (381, N'0040A-10SB3157', N'0040A-10SB3157', N'BTFB-I157', N'1/1', N'1.06539', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (382, N'0043A-09FB2104', N'0043A-09FB2104', N'BT9FB2104', N'1/1', N'0.82074', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (383, N'0043A-10FB2008', N'0043A-10FB2008', N'BT0FB2008', N'1/1', N'1.38252', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (384, N'0043A-10FB2016', N'0043A-10FB2016', N'BT0FB2016', N'1/1', N'0.99669', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (385, N'0043A-10FB2020', N'0043A-10FB2020', N'BT0FB2020', N'1/1', N'1.00505', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (386, N'0043A-10FB2023', N'0043A-10FB2023', N'BT0FB2023', N'1/1', N'1.00515', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (387, N'0043A-10FB2037', N'0043A-10FB2037', N'BT0FB2037', N'1/1', N'1.00465', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (388, N'0043A-10FB2041', N'0043A-10FB2041', N'BT0FB2041', N'1/1', N'1.43067', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (389, N'0046A-10FB2001', N'0046A-10FB2001', N'BT0FB2001', N'1/1', N'0.90583', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (390, N'0046A-10FB2004', N'0046A-10FB2004', N'BT0FB2004', N'1/1', N'0.90583', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (391, N'0119C-10SB3055', N'0119C-10SB3055', N'BT0SB3055', N'1/1', N'0.66414', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (392, N'0119C-10SB3056', N'0119C-10SB3056', N'BT0SB3056', N'1/1', N'0.72483', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (393, N'0119C-10SB3058', N'0119C-10SB3058', N'BT0SB3058', N'1/1', N'0.66631', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (394, N'0060A-12FB2015', N'0060A-12FB2015', N'BT2FB2015', N'1/1', N'0.95673', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (395, N'0060A-12FB2019', N'0060A-12FB2019', N'BT2FB2019', N'1/1', N'1.0189', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (396, N'0060A-12FB2020', N'0060A-12FB2020', N'BTMFB2020', N'1/1', N'1.04021', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (397, N'0119C-10SB3024', N'0119C-10SB3024', N'BT0S/241/2', N'1/2', N'0.70752', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (398, N'0119C-10SB3024', N'0119C-10SB3024', N'BT0S/242/2', N'2/2', N'0.70752', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (399, N'0119A-06HG1007', N'0119A-06HG1007', N'BT6HG10071', N'1/1', N'0.08904', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (400, N'0119A-06HG1011', N'0119A-06HG1011', N'BT6HG10111', N'1/1', N'0.09127', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (401, N'0119A-06SB3019', N'0119A-06SB3019', N'BT6SB30191', N'1/1', N'0.00919', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (402, N'0119A-06SB3020', N'0119A-06SB3020', N'BT6SB30201', N'1/1', N'0.00935', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (403, N'0119A-06SB3025', N'0119A-06SB3025', N'BT6SB30251', N'1/1', N'0.03701', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (404, N'0119A-06SB3033', N'0119A-06SB3033', N'BT6SB30331', N'1/1', N'0.01087', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (405, N'0119A-06SB3036', N'0119A-06SB3036', N'BT6SB30361', N'1/1', N'0.0605', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (406, N'0119A-06SB3067', N'0119A-06SB3067', N'BT6SB30671', N'1/1', N'0.12075', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (407, N'0119A-06SB3069', N'0119A-06SB3069', N'BT6SB30691', N'1/1', N'0.13912', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (408, N'0119B-06SB3011', N'0119B-06SB3011', N'BT6SB30111', N'1/1', N'0.28389', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (409, N'0120C-06MA8004', N'0120C-06MA8004', N'BT6MA80041', N'1/1', N'0.41525', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (410, N'0120C-06MA8005', N'0120C-06MA8005', N'BT6MA80051', N'1/1', N'0.36485', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (411, N'0118B-08FB2001', N'0118B-08FB2001', N'BT8FB20011', N'1/1', N'1.32424', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (412, N'0119A-08SB3004', N'0119A-08SB3004', N'BT9B/''0041', N'1/1', N'0.07158', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (413, N'0119A-08SB3012', N'0119A-08SB3012', N'BT9B/''0121', N'1/1', N'0.07588', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (414, N'0119A-08SB3028', N'0119A-08SB3028', N'BT9B/''0281', N'1/1', N'0.05618', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (415, N'0119A-08SB3038', N'0119A-08SB3038', N'BT8SB30381', N'1/1', N'0.03299', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (416, N'0119B-08FM8003', N'0119B-08FM8003', N'BT8FM80031', N'1/1', N'0.35103', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (417, N'0119B-08SB3028', N'0119B-08SB3028', N'BT8SB30281', N'1/1', N'0.15997', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (418, N'0119B-08SB3032', N'0119B-08SB3032', N'BT8SB30321', N'1/1', N'0.75469', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (419, N'0119B-08SC1002', N'0119B-08SC1002', N'BT8SC10021', N'1/1', N'0.07946', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (420, N'0119B-08SC1004', N'0119B-08SC1004', N'BT8SC10041', N'1/1', N'0.03595', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (421, N'0120C-08MA8008', N'0120C-08MA8008', N'BT8MA80081', N'1/1', N'0.40823', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (422, N'0030A-05FB2002', N'0030A-05FB2002', N'BT5FB20021', N'1/1', N'1.63009', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (423, N'0030A-05FB2003', N'0030A-05FB2003', N'BT5FB20031', N'1/1', N'3.2596', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (424, N'0030A-05SB3014', N'0030A-05SB3014', N'BTFJ''/0141', N'1/1', N'0.0477', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (425, N'0030A-05SB3031', N'0030A-05SB3031', N'BTFJ''/0311', N'1/1', N'0.03259', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (426, N'0030A-05SB3036', N'0030A-05SB3036', N'BT5SB30361', N'1/1', N'0.1425', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (427, N'0030A-05SB3059', N'0030A-05SB3059', N'BT5SB30591', N'1/1', N'0.0762', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (428, N'0030A-07FB2001', N'0030A-07FB2001', N'BT7FB20011', N'1/1', N'2.24048', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (429, N'0030A-07SB3020', N'0030A-07SB3020', N'BT7RT-''201', N'1/1', N'0.56217', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (430, N'0030A-07SB3023', N'0030A-07SB3023', N'BT7RT-''231', N'1/1', N'1.86697', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (431, N'0030A-07SB3088', N'0030A-07SB3088', N'BT7SB30881', N'1/1', N'3.05964', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (432, N'0030A-07SB3091', N'0030A-07SB3091', N'BT7SB30911', N'1/1', N'1.40441', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (433, N'0119B-07PF1005', N'0119B-07PF1005', N'BT7PF10051', N'1/1', N'0.21203', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (434, N'0119B-07SB3004', N'0119B-07SB3004', N'BT7RH-/041', N'1/1', N'0.12094', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (435, N'0119B-07SB3066', N'0119B-07SB3066', N'BT7SB30661', N'1/1', N'0.90029', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (436, N'0119B-07SB3069', N'0119B-07SB3069', N'BT7SB30691', N'1/1', N'2.69678', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (437, N'0119B-07SB3073', N'0119B-07SB3073', N'BT7SB30731', N'1/1', N'0.40304', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (438, N'0303A-13SB3175', N'0303A-13SB3175', N'BT3SB31751', N'1/1', N'0.24412', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (439, N'0303A-13SB3270', N'0303A-13SB3270', N'BT3SB32701', N'1/1', N'1.8375', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (440, N'0303A-13SB3276', N'0303A-13SB3276', N'BT3SB32761', N'1/1', N'1.21624', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (441, N'0303A-13SB3330', N'0303A-13SB3330', N'BT3SB33301', N'1/1', N'0.031', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (442, N'0303A-13SB3331', N'0303A-13SB3331', N'BT3SB33311', N'1/1', N'0.02992', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (443, N'0363A-13FB2001', N'0363A-13FB2001', N'BT3FV''-011', N'1/1', N'1.18191', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (444, N'0363A-13SB3003', N'0363A-13SB3003', N'BTDD''-031', N'1/1', N'0.01253', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (445, N'0363A-13SB3031', N'0363A-13SB3031', N'BTDD''-311', N'1/1', N'0.07036', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (446, N'0363A-13SB3066', N'0363A-13SB3066', N'BT3SB30661', N'1/1', N'0.37725', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (447, N'0363B-13SB3003', N'0363B-13SB3003', N'BT3SB30031', N'1/1', N'0.39721', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (448, N'0363B-13SB3007', N'0363B-13SB3007', N'BT3SB30071', N'1/1', N'0.52397', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (449, N'0119A-08SB3043', N'0119A-08SB3043', N'BT8S0431/2', N'1/2', N'0.062115', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (450, N'0119A-08SB3043', N'0119A-08SB3043', N'BT8S0432/2', N'2/2', N'0.062115', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (451, N'0030A-07SB3036', N'0030A-07SB3036', N'BT7S361/2', N'1/2', N'0.02883', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (452, N'0030A-07SB3036', N'0030A-07SB3036', N'BT7S062/2', N'2/2', N'0.02883', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (453, N'0303A-13SB3211', N'0303A-13SB3211', N'BT3S2111/2', N'1/2', N'0.025155', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (454, N'0303A-13SB3211', N'0303A-13SB3211', N'BT3S2112/2', N'2/2', N'0.025155', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (455, N'0303A-13SB3255', N'0303A-13SB3255', N'BT3S2551/2', N'1/2', N'0.02093', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (456, N'0303A-13SB3255', N'0303A-13SB3255', N'BT3S2552/2', N'2/2', N'0.02093', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (457, N'0363A-13SB3034', N'0363A-13SB3034', N'BT3S0341/2', N'1/2', N'0.08156', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (458, N'0363A-13SB3034', N'0363A-13SB3034', N'BT3S0342/2', N'2/2', N'0.08156', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (459, N'0363B-13SB3026', N'0363B-13SB3026', N'BT3S0261/2', N'1/2', N'0.026185', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (460, N'0363B-13SB3026', N'0363B-13SB3026', N'BT3S0262/2', N'2/2', N'0.026185', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (461, N'0059A-11XB3029', N'0059A-11XB3029', N'BT1X0291/2', N'1/2', N'0.10028', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (462, N'0059A-11XB3029', N'0059A-11XB3029', N'BT1X0292/2', N'2/2', N'0.10028', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (463, N'0059A-11XB3040', N'0059A-11XB3040', N'BT1X0401/2', N'1/2', N'0.10984', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (464, N'0059A-11XB3040', N'0059A-11XB3040', N'BT1X0402/2', N'2/2', N'0.10984', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (465, N'0059A-11XB3049', N'0059A-11XB3049', N'BT1X0491/2', N'1/2', N'0.112475', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (466, N'0059A-11XB3050', N'0059A-11XB3050', N'BT1X0501/2', N'1/2', N'0.112475', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (467, N'0059A-11XB3050', N'0059A-11XB3050', N'BT1X0502/2', N'2/2', N'0.112475', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (468, N'0118B-08SB3002', N'0118B-08SB3002', N'BT8S0023/3', N'3/3', N'0.270513333333333', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (469, N'0118B-08SB3008', N'0118B-08SB3008', N'BT8S0081/3', N'1/3', N'0.174473333333333', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (470, N'0118B-08SB3008', N'0118B-08SB3008', N'BT8S0082/3', N'2/3', N'0.174473333333333', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (471, N'0118B-08SB3008', N'0118B-08SB3008', N'BT8S0083/3', N'3/3', N'0.174473333333333', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (472, N'0030A-05SB3066', N'0030A-05SB3066', N'BT5S0661/3', N'1/3', N'0.0408', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (473, N'0030A-05SB3066', N'0030A-05SB3066', N'BT5S0662/3', N'2/3', N'0.0408', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (474, N'0030A-05SB3066', N'0030A-05SB3066', N'BT5S0663/3', N'3/3', N'0.0408', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (475, N'0030A-07SB3032', N'0030A-07SB3032', N'BT7S0321/3', N'1/3', N'0.0357066666666667', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (476, N'0030A-07SB3032', N'0030A-07SB3032', N'BT7S0322/3', N'2/3', N'0.0357066666666667', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (477, N'0030A-07SB3032', N'0030A-07SB3032', N'BT7S0323/3', N'3/3', N'0.0357066666666667', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (478, N'0030A-07SB3047', N'0030A-07SB3047', N'BT7S0471/3', N'1/3', N'0.0368966666666667', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (479, N'0030A-07SB3047', N'0030A-07SB3047', N'BT7S0472/3', N'2/3', N'0.0368966666666667', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (480, N'0030A-07SB3047', N'0030A-07SB3047', N'BT7S0473/3', N'3/3', N'0.0368966666666667', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (481, N'0030A-07SB3089', N'0030A-07SB3089', N'BT7S0891/3', N'1/3', N'0.0219233333333333', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (482, N'0030A-07SB3089', N'0030A-07SB3089', N'BT7S0892/3', N'2/3', N'0.0219233333333333', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (483, N'0030A-07SB3089', N'0030A-07SB3089', N'BT7S0893/3', N'3/3', N'0.0219233333333333', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (484, N'0059A-11XB3047', N'0059A-11XB3047', N'BT1X0471/3', N'1/3', N'0.109843333333333', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (485, N'0059A-11XB3047', N'0059A-11XB3047', N'BT1X0472/3', N'2/3', N'0.109843333333333', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (486, N'0059A-11XB3058', N'0059A-11XB3058', N'BT1X0581/3', N'1/3', N'0.109843333333333', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (487, N'0059A-11XB3058', N'0059A-11XB3058', N'BT1X0582/3', N'2/3', N'0.109843333333333', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (488, N'0059A-11XB3026', N'0059A-11XB3026', N'BT1X0261/4', N'1/4', N'0.09933', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (489, N'0059A-11XB3026', N'0059A-11XB3026', N'BT1X0262/4', N'2/4', N'0.09933', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (490, N'0059A-11XB3026', N'0059A-11XB3026', N'BT1X0263/4', N'3/4', N'0.09933', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (491, N'0059A-11XB3026', N'0059A-11XB3026', N'BT1X0264/4', N'4/4', N'0.09933', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (492, N'0059A-11XB3041', N'0059A-11XB3041', N'BT1X0411/4', N'1/4', N'0.09933', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (493, N'0059A-11XB3041', N'0059A-11XB3041', N'BT1X0412/4', N'2/4', N'0.09933', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (494, N'0059A-11XB3041', N'0059A-11XB3041', N'BT1X0413/4', N'3/4', N'0.09933', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (495, N'0059A-11XB3041', N'0059A-11XB3041', N'BT1X0414/4', N'4/4', N'0.09933', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (496, N'0363B-13SB3018', N'0363B-13SB3018', N'BT3S0182/5', N'2/5', N'0.051412', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (497, N'0363B-13SB3018', N'0363B-13SB3018', N'BT3S0183/5', N'3/5', N'0.051412', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (498, N'0363B-13SB3018', N'0363B-13SB3018', N'BT3S0184/5', N'4/5', N'0.051412', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (499, N'0363B-13SB3018', N'0363B-13SB3018', N'BT3S0185/5', N'5/5', N'0.051412', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (500, N'0363B-13SB3011', N'0363B-13SB3011', N'BT3S0111/6', N'1/6', N'0.05392', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (501, N'0363B-13SB3011', N'0363B-13SB3011', N'BT3S0112/6', N'2/6', N'0.05392', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (502, N'0363B-13SB3011', N'0363B-13SB3011', N'BT3S0114/6', N'4/6', N'0.05392', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (503, N'0363B-13SB3011', N'0363B-13SB3011', N'BT3S0115/6', N'5/6', N'0.05392', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (504, N'0363B-13SB3011', N'0363B-13SB3011', N'BT3S0116/6', N'6/6', N'0.05392', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (505, N'0059A-11XB3082', N'0059A-11XB3082', N'BT1X0821/6', N'1/6', N'0.11008', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (506, N'0059A-11XB3082', N'0059A-11XB3082', N'BT1X0822/6', N'2/6', N'0.11008', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (507, N'0059A-11XB3082', N'0059A-11XB3082', N'BT1X0823/6', N'3/6', N'0.11008', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (508, N'0059A-11XB3082', N'0059A-11XB3082', N'BT1X0824/6', N'4/6', N'0.11008', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (509, N'0059A-11XB3082', N'0059A-11XB3082', N'BT1X0825/6', N'5/6', N'0.11008', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (510, N'0059A-11XB3082', N'0059A-11XB3082', N'BT1X0826/6', N'6/6', N'0.11008', 1, N'chandukomati53@gmail.com', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (523, N'0011-02SC1001', N'0011-02SC1001', N'B/G11111', N'1/1', N'0.06119', NULL, N'12345', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 4, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblTGBuxar] ([ID], [DrawingNo], [MarkNo], [Batch], [PartSerialNo], [UnitWT], [IsActive], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn], [ProjectId], [IsApprove], [VehicleNo], [ApprovedBy], [ApprovedOn]) VALUES (524, N'0011-02SC1003', N'0011-02SC1003', N'B/G111314', N'1/4', N'0.0549575', NULL, N'12345', CAST(N'2022-08-01T11:56:59.943' AS DateTime), NULL, NULL, 4, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblTGBuxar] OFF
GO
SET IDENTITY_INSERT [dbo].[tblVehicle] ON 
GO
INSERT [dbo].[tblVehicle] ([VehicleID], [ProjectID], [VehicleNo], [Status], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn]) VALUES (1, 1, N'GJ05GK9562', N'Pending', N'chandukomati53@gmail.com', CAST(N'2022-07-04T18:21:09.947' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblVehicle] ([VehicleID], [ProjectID], [VehicleNo], [Status], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn]) VALUES (2, 1, N'GJ05GK9566', N'Pending', N'chandukomati53@gmail.com', CAST(N'2022-07-04T18:21:57.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblVehicle] ([VehicleID], [ProjectID], [VehicleNo], [Status], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn]) VALUES (3, 2, N'GJ05GK9562', N'Pending', N'chandukomati53@gmail.com', CAST(N'2022-07-06T10:43:50.810' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblVehicle] ([VehicleID], [ProjectID], [VehicleNo], [Status], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn]) VALUES (4, 3, N'GJ05GK9562', N'Pending', N'chandukomati53@gmail.com', CAST(N'2022-07-12T14:24:04.197' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblVehicle] ([VehicleID], [ProjectID], [VehicleNo], [Status], [CreatedBy], [CreatedOn], [EditedBy], [EditedOn]) VALUES (5, 3, N'GJ05GK9561', N'Pending', N'chandukomati53@gmail.com', CAST(N'2022-07-12T14:24:10.470' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblVehicle] OFF
GO
/****** Object:  StoredProcedure [dbo].[GetProjectItemCount]    Script Date: 17-05-2023 21:27:17 ******/
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
/****** Object:  StoredProcedure [dbo].[Insert_Project_TGBox_Data]    Script Date: 17-05-2023 21:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Project_TGBox_Data]
    @OIEHeaderId [int],
    @HeaderId [int] NULL,
    @Project [nvarchar](50) NULL,
    @CreatedBy [nvarchar](10) NULL,
    @CreatedOn [datetime] NULL,
    @TGData dbo.[TGbox] Readonly
AS
BEGIN
    if((select count(*) from @TGData)>0)
    begin
        -------- Add New Enquiry
        IF NOT EXISTS (Select * from dbo.tblProject where Project = @Project)
		begin
            Insert into dbo.tblProject 
                (
                    Project,
                    CreatedBy,
                    CreatedOn
                )
            Values
                (
                    @Project,
                    @CreatedBy,
                    Getdate()
                )
            Set @HeaderId = SCOPE_IDENTITY()
            
            Insert into dbo.tblTGBuxar
                (
                    ProjectId,
                    DrawingNo,
                    MarkNo,
                    Batch,
                    PartSerialNo,
                    UnitWT,
                    CreatedBy,
                    CreatedOn
                )
            Select  @HeaderId, 
                    DrawingNo,
                    MarkNo,
                    Batch,
                    PartSerialNo,
                    UnitWT,
                    CreatedBy,
                    CreatedOn
            from @TGData
 		select 'inserted';
        end
	end
END
GO
