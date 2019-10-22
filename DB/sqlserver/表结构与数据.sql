USE [master]
GO
/****** Object:  Database [netcoredev]    Script Date: 2019-09-25 15:40:42 ******/
CREATE DATABASE [netcoredev]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'netcoredev', FILENAME = N'C:\netcoredev.mdf' , SIZE = 16384KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'netcoredev_log', FILENAME = N'C:\netcoredev_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [netcoredev] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [netcoredev].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [netcoredev] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [netcoredev] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [netcoredev] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [netcoredev] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [netcoredev] SET ARITHABORT OFF 
GO
ALTER DATABASE [netcoredev] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [netcoredev] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [netcoredev] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [netcoredev] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [netcoredev] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [netcoredev] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [netcoredev] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [netcoredev] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [netcoredev] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [netcoredev] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [netcoredev] SET  DISABLE_BROKER 
GO
ALTER DATABASE [netcoredev] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [netcoredev] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [netcoredev] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [netcoredev] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [netcoredev] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [netcoredev] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [netcoredev] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [netcoredev] SET RECOVERY FULL 
GO
ALTER DATABASE [netcoredev] SET  MULTI_USER 
GO
ALTER DATABASE [netcoredev] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [netcoredev] SET DB_CHAINING OFF 
GO
ALTER DATABASE [netcoredev] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [netcoredev] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'netcoredev', N'ON'
GO
USE [netcoredev]
GO
/****** Object:  Table [dbo].[App_Appointment]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_Appointment](
	[Id] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Describe] [nvarchar](250) NOT NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PhoneNo] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_App_Appointment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[App_Expert]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_Expert](
	[ExpertId] [int] IDENTITY(1,1) NOT NULL,
	[AuditDate] [datetime] NULL,
	[AuditId] [int] NULL,
	[AuditStatus] [int] NOT NULL,
	[Auditor] [nvarchar](20) NULL,
	[Certificate] [nvarchar](2500) NULL,
	[City] [nvarchar](50) NULL,
	[Company] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Education] [nvarchar](50) NULL,
	[Enable] [tinyint] NOT NULL,
	[ExpertName] [nvarchar](20) NULL,
	[HeadImageUrl] [nvarchar](500) NULL,
	[IDNumber] [nvarchar](18) NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[PhoneNo] [nvarchar](11) NULL,
	[Professional] [nvarchar](50) NULL,
	[ReallyName] [nvarchar](20) NULL,
	[Resume] [nvarchar](500) NULL,
	[SpecialField] [nvarchar](800) NULL,
	[UserName] [nvarchar](30) NULL,
	[UserTrueName] [nvarchar](50) NULL,
	[User_Id] [int] NULL,
 CONSTRAINT [PK_App_Expert] PRIMARY KEY CLUSTERED 
(
	[ExpertId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[App_News]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Author] [nvarchar](50) NULL,
	[BigImageUrls] [nvarchar](500) NULL,
	[Content] [ntext] NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[DailyRecommend] [int] NOT NULL,
	[DetailUrl] [nvarchar](200) NULL,
	[Enable] [int] NULL,
	[ImageUrl] [nvarchar](500) NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[NewsType] [int] NOT NULL,
	[OrderNo] [int] NULL,
	[ReleaseDate] [datetime] NULL,
	[Title] [nvarchar](50) NOT NULL,
	[ViewCount] [int] NULL,
 CONSTRAINT [PK_App_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[App_ReportPrice]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_ReportPrice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Age] [nvarchar](50) NOT NULL,
	[AuditDate] [datetime2](7) NULL,
	[AuditId] [int] NULL,
	[AuditStatus] [int] NULL,
	[Auditor] [nvarchar](20) NULL,
	[City] [nvarchar](15) NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime2](7) NULL,
	[ModifyID] [int] NULL,
	[Price] [numeric](10, 0) NOT NULL,
	[Variety] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_App_ReportPrice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[App_Transaction]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_Transaction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CowType] [nvarchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Describe] [nvarchar](500) NOT NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PhoneNo] [nvarchar](15) NOT NULL,
	[Quantity] [int] NOT NULL,
	[TransactionType] [int] NOT NULL,
 CONSTRAINT [PK_App_Transaction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[App_TransactionAvgPrice]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_TransactionAvgPrice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AgeRange] [nvarchar](50) NOT NULL,
	[AvgPrice] [decimal](18, 2) NOT NULL,
	[City] [nvarchar](15) NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Date] [date] NOT NULL,
	[Enable] [tinyint] NULL,
	[IsTop] [int] NOT NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Variety] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_App_TransactionAvgPrice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sell8]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sell8](
	[Order_Id] [uniqueidentifier] NOT NULL,
	[OrderType] [int] NOT NULL,
	[TranNo] [nvarchar](100) NOT NULL,
	[SellNo] [nvarchar](255) NOT NULL,
	[Qty] [int] NOT NULL,
	[AuditDate] [datetime] NULL,
	[AuditStatus] [int] NOT NULL,
	[AuditId] [int] NULL,
	[Auditor] [nvarchar](100) NULL,
	[Remark] [nvarchar](1000) NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Modifier] [nvarchar](255) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_Sell8] PRIMARY KEY CLUSTERED 
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SellOrder]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellOrder](
	[Order_Id] [uniqueidentifier] NOT NULL,
	[OrderType] [int] NOT NULL,
	[TranNo] [nvarchar](100) NOT NULL,
	[SellNo] [nvarchar](255) NOT NULL,
	[Qty] [int] NOT NULL,
	[AuditDate] [datetime] NULL,
	[AuditStatus] [int] NOT NULL,
	[AuditId] [int] NULL,
	[Auditor] [nvarchar](100) NULL,
	[Remark] [nvarchar](1000) NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Modifier] [nvarchar](255) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_SellOrder] PRIMARY KEY CLUSTERED 
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SellOrderList]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellOrderList](
	[OrderList_Id] [uniqueidentifier] NOT NULL,
	[Order_Id] UNIQUEIDENTIFIER NOT NULL,
	[ProductName] [nvarchar](200) NOT NULL,
	[MO] [nvarchar](255) NOT NULL,
	[Qty] [int] NOT NULL,
	[Weight] [decimal](18, 2) NULL,
	[Remark] [nvarchar](1000) NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Modifier] [nvarchar](255) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_SellOrderList] PRIMARY KEY CLUSTERED 
(
	[OrderList_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_City]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityCode] [nvarchar](20) NULL,
	[CityName] [nvarchar](30) NULL,
	[ProvinceCode] [varchar](20) NULL,
 CONSTRAINT [PK_Sys_City] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Dictionary]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Dictionary](
	[Dic_ID] [int] IDENTITY(1,1) NOT NULL,
	[Config] [nvarchar](4000) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[DBServer] [nvarchar](4000) NULL,
	[DbSql] [nvarchar](4000) NULL,
	[DicName] [nvarchar](100) NOT NULL,
	[DicNo] [nvarchar](100) NOT NULL,
	[Enable] [tinyint] NOT NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[OrderNo] [int] NULL,
	[ParentId] [int] NOT NULL,
	[Remark] [nvarchar](2000) NULL,
 CONSTRAINT [PK_Sys_Dictionary] PRIMARY KEY CLUSTERED 
(
	[Dic_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_DictionaryList]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_DictionaryList](
	[DicList_ID] [int] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[DicName] [nvarchar](100) NULL,
	[DicValue] [nvarchar](100) NULL,
	[Dic_ID] [int] NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[OrderNo] [int] NULL,
	[Remark] [nvarchar](2000) NULL,
 CONSTRAINT [PK_Sys_DictionaryList] PRIMARY KEY CLUSTERED 
(
	[DicList_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Log]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BeginDate] [datetime] NULL,
	[BrowserType] [nvarchar](200) NULL,
	[ElapsedTime] [int] NULL,
	[EndDate] [datetime] NULL,
	[ExceptionInfo] [nvarchar](max) NULL,
	[LogType] [nvarchar](50) NULL,
	[RequestParameter] [nvarchar](max) NULL,
	[ResponseParameter] [nvarchar](max) NULL,
	[Role_Id] [int] NULL,
	[ServiceIP] [nvarchar](100) NULL,
	[Success] [int] NULL,
	[Url] [nvarchar](4000) NULL,
	[UserIP] [nvarchar](100) NULL,
	[UserName] [nvarchar](4000) NULL,
	[User_Id] [int] NULL,
 CONSTRAINT [PK_Sys_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Menu]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Menu](
	[Menu_Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](50) NOT NULL,
	[Auth] [nvarchar](4000) NULL,
	[Icon] [nvarchar](50) NULL,
	[Description] [nvarchar](200) NULL,
	[Enable] [tinyint] NULL,
	[OrderNo] [int] NULL,
	[TableName] [nvarchar](200) NULL,
	[ParentId] [int] NOT NULL,
	[Url] [nvarchar](4000) NULL,
	[CreateDate] [datetime] NULL,
	[Creator] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[Modifier] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sys_Menu] PRIMARY KEY CLUSTERED 
(
	[Menu_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Province]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Province](
	[ProvinceId] [int] IDENTITY(1,1) NOT NULL,
	[ProvinceCode] [nvarchar](20) NOT NULL,
	[ProvinceName] [nvarchar](30) NOT NULL,
	[RegionCode] [nvarchar](20) NULL,
 CONSTRAINT [PK_Sys_Province] PRIMARY KEY CLUSTERED 
(
	[ProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Role]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Role](
	[Role_Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime] NULL,
	[Creator] [nvarchar](50) NULL,
	[DeleteBy] [nvarchar](50) NULL,
	[DeptName] [nvarchar](50) NULL,
	[Dept_Id] [int] NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[OrderNo] [int] NULL,
	[ParentId] [int] NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sys_Role] PRIMARY KEY CLUSTERED 
(
	[Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_RoleAuth]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_RoleAuth](
	[Auth_Id] [int] IDENTITY(1,1) NOT NULL,
	[AuthValue] [nvarchar](1000) NOT NULL,
	[CreateDate] [datetime] NULL,
	[Creator] [nvarchar](1000) NULL,
	[Menu_Id] [int] NOT NULL,
	[Modifier] [nvarchar](1000) NULL,
	[ModifyDate] [datetime] NULL,
	[Role_Id] [int] NULL,
	[User_Id] [int] NULL,
 CONSTRAINT [PK_Sys_RoleAuth] PRIMARY KEY CLUSTERED 
(
	[Auth_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_RoleAuthData]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_RoleAuthData](
	[Auth_Id] [int] IDENTITY(1,1) NOT NULL,
	[DataType_Id] [int] NULL,
	[Role_Id] [int] NULL,
	[User_Id] [int] NULL,
	[Node_Id] [varchar](50) NULL,
	[LevelID] [int] NULL,
	[AuthValue] [varchar](4000) NULL,
	[Creator] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Modifier] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_Sys_RoleAuthData] PRIMARY KEY CLUSTERED 
(
	[Auth_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_TableColumn]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_TableColumn](
	[ColumnId] [int] IDENTITY(1,1) NOT NULL,
	[ApiInPut] [int] NULL,
	[ApiIsNull] [int] NULL,
	[ApiOutPut] [int] NULL,
	[ColSize] [int] NULL,
	[ColumnCNName] [nvarchar](100) NULL,
	[ColumnName] [nvarchar](100) NULL,
	[ColumnType] [nvarchar](max) NULL,
	[ColumnWidth] [int] NULL,
	[Columnformat] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](200) NULL,
	[DropNo] [nvarchar](50) NULL,
	[EditColNo] [int] NULL,
	[EditRowNo] [int] NULL,
	[EditType] [nvarchar](200) NULL,
	[Enable] [int] NULL,
	[IsColumnData] [int] NULL,
	[IsDisplay] [int] NULL,
	[IsImage] [int] NULL,
	[IsKey] [int] NULL,
	[IsNull] [int] NULL,
	[IsReadDataset] [int] NULL,
	[Maxlength] [int] NULL,
	[Modifier] [ntext] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[OrderNo] [int] NULL,
	[Script] [ntext] NULL,
	[SearchColNo] [int] NULL,
	[SearchRowNo] [int] NULL,
	[SearchType] [nvarchar](200) NULL,
	[Sortable] [int] NULL,
	[TableName] [nvarchar](200) NULL,
	[Table_Id] [int] NULL,
 CONSTRAINT [PK_Sys_TableColumn] PRIMARY KEY CLUSTERED 
(
	[ColumnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_TableInfo]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_TableInfo](
	[Table_Id] [int] IDENTITY(1,1) NOT NULL,
	[CnName] [nvarchar](50) NULL,
	[ColumnCNName] [nvarchar](100) NULL,
	[DBServer] [nvarchar](2000) NULL,
	[DataTableType] [nvarchar](200) NULL,
	[DetailCnName] [nvarchar](200) NULL,
	[DetailName] [nvarchar](200) NULL,
	[EditorType] [nvarchar](100) NULL,
	[Enable] [int] NULL,
	[ExpressField] [nvarchar](200) NULL,
	[FolderName] [nvarchar](200) NULL,
	[Namespace] [nvarchar](200) NULL,
	[OrderNo] [int] NULL,
	[ParentId] [int] NULL,
	[RichText] [nvarchar](100) NULL,
	[SortName] [nvarchar](50) NULL,
	[TableName] [nvarchar](50) NULL,
	[TableTrueName] [nvarchar](100) NULL,
	[UploadField] [nvarchar](100) NULL,
	[UploadMaxCount] [int] NULL,
 CONSTRAINT [PK_Sys_TableInfo] PRIMARY KEY CLUSTERED 
(
	[Table_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_User]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_User](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](200) NULL,
	[AppType] [int] NULL,
	[AuditDate] [datetime] NULL,
	[AuditStatus] [int] NULL,
	[Auditor] [nvarchar](200) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](200) NULL,
	[DeptName] [nvarchar](150) NULL,
	[Dept_Id] [int] NULL,
	[Email] [nvarchar](100) NULL,
	[Enable] [tinyint] NOT NULL,
	[Gender] [int] NULL,
	[HeadImageUrl] [nvarchar](200) NULL,
	[IsRegregisterPhone] [int] NOT NULL,
	[LastLoginDate] [datetime] NULL,
	[LastModifyPwdDate] [datetime] NULL,
	[Mobile] [nvarchar](100) NULL,
	[Modifier] [nvarchar](200) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[OrderNo] [int] NULL,
	[Role_Id] [int] NOT NULL,
	[RoleName] [nvarchar](150) NOT NULL,
	[PhoneNo] [nvarchar](11) NULL,
	[Remark] [nvarchar](200) NULL,
	[Tel] [nvarchar](20) NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPwd] [nvarchar](200) NULL,
	[UserTrueName] [nvarchar](20) NOT NULL,
	[Token] [nvarchar](500) NULL,
 CONSTRAINT [PK_Sys_User] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[test2019]    Script Date: 2019-09-25 15:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test2019](
	[id] [int] NULL,
	[testUtf8] [nvarchar](10) NOT NULL,
	[testmb4] [nvarchar](12) NULL,
	[y] [numeric](5, 0) NULL,
	[timepsan] [datetime2](7) NULL,
	[text] [ntext] NULL,
	[db] [numeric](4, 3) NOT NULL,
	[tt] [nvarchar](1) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[App_Appointment] ([Id], [CreateDate], [CreateID], [Creator], [Describe], [Modifier], [ModifyDate], [ModifyID], [Name], [PhoneNo]) VALUES (N'08d73c0e-edf8-595b-9a8f-2ff134751833', CAST(0x0000AACC01091874 AS DateTime), 1, N'超级管理员', N'元歌有8个技能..', NULL, NULL, NULL, N'元歌', N'1300111235')
GO
INSERT [dbo].[App_Appointment] ([Id], [CreateDate], [CreateID], [Creator], [Describe], [Modifier], [ModifyDate], [ModifyID], [Name], [PhoneNo]) VALUES (N'08d73c0e-edef-0a68-ab81-c3dc5e0fe407', CAST(0x0000AACC01091874 AS DateTime), 1, N'超级管理员', N'来自火星。。。', NULL, NULL, NULL, N'元霸', N'138888887698')
GO
INSERT [dbo].[App_Appointment] ([Id], [CreateDate], [CreateID], [Creator], [Describe], [Modifier], [ModifyDate], [ModifyID], [Name], [PhoneNo]) VALUES (N'08d73c11-6a43-97e8-ca70-e8b0d906807e', CAST(0x0000AACC010DFC04 AS DateTime), 1, N'超级管理员', N'来自火星。。。', N'', NULL, NULL, N'元华', N'138888887698')
GO
SET IDENTITY_INSERT [dbo].[App_Expert] ON 

GO
INSERT [dbo].[App_Expert] ([ExpertId], [AuditDate], [AuditId], [AuditStatus], [Auditor], [Certificate], [City], [Company], [CreateDate], [CreateID], [Creator], [Education], [Enable], [ExpertName], [HeadImageUrl], [IDNumber], [Modifier], [ModifyDate], [ModifyID], [PhoneNo], [Professional], [ReallyName], [Resume], [SpecialField], [UserName], [UserTrueName], [User_Id]) VALUES (275, CAST(0x0000A95400B4CD8C AS DateTime), 1, 1, N'测试超级管理员', NULL, N'北京市', N'中国农业大学', CAST(0x0000A9510104DA20 AS DateTime), 3344, N'User31110458', N'博士', 1, N'教兽', N'https://imgs-1256993465.cos.ap-chengdu.myqcloud.com/h5pic/x3.jpg', N'150124199911110116', N'超级管理员', CAST(0x0000AACC011A6048 AS DateTime), 1, N'13381277739', N'教授', N'拉美西斯', N'66666666', N'6666666', N'13381277739', N'User31110458', 3344)
GO
INSERT [dbo].[App_Expert] ([ExpertId], [AuditDate], [AuditId], [AuditStatus], [Auditor], [Certificate], [City], [Company], [CreateDate], [CreateID], [Creator], [Education], [Enable], [ExpertName], [HeadImageUrl], [IDNumber], [Modifier], [ModifyDate], [ModifyID], [PhoneNo], [Professional], [ReallyName], [Resume], [SpecialField], [UserName], [UserTrueName], [User_Id]) VALUES (276, NULL, 1, 0, NULL, N'', N'北京市', N'窦天宝传奇', CAST(0x0000A95F0124C218 AS DateTime), 3358, N'较瘦', N'小学', 1, N'国家一级演员', N'https://imgs-1256993465.cos.ap-chengdu.myqcloud.com/h5pic/x2.jpg', N'88888', N'超级管理员', CAST(0x0000AACD00EE4670 AS DateTime), 1, N'18912119099', N'演员', N'木兰', N'啊啊啊啊', N'xxxxxx', N'18912119099', N'较瘦', 3358)
GO
SET IDENTITY_INSERT [dbo].[App_Expert] OFF
GO
SET IDENTITY_INSERT [dbo].[App_News] ON 

GO
INSERT [dbo].[App_News] ([Id], [Author], [BigImageUrls], [Content], [CreateDate], [CreateID], [Creator], [DailyRecommend], [DetailUrl], [Enable], [ImageUrl], [Modifier], [ModifyDate], [ModifyID], [NewsType], [OrderNo], [ReleaseDate], [Title], [ViewCount]) VALUES (73756, NULL, NULL, N'<p style="text-indent:32px"><strong><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">1.&nbsp;</span></strong><strong><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">改变对奶公犊经济价值的认识</span></strong></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">根据国家肉牛牦牛产业技术体系的调查发现，很多奶牛养殖者选择奶公犊自己饲养或出售给他人育肥，是基于生鲜乳销售不畅，而饲养奶公犊可以解决这一问题（曹兵海，2009）。绝大多数奶牛场主观臆测饲养奶公犊不会有太高的利润，其实这是一种认识误区。根据目前奶公犊市场行情，初生奶公犊平均售价为2000-2500元/头，用代乳粉加颗粒料的方式饲养至56天断奶，犊牛售价则在4000元/头以上，饲料成本约700-800元/头，毛利润约为700-1300元/头，说明饲养奶公犊具有很大的利润空间。因此，加强肉牛和牛肉市场信息对奶牛养殖者的畅通，并提高对奶公犊经济价值的认识，将会进一步提高奶公犊育肥的数量。</span></p><p style="text-indent:32px"><strong><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">2.&nbsp;</span></strong><strong><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">研发并集成奶公犊科学饲养管理的技术</span></strong></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">虽然一些奶牛养殖者有规模较大的奶牛群，但并没有大规模饲养奶公犊，主要原因之一是缺乏奶公犊育肥的科学饲养管理技术。因此，多数奶牛养殖场在权衡奶公犊的饲养成本和收益后，选择出生后立即出售的处理方式。</span></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">实际上，不仅奶牛饲养者缺乏相应的饲养技术，很多肉牛养殖者也同样如此，从而限制了奶牛或肉牛养殖者饲养奶公犊的积极性。近年来，国内一些学者在奶公犊生产小白牛肉（江昱明等，2015）、奶公犊生长和育肥期营养需要（张召兄等，2007；张云峰等，2013；郭康等，2017；夏传齐等，2017）、奶公犊生长性能和肉质变化规律（王嘉博，2013；吴宏达等，2014）等奶公犊饲养管理关键技术方面做了大量研究。但这些技术总体上是零散且不系统的，如果想要在奶公犊育肥过程中进行应用和推广，还需要进一步对这些已研发的技术进行集成和组装。</span></p><p style="text-indent:32px"><strong><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">3.&nbsp;</span></strong><strong><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">客观认识和评价奶公牛产肉性能</span></strong></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">奶公牛的架子牛和育肥牛的交易价格与肉牛及其杂交牛、西门塔尔等乳肉兼用牛存在较大差距，一般差价在1.6-2.3元/kg（曹兵海，2009）。很多时候，价格较低的理由是认为奶公牛出肉率低（骨肉比高）或肉质较差。在我国目前架子牛短期育肥的模式下，上述理由被过分强调，从而压低了奶公牛的价格，抑制了大家养殖和育肥奶公牛的积极性。实际上，荷斯坦作为传统的奶牛品种，也具有非常理想的产肉性能（包括产肉量和肉品质），根据张兴隆等（2017）最新研究结果表明，直线育肥奶公牛出肉率随月龄的增加而提高，育肥至18月龄以上，奶公牛的屠宰率和净肉率可分别达到58%和48%以上，达到或甚至超过一些专门的肉牛品种。</span></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">另外，荷斯坦奶牛属于大体型牛种，经过强度育肥后活体重可以达到700-800kg甚至更高，绝对产肉量远远超过一般肉牛品种。另外，关于奶公牛肉质较差的理由很难站得住脚，在美国，利用荷斯坦阉牛生产出来的优级（Prime）牛肉占全美优级牛肉市场的32%-60%（Boetel，2016）；在欧盟，利用奶公犊生产小牛肉产量最大的国家是荷兰，其次是法国（Sans，2009）；荷兰利用奶公犊生产的高档小白牛肉占市场份额50%，其他50%来自淘汰奶牛和少量肉牛专用品种提供的牛肉（张越杰，2011）。由此可见，与一般纯种肉牛相比，在产肉量和牛肉品质方面，荷斯坦奶公牛毫不逊色。</span></p><p style="text-indent:32px"><strong><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">4.&nbsp;</span></strong><strong><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">发展奶-肉牛复合养殖模式</span></strong></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">奶牛和肉牛养殖是相辅相成的两个产业，特别是在目前奶业转型、肉牛牛源紧缺的情况下，奶牛和肉牛产业不可能完全独立存在。而事实上，越来越多的奶公犊已经开始被用来育肥，也证明了奶-肉牛复合养殖模式是最具盈利能力和抗风险能力的生产模式，这也是市场规律之下必然产生的模式。根据国家肉牛牦牛产业技术体系的调研报告（曹兵海，2009），将近20%的奶牛养殖者已经开始了奶-肉牛复合养殖模式。实际上，奶-肉牛复合养殖模式可分三种，即：奶牛和奶公犊复合、奶牛和奶-肉牛杂交牛复合、直接饲养乳肉兼用牛种。对于以养殖奶牛为主的生产模式，前两种模式富有实效，其中，奶牛和奶公犊复合养殖模式最为快捷，容易实现低成本高效生产。</span></p><p style="text-indent:32px"><strong><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">5.&nbsp;</span></strong><strong><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">奶公犊资源利用的前景</span></strong></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">奶公犊是连接奶牛养殖业与肉牛养殖业的纽带，近年来，奶业波动和肉牛牛源危机的日趋严重，使得奶公犊资源的开发利用逐渐成为各级政府、专家学者、肉牛养殖企业以及奶牛养殖企业共同关注的焦点。可以说，奶公犊育肥将在未来中国传统奶业和肉牛产业中扮演重要的角色，奶公犊的科学利用是弥补我国牛肉缺口的有效途径之一。</span></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">事实上，目前在国内很多肉牛育肥场都能看到与其他品种同时接受育肥的奶公牛。近年来，养殖奶牛与养殖肉牛之间的比较效益优势已不明显，奶牛养殖企业依靠售卖生鲜乳所得利润越来越低，甚至出现周期性赔本的现象，加上肉牛牛源不足对犊牛价格的拉动，利用奶公犊资源生产牛肉的潜在盈利空间和经济优势已逐步表现出来。未来奶牛养殖企业采取奶牛养殖与奶公犊育肥的复合养殖方式，是规避奶业风险、提高效益的有效手段。</span></p><p><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">&nbsp;&nbsp; &nbsp;</span><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">来源：DairymanCN&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">特邀作者｜曹兵海、苏华维</span></p><p><br/></p>', CAST(0x0000A95300B56F44 AS DateTime), 3357, N'侩牛小编', 0, N'http://118.190.209.59:9910/App/App_News/20180906/165148.html', 1, N'https://bj.bcebos.com/common1/180905/15361176985178184.jpeg@w_500', N'超级管理员', CAST(0x0000AAAB00A9DF1C AS DateTime), 1, 1, NULL, NULL, N'科学利用奶公犊资源的建议', 53)
GO
INSERT [dbo].[App_News] ([Id], [Author], [BigImageUrls], [Content], [CreateDate], [CreateID], [Creator], [DailyRecommend], [DetailUrl], [Enable], [ImageUrl], [Modifier], [ModifyDate], [ModifyID], [NewsType], [OrderNo], [ReleaseDate], [Title], [ViewCount]) VALUES (73762, NULL, NULL, N'<p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">众所周知，牛都是吃草长大的，可是最近听说居然有牛也在吃巧克力！这是咋回事呢？让我们一起走进位于澳大利亚南部Mayura Station农庄，看一看那里的牛！</span></p><p style="text-indent:32px"><strong><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">先来说说这个农场！</span></strong></p><p style="text-indent:32px"><img src="https://bj.bcebos.com/common1/180905/15361153829172922.jpg@w_500"/><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif"><br/></span></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">Mayura Station</span><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">农场成立于1997年，是澳大利亚精品牛肉生产商中的佼佼者，面向全球出口牛肉，其生产的高品质牛肉受到亚洲顶级餐厅及大量米其林星级餐厅的认可。</span></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">农场位于南澳石灰岩海岸地区（Limestone Coast），这里有着最优质的农场腹地，适宜养殖顶级肉牛，1998年由德布鲁因家族集团（de Bruin Group）接管并参与经营。农场的牛肉主要出口国家为新加坡、迪拜、中国、新西兰及菲律宾。</span></p><p style="text-indent:32px"><strong><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">吃草也吃巧克力！</span></strong></p><p style="text-indent:32px"><img src="https://bj.bcebos.com/common1/180905/15361153832278365.jpg@w_500"/><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif"><br/></span></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">我们都知道澳大利亚的牛肉在全球范围内都是出了名的！已经连续多年蝉联“全球牛排界天下第一”的称号，这并不是没有理由的！您敢相信吗？眼前的牛吃的饲料并不是草，而是巧克力等甜品组成的混合饲料！养牛场的仓库里放的不是饲草，而是整整10吨巧克力！什么M&amp;M巧克力，Smarties巧克力豆，还有一些巧克力碎块和巧克力饼干等等。</span></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">没错，这就是专门给牛配的巧克力甜品饲料！农场主花费了两年的时间，请教了一位日本的喂养牛的营养专家，才制定了不一样的饲养粮食。每头牛一天会吃下两公斤特制巧克力甜品饲料，农场主坚信如此做法定能取得成功！农场主表示：“我们家的牛不只是吃巧克力而已，均衡膳食是必须被考虑的因素，它们不会有糖尿病。”</span></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">事实也的确如此！巧克力喂养出来的牛肉，还真是有奇效的。吃过这种牛肉的顾客都反馈味道非常独特，跟以前吃过的所有牛肉都不一样，尝起来有点甜，而且牛肉有一种坚果般的颜色和风味！总之就是很好吃！</span></p><p style="text-indent:32px"><strong><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">听音乐养牛</span></strong></p><p style="text-indent:32px"><img src="https://bj.bcebos.com/common1/180905/15361158997322042.jpg@w_500"/></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">为培育出世界上最好吃的牛肉，农场的管理人员可谓煞费苦心！牛的待遇比人还好，没事的时候就听听音乐，农场主说了，这样有助于牛放松心情！这样的环境长出的牛肉质量可想而知！牛肉上如同大理石的花纹是评价牛肉质量的重要指标，花纹越多越丰富，表明牛肉越嫩，品质越好！最好的牛肉，大理石花纹最多也就只能打7、8分，但是这里牛肉的大理石花纹至少在9分以上，这种环境下的牛肉能不好吃么！</span></p><p style="text-indent:32px"><strong><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">成功的秘诀：</span></strong></p><p style="text-indent:32px"><img src="https://bj.bcebos.com/common1/180905/15361158996288828.jpg@w_500"/><strong><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif"><br/></span></strong></p><p style="text-indent:32px"><strong><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">1</span><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">、贸易条件</span></strong></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">Mayura</span><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">农场生产的牛肉70%用于出口。据悉他们家的牛肉一部分销往澳洲顶级餐厅，300克的牛排零售价格高达288美元（每千克约788 美元），70%的牛肉出口到亚洲餐厅。</span></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">因此，出口市场的贸易条件对于其发展来说至关重要。德布鲁因集团人力资源及合规经理汉弗莱斯（Lee Humphries）表示，近年来，中国市场成长迅速且具有极大的增长潜力，这主要是由于其市场规模大，对牛肉需求高，尤其是中产阶级人群数扩增，奢侈品牛肉的消费需求也在不断上扬。</span></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">另外，中澳自贸协定（ChAFTA）的实施也是一大利好因素，据澳贸委介绍，中澳FTA极大提高了澳洲牛肉的竞争优势，有力抵抗来自巴西、阿根廷和乌拉圭等国牛肉生产商的竞争。中澳自贸协定关键成果包括：至2024年1月1日前，逐步取消优质澳洲牛肉切块进口关税（目前是12-15%），最迟到2022年1月1日前，取消12%牛杂关税。</span></p><p style="text-indent:32px"><strong><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">2</span><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">、专注品质</span></strong></p><p style="text-indent:32px"><img src="https://bj.bcebos.com/common1/180905/15361153830565072.jpg@w_500"/><strong><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif"><br/></span></strong></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">汉弗莱斯称，纯种牛肉属于优质奢侈品产品，由于生产成本较高，价格方面不具备优势。中国的关税减免政策能够帮助企业大大缩减成本，扩大利润空间。针对这一现象，Mayura农场正在进行扩张计划，包括增加农场面积、强化谷物饲料生产能力及牲畜喂养能力。目标是刺激牛肉产量增长，以满足日益上涨的海外市场需求。</span></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">对产品品质的专注使得Mayura农场成为除日本以外全球最大规模的纯种牛饲养商。</span></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">俗话说，酒香不怕巷子深。许多人为了品这一口牛肉，都愿意千里迢迢专程来到这家养牛场，这家牛场还为此专门设了一个现场牛肉品尝室。</span></p><p style="text-indent:32px"><strong><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">3</span><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">、政府支持</span></strong></p><p style="text-indent:32px"><img src="https://bj.bcebos.com/common1/180905/15361158998365666.jpg@w_500"/><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif"><br/></span></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">首先，在澳洲的每一头牛，都会有一张NLIS，这是澳洲政府制定的“国家牲畜认证系统”，通俗点说，这是一张“牛的身份证”。</span></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">这张“身份证”到底能起到什么作用呢？它记录着一头牛从出生到死亡的全部过程，并且只要在互联网上一查信息，就可以迅速找到这头牛的位置。还有！这张“身份证”会记录这头牛每日的产奶量，然后自动计算下一次的合理饲料配给。这样，如果有哪头牛产奶量有异常了，养牛场就能在第一时间获知并采取应对措施。</span></p><p style="text-indent:32px"><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">在澳洲，每头牛的平均占地面积是：四亩草地！用水紧张的时期，政府会节约用水，甚至限水，水都是要留给牛牛们的。澳洲政府对牛始终保证充足而干净的水源，并且政府还会有专门的委员会，定时检测对养牛农场的水源，确保水质安全才能供牛饮用。</span></p><p><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">试问，充足的水源，肆意奔驰的草原，还有巧克力都那么好吃了，牛肉能不好吃吗？</span></p><p><span style="font-size:16px;font-family:&#39;微软雅黑&#39;,sans-serif">&nbsp; &nbsp; &nbsp; &nbsp;文章来源：搜狐网 腾讯新闻</span></p><p><br/></p>', CAST(0x0000A953011B2780 AS DateTime), 3357, N'侩牛小编', 0, N'http://118.190.209.59:9910/App/App_News/20180906/171409.html', 1, N'https://bj.bcebos.com/common1/180905/15361158996288828.jpg@w_500', N'超级管理员', CAST(0x0000AAAB00A9E624 AS DateTime), 1, 1, NULL, NULL, N'一斤牛肉人民币5369元，这吃巧克力的牛果然不一般！', 12)
GO
INSERT [dbo].[App_News] ([Id], [Author], [BigImageUrls], [Content], [CreateDate], [CreateID], [Creator], [DailyRecommend], [DetailUrl], [Enable], [ImageUrl], [Modifier], [ModifyDate], [ModifyID], [NewsType], [OrderNo], [ReleaseDate], [Title], [ViewCount]) VALUES (73765, NULL, NULL, N'<p style="text-align:justify;text-justify:inter-ideograph;text-indent:32px;line-height:150%"><a></a><a><span style=";line-height:150%;font-family:&#39;微软雅黑&#39;,sans-serif">澳洲进口牛肉占中国总进口量的30%以上，是我国牛肉主要进口过之一，澳洲经历严重干旱对国内牛肉市场或将产生一定影响。受干旱影响澳洲目前国内屠宰量居高，短期有利出口，由于基础母牛被过量宰杀造成的整体牛源短缺将在一个较长的时间内被市场反馈，MIG预测，在未来的12个月内，澳洲活牛价格可能会上涨20-30%，我们预计澳洲价格的上涨势必会传导至国内，预计2019年我国活牛价格仍将继续高位运行。</span></a></p><p style="text-align:justify;text-justify:inter-ideograph;text-indent:32px;line-height:150%"><span style=";line-height:150%;font-family:&#39;微软雅黑&#39;,sans-serif">以下为MIG详细报道内容：</span></p><p style="text-align:justify;text-justify:inter-ideograph;text-indent:32px;line-height:150%"><span style=";line-height:150%;font-family:&#39;微软雅黑&#39;,sans-serif">澳洲干旱最早从去年10月份昆士兰开始，持续到今年3月的维多利亚地区，新南威尔士等州，目前仍在持续，目前澳洲相关机构预测，9月10月澳洲仍可能持续干旱。加上不断上升的饲料成本使牧场主更愿意将存栏送至屠宰场进行屠宰，集中出售存栏将会导致屠宰场牛源供给增加，屠宰场可以压低活牛收购价格，短期内获得成本优势。</span></p><p style="text-align:justify;text-justify:inter-ideograph;text-indent:16px;line-height:150%"><span style=";line-height:150%;font-family:&#39;微软雅黑&#39;,sans-serif">&nbsp;</span><span style=";line-height:150%;font-family:&#39;微软雅黑&#39;,sans-serif">澳洲的活牛价格指数EYCI一路走低，而出口价格由于国际市场的需求保持坚挺，澳洲屠宰厂短期获利空间增加。</span></p><p style="text-align:justify;text-justify:inter-ideograph;text-indent:16px;line-height:150%"><span style=";line-height:150%;font-family:&#39;微软雅黑&#39;,sans-serif">&nbsp;</span><span style=";line-height:150%;font-family:&#39;微软雅黑&#39;,sans-serif">MIG</span><span style=";line-height:150%;font-family:&#39;微软雅黑&#39;,sans-serif">预计澳洲国内价格的低点将出现在十月，不管是否继续干旱。</span></p><p style="text-align:justify;text-justify:inter-ideograph;text-indent:16px;line-height:150%"><span style=";line-height:150%;font-family:&#39;微软雅黑&#39;,sans-serif">&nbsp;</span><span style=";line-height:150%;font-family:&#39;微软雅黑&#39;,sans-serif">澳洲政府已开始进行干预，一方面已开始向牧场主拨款，以缓解他们的损失，保护存栏。另一方面对各州陆续开始设置母牛宰杀上限比例，做种群恢复的工作。因此预计屠宰量可能会在10月前后达到顶峰，然后市场逐渐进入供应偏紧的状态，国际市场的需求下半年预计保持强势，价格会逐渐回升。根据MIG预测，在未来的12个月内，活牛价格可能会上涨20-30%，由于基础母牛被过量宰杀造成的整体牛源短缺将在一个较长的时间内被市场反馈。</span></p><p style="text-align:justify;text-justify:inter-ideograph;text-indent:16px;line-height:150%"><span style=";line-height:150%;font-family:&#39;微软雅黑&#39;,sans-serif">&nbsp;</span><span style=";line-height:150%;font-family:&#39;微软雅黑&#39;,sans-serif">由于干旱导致的高屠宰量，使EYCI的价格维持弱势状态。2013-2015年干旱的EYCI表现，可以发现EYCI从2015年下半年由于牛源减少，屠宰量下降，价格逐渐回升。</span></p><p><span style="font-size:14px;font-family:仿宋">&nbsp; &nbsp; 文章来源：本文转载自梅特国际集团中国进口牛肉行业8月月报，侩牛编辑，如有版权等相关问题，我们将予以修正或删除。</span></p>', CAST(0x0000A95400925680 AS DateTime), 3357, N'侩牛小编', 1, N'http://118.190.209.59:9910/App/App_News/20180907/085323.html', 1, N'https://bj.bcebos.com/common1/180905/15361158998365666.jpg@w_500', N'超级管理员', CAST(0x0000AAAB00A9CD88 AS DateTime), 1, 2, NULL, NULL, N'MIG预测未来12个月内活牛价格可能会上涨20-30%', 13)
GO
SET IDENTITY_INSERT [dbo].[App_News] OFF
GO
SET IDENTITY_INSERT [dbo].[App_ReportPrice] ON 

GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (66, N'0-2月龄', CAST(0x078004075E4DB23E0B AS DateTime2), 1, 1, N'测试超级管理员', N'重庆市', CAST(0x07800D7B6C99AF3E0B AS DateTime2), 3331, N'Mr.G', 0, N'超级管理员', CAST(0x0700067F019C27400B AS DateTime2), 1, CAST(13 AS Numeric(10, 0)), N'西门塔尔')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (67, N'12-16月龄', CAST(0x07801F0B3156B23E0B AS DateTime2), 1, 1, N'测试超级管理员', N'忻州市', CAST(0x0700BDA09C55B23E0B AS DateTime2), 3344, N'啊啊啊', 0, N'超级管理员', CAST(0x07006A62BE7EE73F0B AS DateTime2), 1, CAST(29 AS Numeric(10, 0)), N'西门塔尔')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (71, N'7-12月龄', CAST(0x0700CE7D177EE73F0B AS DateTime2), 1, 1, N'超级管理员', N'石家庄市', CAST(0x07806775E58FE23F0B AS DateTime2), 1, N'超级管理员', 1, N'超级管理员', CAST(0x07801756897EE73F0B AS DateTime2), 1, CAST(22 AS Numeric(10, 0)), N'神户肉牛')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (72, N'16月龄以上', CAST(0x0700CE7D177EE73F0B AS DateTime2), 1, 1, N'超级管理员', N'秦皇岛市', CAST(0x0780A872F690E23F0B AS DateTime2), 1, N'超级管理员', 1, N'超级管理员', CAST(0x07803AC6844FFF3F0B AS DateTime2), 1, CAST(21 AS Numeric(10, 0)), N'南阳牛')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (74, N'7-12月龄', CAST(0x07806391847EE73F0B AS DateTime2), 1, 2, N'超级管理员', N'唐山市', CAST(0x0780B9BD729AE23F0B AS DateTime2), 1, N'超级管理员', 0, N'超级管理员', CAST(0x07806AB3714FFF3F0B AS DateTime2), 1, CAST(65 AS Numeric(10, 0)), N'利木赞牛')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (75, N'7-12月龄', CAST(0x07807559E557E73F0B AS DateTime2), 1, 1, N'超级管理员', N'北京市', CAST(0x078020C2E89AE23F0B AS DateTime2), 1, N'超级管理员', 1, N'超级管理员', CAST(0x078059D07E4FFF3F0B AS DateTime2), 1, CAST(43 AS Numeric(10, 0)), N'夏洛莱牛')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (81, N'2-6月龄', CAST(0x070070A2F961E93F0B AS DateTime2), 1, 2, N'超级管理员', N'石家庄市', CAST(0x07001BACA75EE93F0B AS DateTime2), 1, N'超级管理员', 1, N'超级管理员', CAST(0x07803135A361E93F0B AS DateTime2), 1, CAST(14 AS Numeric(10, 0)), N'利木赞牛')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (82, N'7-12月龄', CAST(0x0700E3D1766AE93F0B AS DateTime2), 1, 1, N'超级管理员', N'唐山市', CAST(0x0780B250CF61E93F0B AS DateTime2), 1, N'超级管理员', 0, N'超级管理员', CAST(0x070019FCE261E93F0B AS DateTime2), 1, CAST(78 AS Numeric(10, 0)), N'利木赞牛')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (83, N'2-6月龄', NULL, NULL, 0, NULL, N'天津市', CAST(0x078007DCDB6FF13F0B AS DateTime2), 1, N'超级管理员', 1, N'超级管理员', CAST(0x078061BFF99B27400B AS DateTime2), 1, CAST(12 AS Numeric(10, 0)), N'利木赞牛')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (84, N'16月龄以上', NULL, NULL, NULL, NULL, N'天津市', CAST(0x078031D20C9C27400B AS DateTime2), 1, N'超级管理员', 1, N'', NULL, NULL, CAST(34 AS Numeric(10, 0)), N'夏洛莱牛')
GO
SET IDENTITY_INSERT [dbo].[App_ReportPrice] OFF
GO
SET IDENTITY_INSERT [dbo].[App_Transaction] ON 

GO
INSERT [dbo].[App_Transaction] ([Id], [CowType], [CreateDate], [CreateID], [Creator], [Describe], [Enable], [Modifier], [ModifyDate], [ModifyID], [Name], [PhoneNo], [Quantity], [TransactionType]) VALUES (4, N'1', CAST(0x0000AACC012B61CC AS DateTime), 1, N'超级管理员', N'买买买买买买1', NULL, NULL, NULL, NULL, N'大锤1', N'13419098211', 25, 0)
GO
INSERT [dbo].[App_Transaction] ([Id], [CowType], [CreateDate], [CreateID], [Creator], [Describe], [Enable], [Modifier], [ModifyDate], [ModifyID], [Name], [PhoneNo], [Quantity], [TransactionType]) VALUES (5, N'1', CAST(0x0000AACC012B61CC AS DateTime), 1, N'超级管理员', N'买买买买买买2', NULL, NULL, NULL, NULL, N'大锤2', N'13419098211', 25, 1)
GO
INSERT [dbo].[App_Transaction] ([Id], [CowType], [CreateDate], [CreateID], [Creator], [Describe], [Enable], [Modifier], [ModifyDate], [ModifyID], [Name], [PhoneNo], [Quantity], [TransactionType]) VALUES (6, N'3', CAST(0x0000AACC012EC9AC AS DateTime), 1, N'超级管理员', N'买买买买买买2', NULL, NULL, NULL, NULL, N'小乔', N'13419444421', 199, 1)
GO
SET IDENTITY_INSERT [dbo].[App_Transaction] OFF
GO
SET IDENTITY_INSERT [dbo].[App_TransactionAvgPrice] ON 

GO
INSERT [dbo].[App_TransactionAvgPrice] ([Id], [AgeRange], [AvgPrice], [City], [CreateDate], [CreateID], [Creator], [Date], [Enable], [IsTop], [Modifier], [ModifyDate], [ModifyID], [Variety]) VALUES (2, N'12-16月龄', CAST(22.00 AS Decimal(18, 2)), N'天津市', CAST(0x0000AA4500E86DF4 AS DateTime), 1, N'超级管理员', CAST(0xB83F0B00 AS Date), 0, 1, N'超级管理员', CAST(0x0000AA9C00D7F460 AS DateTime), 1, N'鲁西黄牛')
GO
INSERT [dbo].[App_TransactionAvgPrice] ([Id], [AgeRange], [AvgPrice], [City], [CreateDate], [CreateID], [Creator], [Date], [Enable], [IsTop], [Modifier], [ModifyDate], [ModifyID], [Variety]) VALUES (3, N'16月龄以上', CAST(18.00 AS Decimal(18, 2)), N'石家庄市', CAST(0x0000AA4500E88564 AS DateTime), 1, N'超级管理员', CAST(0xA23F0B00 AS Date), 0, 1, N'超级管理员', CAST(0x0000AA9C00FCE0B8 AS DateTime), 1, N'秦川牛')
GO
INSERT [dbo].[App_TransactionAvgPrice] ([Id], [AgeRange], [AvgPrice], [City], [CreateDate], [CreateID], [Creator], [Date], [Enable], [IsTop], [Modifier], [ModifyDate], [ModifyID], [Variety]) VALUES (6, N'7-12月龄', CAST(19.00 AS Decimal(18, 2)), N'北京市', CAST(0x0000AA470102DD88 AS DateTime), 1, N'超级管理员', CAST(0xA13F0B00 AS Date), 0, 1, N'超级管理员', CAST(0x0000AA8B00FDFD7C AS DateTime), 1, N'神户肉牛')
GO
INSERT [dbo].[App_TransactionAvgPrice] ([Id], [AgeRange], [AvgPrice], [City], [CreateDate], [CreateID], [Creator], [Date], [Enable], [IsTop], [Modifier], [ModifyDate], [ModifyID], [Variety]) VALUES (7, N'2-6月龄', CAST(22.00 AS Decimal(18, 2)), N'北京市', CAST(0x0000AA8800AFB540 AS DateTime), 1, N'超级管理员', CAST(0xE73F0B00 AS Date), 0, 1, N'超级管理员', CAST(0x0000AA9B00E2C7DC AS DateTime), 1, N'南阳牛')
GO
INSERT [dbo].[App_TransactionAvgPrice] ([Id], [AgeRange], [AvgPrice], [City], [CreateDate], [CreateID], [Creator], [Date], [Enable], [IsTop], [Modifier], [ModifyDate], [ModifyID], [Variety]) VALUES (8, N'12-16月龄', CAST(23.43 AS Decimal(18, 2)), N'石家庄市', CAST(0x0000AA8800EFA27C AS DateTime), 1, N'超级管理员', CAST(0xE13F0B00 AS Date), 0, 1, N'超级管理员', CAST(0x0000AACD00A5EBC8 AS DateTime), 1, N'西门塔尔')
GO
INSERT [dbo].[App_TransactionAvgPrice] ([Id], [AgeRange], [AvgPrice], [City], [CreateDate], [CreateID], [Creator], [Date], [Enable], [IsTop], [Modifier], [ModifyDate], [ModifyID], [Variety]) VALUES (10, N'7-12月龄', CAST(22.00 AS Decimal(18, 2)), N'唐山市', CAST(0x0000AA8801290774 AS DateTime), 1, N'超级管理员', CAST(0xDE3F0B00 AS Date), NULL, 1, N'超级管理员', CAST(0x0000AAB200B06058 AS DateTime), 1, N'利木赞牛')
GO
SET IDENTITY_INSERT [dbo].[App_TransactionAvgPrice] OFF
GO
INSERT [dbo].[Sell8] ([Order_Id], [OrderType], [TranNo], [SellNo], [Qty], [AuditDate], [AuditStatus], [AuditId], [Auditor], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'f30e1d98-b2c6-4150-b372-a9154553041e', 2, N'2019000001810003', N'2019000001810004', 56, CAST(0x0000AACC00DDF388 AS DateTime), 1, 1, N'超级管理员', NULL, 1, N'超级管理员', CAST(0x0000AACC00CB7C30 AS DateTime), 1, N'超级管理员', CAST(0x0000AACD00A7745C AS DateTime))
GO
INSERT [dbo].[Sell8] ([Order_Id], [OrderType], [TranNo], [SellNo], [Qty], [AuditDate], [AuditStatus], [AuditId], [Auditor], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'da70748d-6c95-4bdb-bcf2-beb55c1693e3', 2, N'2019000001810001', N'2019000001810002', 200, NULL, 0, NULL, NULL, N'买家女朋友不要了', 1, N'超级管理员', CAST(0x0000AACB0136B054 AS DateTime), 1, N'超级管理员', CAST(0x0000AACD00F64104 AS DateTime))
GO
INSERT [dbo].[SellOrder] ([Order_Id], [OrderType], [TranNo], [SellNo], [Qty], [AuditDate], [AuditStatus], [AuditId], [Auditor], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'8e68188b-a9a2-45f5-87cd-58c421b14090', 1, N'2019000001810005', N'2019000001810006', 188, CAST(0x0000AACC00DDF388 AS DateTime), 1, 1, N'超级管理员', N'4', 1, N'超级管理员', CAST(0x0000AACC00CB93A0 AS DateTime), 1, N'超级管理员', CAST(0x0000AACE011A69A8 AS DateTime))
GO
INSERT [dbo].[SellOrder] ([Order_Id], [OrderType], [TranNo], [SellNo], [Qty], [AuditDate], [AuditStatus], [AuditId], [Auditor], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'f30e1d98-b2c6-4150-b372-a9154553041e', 2, N'2019000001810003', N'2019000001810004', 56, CAST(0x0000AACC00DDF388 AS DateTime), 1, 1, N'超级管理员', NULL, 1, N'超级管理员', CAST(0x0000AACC00CB7C30 AS DateTime), 1, N'超级管理员', CAST(0x0000AACD00A7745C AS DateTime))
GO
INSERT [dbo].[SellOrder] ([Order_Id], [OrderType], [TranNo], [SellNo], [Qty], [AuditDate], [AuditStatus], [AuditId], [Auditor], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'da70748d-6c95-4bdb-bcf2-beb55c1693e3', 2, N'2019000001810001', N'2019000001810002', 200, NULL, 0, NULL, NULL, N'买家女朋友不要了', 1, N'超级管理员', CAST(0x0000AACB0136B054 AS DateTime), 1, N'超级管理员', CAST(0x0000AACD00F64104 AS DateTime))
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'08d73bef-9771-0dad-717f-0115449d0db0', N'f30e1d98-b2c6-4150-b372-a9154553041e', N'男装', N'3', 1, NULL, NULL, 1, N'超级管理员', CAST(0x0000AACC00CB7C30 AS DateTime), 1, N'超级管理员', CAST(0x0000AACD00A7745C AS DateTime))
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'08d72cf6-d9f5-bee9-32ff-5808ff1238cb', N'6efb65b8-585e-4be7-8b77-94c76e362412', N'测试', N'测试', 7, CAST(8.00 AS Decimal(18, 2)), NULL, 1, N'超级管理员', CAST(0x0000AAB900B6A954 AS DateTime), 1, N'超级管理员', CAST(0x0000AAB900B6BC14 AS DateTime))
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'08d72cf6-ed6c-f0e0-9e97-5930a04f2ebc', N'ad698348-1535-4221-9a1a-57db5cb351e4', N'2', N'2', 2, NULL, NULL, 1, N'超级管理员', CAST(0x0000AAB900B6CED4 AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'08d73b5c-f448-6ac7-5db9-66be4d4e6ca5', N'da70748d-6c95-4bdb-bcf2-beb55c1693e3', N'男装', N'32', 2, CAST(2.00 AS Decimal(18, 2)), N'33', 1, N'超级管理员', CAST(0x0000AACB0136B180 AS DateTime), 1, N'超级管理员', CAST(0x0000AACD00F64104 AS DateTime))
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'fc332cef-c1eb-4063-b71c-6addf19a8e8b', N'6efb65b8-585e-4be7-8b77-94c76e362412', N'22', N'2', 0, NULL, NULL, 1, N'超级管理员', CAST(0x0000AAB900B6BC14 AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'08d73bef-a3a7-4ce3-00fb-8a1249593c9c', N'8e68188b-a9a2-45f5-87cd-58c421b14090', N'女装', N'4', 1, NULL, NULL, 1, N'超级管理员', CAST(0x0000AACC00CB94CC AS DateTime), 1, N'超级管理员', CAST(0x0000AACE011A69A8 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Sys_City] ON 

GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (1, N'110100', N'市辖区', N'110000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (2, N'110200', N'县', N'110000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (3, N'120100', N'市辖区', N'120000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (4, N'120200', N'县', N'120000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (5, N'130100', N'石家庄市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (6, N'130200', N'唐山市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (7, N'130300', N'秦皇岛市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (8, N'130400', N'邯郸市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (9, N'130500', N'邢台市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (10, N'130600', N'保定市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (11, N'130700', N'张家口市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (12, N'130800', N'承德市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (13, N'130900', N'沧州市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (14, N'131000', N'廊坊市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (15, N'131100', N'衡水市', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (16, N'140100', N'太原市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (17, N'140200', N'大同市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (18, N'140300', N'阳泉市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (19, N'140400', N'长治市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (20, N'140500', N'晋城市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (21, N'140600', N'朔州市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (22, N'140700', N'晋中市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (23, N'140800', N'运城市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (24, N'140900', N'忻州市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (25, N'141000', N'临汾市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (26, N'141100', N'吕梁市', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (27, N'150100', N'呼和浩特市', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (28, N'150200', N'包头市', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (29, N'150300', N'乌海市', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (30, N'150400', N'赤峰市', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (31, N'150500', N'通辽市', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (32, N'150600', N'鄂尔多斯市', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (33, N'150700', N'呼伦贝尔市', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (34, N'150800', N'巴彦淖尔市', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (35, N'150900', N'乌兰察布市', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (36, N'152200', N'兴安盟', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (37, N'152500', N'锡林郭勒盟', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (38, N'152900', N'阿拉善盟', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (39, N'210100', N'沈阳市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (40, N'210200', N'大连市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (41, N'210300', N'鞍山市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (42, N'210400', N'抚顺市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (43, N'210500', N'本溪市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (44, N'210600', N'丹东市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (45, N'210700', N'锦州市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (46, N'210800', N'营口市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (47, N'210900', N'阜新市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (48, N'211000', N'辽阳市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (49, N'211100', N'盘锦市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (50, N'211200', N'铁岭市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (51, N'211300', N'朝阳市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (52, N'211400', N'葫芦岛市', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (53, N'220100', N'长春市', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (54, N'220200', N'吉林市', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (55, N'220300', N'四平市', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (56, N'220400', N'辽源市', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (57, N'220500', N'通化市', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (58, N'220600', N'白山市', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (59, N'220700', N'松原市', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (60, N'220800', N'白城市', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (61, N'222400', N'延边朝鲜族自治州', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (62, N'230100', N'哈尔滨市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (63, N'230200', N'齐齐哈尔市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (64, N'230300', N'鸡西市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (65, N'230400', N'鹤岗市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (66, N'230500', N'双鸭山市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (67, N'230600', N'大庆市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (68, N'230700', N'伊春市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (69, N'230800', N'佳木斯市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (70, N'230900', N'七台河市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (71, N'231000', N'牡丹江市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (72, N'231100', N'黑河市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (73, N'231200', N'绥化市', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (74, N'232700', N'大兴安岭地区', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (75, N'310100', N'市辖区', N'310000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (76, N'310200', N'县', N'310000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (77, N'320100', N'南京市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (78, N'320200', N'无锡市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (79, N'320300', N'徐州市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (80, N'320400', N'常州市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (81, N'320500', N'苏州市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (82, N'320600', N'南通市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (83, N'320700', N'连云港市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (84, N'320800', N'淮安市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (85, N'320900', N'盐城市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (86, N'321000', N'扬州市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (87, N'321100', N'镇江市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (88, N'321200', N'泰州市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (89, N'321300', N'宿迁市', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (90, N'330100', N'杭州市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (91, N'330200', N'宁波市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (92, N'330300', N'温州市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (93, N'330400', N'嘉兴市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (94, N'330500', N'湖州市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (95, N'330600', N'绍兴市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (96, N'330700', N'金华市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (97, N'330800', N'衢州市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (98, N'330900', N'舟山市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (99, N'331000', N'台州市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (100, N'331100', N'丽水市', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (101, N'340100', N'合肥市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (102, N'340200', N'芜湖市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (103, N'340300', N'蚌埠市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (104, N'340400', N'淮南市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (105, N'340500', N'马鞍山市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (106, N'340600', N'淮北市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (107, N'340700', N'铜陵市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (108, N'340800', N'安庆市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (109, N'341000', N'黄山市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (110, N'341100', N'滁州市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (111, N'341200', N'阜阳市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (112, N'341300', N'宿州市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (113, N'341400', N'巢湖市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (114, N'341500', N'六安市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (115, N'341600', N'亳州市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (116, N'341700', N'池州市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (117, N'341800', N'宣城市', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (118, N'350100', N'福州市', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (119, N'350200', N'厦门市', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (120, N'350300', N'莆田市', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (121, N'350400', N'三明市', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (122, N'350500', N'泉州市', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (123, N'350600', N'漳州市', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (124, N'350700', N'南平市', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (125, N'350800', N'龙岩市', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (126, N'350900', N'宁德市', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (127, N'360100', N'南昌市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (128, N'360200', N'景德镇市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (129, N'360300', N'萍乡市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (130, N'360400', N'九江市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (131, N'360500', N'新余市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (132, N'360600', N'鹰潭市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (133, N'360700', N'赣州市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (134, N'360800', N'吉安市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (135, N'360900', N'宜春市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (136, N'361000', N'抚州市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (137, N'361100', N'上饶市', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (138, N'370100', N'济南市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (139, N'370200', N'青岛市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (140, N'370300', N'淄博市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (141, N'370400', N'枣庄市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (142, N'370500', N'东营市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (143, N'370600', N'烟台市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (144, N'370700', N'潍坊市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (145, N'370800', N'济宁市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (146, N'370900', N'泰安市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (147, N'371000', N'威海市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (148, N'371100', N'日照市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (149, N'371200', N'莱芜市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (150, N'371300', N'临沂市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (151, N'371400', N'德州市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (152, N'371500', N'聊城市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (153, N'371600', N'滨州市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (154, N'371700', N'荷泽市', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (155, N'410100', N'郑州市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (156, N'410200', N'开封市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (157, N'410300', N'洛阳市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (158, N'410400', N'平顶山市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (159, N'410500', N'安阳市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (160, N'410600', N'鹤壁市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (161, N'410700', N'新乡市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (162, N'410800', N'焦作市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (163, N'410900', N'濮阳市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (164, N'411000', N'许昌市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (165, N'411100', N'漯河市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (166, N'411200', N'三门峡市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (167, N'411300', N'南阳市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (168, N'411400', N'商丘市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (169, N'411500', N'信阳市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (170, N'411600', N'周口市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (171, N'411700', N'驻马店市', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (172, N'420100', N'武汉市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (173, N'420200', N'黄石市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (174, N'420300', N'十堰市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (175, N'420500', N'宜昌市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (176, N'420600', N'襄樊市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (177, N'420700', N'鄂州市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (178, N'420800', N'荆门市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (179, N'420900', N'孝感市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (180, N'421000', N'荆州市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (181, N'421100', N'黄冈市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (182, N'421200', N'咸宁市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (183, N'421300', N'随州市', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (184, N'422800', N'恩施土家族苗族自治州', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (185, N'429000', N'省直辖行政单位', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (186, N'430100', N'长沙市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (187, N'430200', N'株洲市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (188, N'430300', N'湘潭市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (189, N'430400', N'衡阳市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (190, N'430500', N'邵阳市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (191, N'430600', N'岳阳市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (192, N'430700', N'常德市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (193, N'430800', N'张家界市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (194, N'430900', N'益阳市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (195, N'431000', N'郴州市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (196, N'431100', N'永州市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (197, N'431200', N'怀化市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (198, N'431300', N'娄底市', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (199, N'433100', N'湘西土家族苗族自治州', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (200, N'440100', N'广州市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (201, N'440200', N'韶关市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (202, N'440300', N'深圳市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (203, N'440400', N'珠海市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (204, N'440500', N'汕头市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (205, N'440600', N'佛山市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (206, N'440700', N'江门市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (207, N'440800', N'湛江市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (208, N'440900', N'茂名市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (209, N'441200', N'肇庆市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (210, N'441300', N'惠州市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (211, N'441400', N'梅州市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (212, N'441500', N'汕尾市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (213, N'441600', N'河源市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (214, N'441700', N'阳江市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (215, N'441800', N'清远市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (216, N'441900', N'东莞市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (217, N'442000', N'中山市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (218, N'445100', N'潮州市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (219, N'445200', N'揭阳市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (220, N'445300', N'云浮市', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (221, N'450100', N'南宁市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (222, N'450200', N'柳州市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (223, N'450300', N'桂林市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (224, N'450400', N'梧州市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (225, N'450500', N'北海市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (226, N'450600', N'防城港市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (227, N'450700', N'钦州市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (228, N'450800', N'贵港市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (229, N'450900', N'玉林市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (230, N'451000', N'百色市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (231, N'451100', N'贺州市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (232, N'451200', N'河池市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (233, N'451300', N'来宾市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (234, N'451400', N'崇左市', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (235, N'460100', N'海口市', N'460000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (236, N'460200', N'三亚市', N'460000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (237, N'469000', N'省直辖县级行政单位', N'460000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (238, N'500100', N'市辖区', N'500000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (239, N'500200', N'县', N'500000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (240, N'500300', N'市', N'500000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (241, N'510100', N'成都市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (242, N'510300', N'自贡市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (243, N'510400', N'攀枝花市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (244, N'510500', N'泸州市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (245, N'510600', N'德阳市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (246, N'510700', N'绵阳市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (247, N'510800', N'广元市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (248, N'510900', N'遂宁市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (249, N'511000', N'内江市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (250, N'511100', N'乐山市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (251, N'511300', N'南充市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (252, N'511400', N'眉山市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (253, N'511500', N'宜宾市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (254, N'511600', N'广安市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (255, N'511700', N'达州市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (256, N'511800', N'雅安市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (257, N'511900', N'巴中市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (258, N'512000', N'资阳市', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (259, N'513200', N'阿坝藏族羌族自治州', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (260, N'513300', N'甘孜藏族自治州', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (261, N'513400', N'凉山彝族自治州', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (262, N'520100', N'贵阳市', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (263, N'520200', N'六盘水市', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (264, N'520300', N'遵义市', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (265, N'520400', N'安顺市', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (266, N'522200', N'铜仁地区', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (267, N'522300', N'黔西南布依族苗族自治州', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (268, N'522400', N'毕节地区', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (269, N'522600', N'黔东南苗族侗族自治州', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (270, N'522700', N'黔南布依族苗族自治州', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (271, N'530100', N'昆明市', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (272, N'530300', N'曲靖市', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (273, N'530400', N'玉溪市', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (274, N'530500', N'保山市', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (275, N'530600', N'昭通市', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (276, N'530700', N'丽江市', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (277, N'530800', N'思茅市', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (278, N'530900', N'临沧市', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (279, N'532300', N'楚雄彝族自治州', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (280, N'532500', N'红河哈尼族彝族自治州', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (281, N'532600', N'文山壮族苗族自治州', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (282, N'532800', N'西双版纳傣族自治州', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (283, N'532900', N'大理白族自治州', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (284, N'533100', N'德宏傣族景颇族自治州', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (285, N'533300', N'怒江傈僳族自治州', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (286, N'533400', N'迪庆藏族自治州', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (287, N'540100', N'拉萨市', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (288, N'542100', N'昌都地区', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (289, N'542200', N'山南地区', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (290, N'542300', N'日喀则地区', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (291, N'542400', N'那曲地区', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (292, N'542500', N'阿里地区', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (293, N'542600', N'林芝地区', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (294, N'610100', N'西安市', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (295, N'610200', N'铜川市', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (296, N'610300', N'宝鸡市', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (297, N'610400', N'咸阳市', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (298, N'610500', N'渭南市', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (299, N'610600', N'延安市', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (300, N'610700', N'汉中市', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (301, N'610800', N'榆林市', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (302, N'610900', N'安康市', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (303, N'611000', N'商洛市', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (304, N'620100', N'兰州市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (305, N'620200', N'嘉峪关市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (306, N'620300', N'金昌市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (307, N'620400', N'白银市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (308, N'620500', N'天水市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (309, N'620600', N'武威市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (310, N'620700', N'张掖市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (311, N'620800', N'平凉市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (312, N'620900', N'酒泉市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (313, N'621000', N'庆阳市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (314, N'621100', N'定西市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (315, N'621200', N'陇南市', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (316, N'622900', N'临夏回族自治州', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (317, N'623000', N'甘南藏族自治州', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (318, N'630100', N'西宁市', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (319, N'632100', N'海东地区', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (320, N'632200', N'海北藏族自治州', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (321, N'632300', N'黄南藏族自治州', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (322, N'632500', N'海南藏族自治州', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (323, N'632600', N'果洛藏族自治州', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (324, N'632700', N'玉树藏族自治州', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (325, N'632800', N'海西蒙古族藏族自治州', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (326, N'640100', N'银川市', N'640000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (327, N'640200', N'石嘴山市', N'640000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (328, N'640300', N'吴忠市', N'640000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (329, N'640400', N'固原市', N'640000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (330, N'640500', N'中卫市', N'640000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (331, N'650100', N'乌鲁木齐市', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (332, N'650200', N'克拉玛依市', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (333, N'652100', N'吐鲁番地区', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (334, N'652200', N'哈密地区', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (335, N'652300', N'昌吉回族自治州', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (336, N'652700', N'博尔塔拉蒙古自治州', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (337, N'652800', N'巴音郭楞蒙古自治州', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (338, N'652900', N'阿克苏地区', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (339, N'653000', N'克孜勒苏柯尔克孜自治州', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (340, N'653100', N'喀什地区', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (341, N'653200', N'和田地区', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (342, N'654000', N'伊犁哈萨克自治州', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (343, N'654200', N'塔城地区', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (344, N'654300', N'阿勒泰地区', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (345, N'659000', N'省直辖行政单位', N'650000')
GO
SET IDENTITY_INSERT [dbo].[Sys_City] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Dictionary] ON 

GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (3, N'{valueField: ''Enable'',
textField: ''Enable'',
 containField: null,
  handler: null }', CAST(0x0000AA81012224F4 AS DateTime), NULL, N'admin', N'1', NULL, N'是否值', N'enable', 1, N'测试超级管理员', CAST(0x0000A919011257A4 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (30, N'{valueField: ''Success'',
 textField: ''Success'', 
 containField: null,
 handler: null }
', CAST(0x0000A8FC012FCB7C AS DateTime), 0, N'测试超级管理员', NULL, NULL, N'响应状态', N'restatus', 1, N'测试超级管理员', CAST(0x0000A8FD00AAC850 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (31, N'{valueField: ''LogType'',
 textField: ''LogType'', 
 containField: null,
 handler: null }
', CAST(0x0000A8FD00F36114 AS DateTime), NULL, N'测试超级管理员', NULL, NULL, N'日志类型', N'log', 1, N'测试超级管理员', CAST(0x0000A92F00F23190 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (32, N'{valueField: ''Role_Id'',
 textField: ''RoleName'', 
 containField: [''Role_Id'',''RoleName''],
 handler: null }
', CAST(0x0000A8FF01150404 AS DateTime), NULL, N'测试超级管理员', NULL, N'SELECT Role_Id as ''key'',RoleName as ''value'' FROM Sys_Role WHERE Enable=1
', N'角色列表', N'roles', 1, N'测试超级管理员', CAST(0x0000A91C00F8424C AS DateTime), 1, 123, 0, N'sql语句需要key,value列，界面才能绑定数据源')
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (34, N'{valueField: ''PINType'',
 textField: ''PINTypeV'', 
 containField:null
}', CAST(0x0000A91800A5F078 AS DateTime), NULL, N'测试超级管理员', NULL, NULL, N'验证码获取记录', N'pin', 1, N'测试超级管理员', CAST(0x0000A91900E8F4B8 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (35, N'{
 valueField: ''AuditStatus'',
 textField: ''AuditStatus'',
  containField:null 
}', CAST(0x0000A91900B2F8CC AS DateTime), NULL, N'测试超级管理员', NULL, NULL, N'审核状态', N'audit', 1, N'测试超级管理员', CAST(0x0000A91900B61804 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (36, N'{
 valueField: ''Variety'',
 textField: ''Variety'',
  containField:null 
}', CAST(0x0000A91900E86A70 AS DateTime), 1, N'测试超级管理员', NULL, NULL, N'品种', N'pz', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (37, N'{
 valueField: ''AgeRange'',
 textField: ''AgeRange'',
  containField:null 
}', CAST(0x0000A91900E8D898 AS DateTime), NULL, N'测试超级管理员', NULL, NULL, N'月龄', N'age', 1, N'测试超级管理员', CAST(0x0000A91900EAC84C AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (38, N'{
 valueField: ''City'',
 textField: ''City'',
  containField:null 
}', CAST(0x0000A91900EBC56C AS DateTime), NULL, N'测试超级管理员', NULL, N'
SELECT  CASE WHEN  CityName=''市辖区'' THEN  ProvinceName ELSE CityName end  as  ''key'',CASE WHEN  CityName=''市辖区'' THEN  ProvinceName ELSE CityName end  as  ''value''  FROM Sys_City AS a 
INNER JOIN Sys_Province AS b 
ON a.ProvinceCode=b.ProvinceCode
WHERE a.CityName<> ''县''', N'城市', N'city', 1, N'超级管理员', CAST(0x0000AACE0155872D AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (39, N'{
 valueField: ''ReplyStatus'',
 textField: ''ReplyStatus'',
  containField:null 
}', CAST(0x0000A91900F54E70 AS DateTime), NULL, N'测试超级管理员', NULL, NULL, N'回复状态', N'reply', 1, N'测试超级管理员', CAST(0x0000A91900F62AC0 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (41, N'{
 valueField: ''Sex'',
 textField: ''Sex'',
  containField:null 
}', CAST(0x0000A91901033440 AS DateTime), 1, N'测试超级管理员', NULL, NULL, N'公母牛', N'sex', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (42, N'{
 valueField: ''Temperature'',
 textField: ''Temperature'',
  containField:null 
}', CAST(0x0000A91901043AC0 AS DateTime), 1, N'测试超级管理员', NULL, NULL, N'温度', N'wd', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (44, N'{
 valueField: ''NewsType'',
 textField: ''NewsType'',
  containField:null 
}', CAST(0x0000A919010C0FD4 AS DateTime), 1, N'测试超级管理员', NULL, NULL, N'新闻类型', N'news', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (45, N'{
 valueField: ''Expire'',
 textField: ''Expire'',
  containField:null 
}', CAST(0x0000A91901124AC0 AS DateTime), 1, N'测试超级管理员', NULL, NULL, N'是否过期', N'expire', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (46, N'{
 valueField: ''ProvinceName'',
 textField: ''ProvinceName'',
  containField:null 
}', CAST(0x0000A91F00DDCE08 AS DateTime), NULL, N'测试超级管理员', NULL, N'
SELECT  CASE WHEN  CityName=''市辖区'' THEN  ProvinceName ELSE CityName end  as  ''key'',CASE WHEN  CityName=''市辖区'' THEN  ProvinceName ELSE CityName end  as  ''value''  FROM Sys_City AS a 
INNER JOIN Sys_Province AS b 
ON a.ProvinceCode=b.ProvinceCode
WHERE a.CityName<> ''县''', N'省列表', N'pro', 1, N'超级管理员', CAST(0x0000AACE015591F4 AS DateTime), 1, NULL, 0, N'sql语句需要key,value列，界面才能绑定数据源')
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (48, N'{
 valueField: ''ClassifyId'',
 textField: ''ClassifyTitle'',
  containField:null 
}', CAST(0x0000A92100A94A48 AS DateTime), NULL, N'测试超级管理员', NULL, NULL, N'是否买入', N'nav', 1, N'超级管理员', CAST(0x0000AACC012B4B88 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (49, N'{
 valueField: ''Gender'',
 textField: ''Gender'',
  containField:null 
}', CAST(0x0000A92600A6197C AS DateTime), NULL, N'测试超级管理员', NULL, NULL, N'性别', N'gender', 1, N'测试超级管理员', CAST(0x0000A92600B82630 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (50, N'{
 valueField: ''Enable'',
 textField: ''Enable'',
  containField:null 
}', CAST(0x0000A926010146E4 AS DateTime), 1, N'测试超级管理员', NULL, NULL, N'启用状态', N'status', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (52, N'{
 valueField: ''Choiceness'',
 textField: ''Choiceness'',
  containField:null 
}', CAST(0x0000A9270103C464 AS DateTime), 1, N'测试超级管理员', NULL, NULL, N'是否买入', N'cq', 1, N'超级管理员', CAST(0x0000AACC01211AF0 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (53, N'{
 valueField: ''SourceType'',
 textField: ''SourceType'',
  containField:null 
}', CAST(0x0000A93500E50BF0 AS DateTime), 1, N'测试超级管理员', NULL, NULL, N'图片来源', N'ps', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (59, N'{
 valueField: ''IsRegregisterPhone'',
 textField: ''IsRegregisterPhone'',
  containField:null 
}', CAST(0x0000A94B01061EBC AS DateTime), 1, N'测试超级管理员', NULL, NULL, N'是否手机用户', N'isphone', 1, N'超级管理员', CAST(0x0000AACB00BB54A4 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (60, N'{
 valueField: ''DailyRecommend'',
 textField: ''DailyRecommend'',
  containField:null 
}', CAST(0x0000A9520103C6BC AS DateTime), 1, N'超级管理员', NULL, NULL, N'是否今日推荐', N'dr', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (62, N'{
 valueField: ''IsTop'',
 textField: ''IsTop'',
  containField:null 
}', CAST(0x0000AAAF00A437D8 AS DateTime), 1, N'超级管理员', NULL, NULL, N'推荐价格', N'top', 1, N'超级管理员', CAST(0x0000AACC00FD8E28 AS DateTime), 1, NULL, 1, N'dddd')
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (64, NULL, CAST(0x0000AACC01403124 AS DateTime), 1, N'超级管理员', NULL, NULL, N'订单类型', N'ordertype', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (65, NULL, CAST(0x0000AACD00A6D2A4 AS DateTime), 1, N'超级管理员', NULL, NULL, N'商品名称', N'pn', 1, N'超级管理员', CAST(0x0000AACE014F9006 AS DateTime), 1, NULL, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sys_Dictionary] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_DictionaryList] ON 

GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (3, NULL, 1, N'admin', N'否', N'0', 3, NULL, N'超级管理员', CAST(0x0000AAB200B15EA4 AS DateTime), 1, 2, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (4, NULL, 1, N'xxx', N'是', N'1', 3, NULL, N'超级管理员', CAST(0x0000AAB200B15EA4 AS DateTime), 1, 1, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (22, CAST(0x0000A8FC012FCB7C AS DateTime), 1, N'测试超级管理员', N'其他', N'0', 30, NULL, N'超级管理员', CAST(0x0000AAB0011553B4 AS DateTime), 1, 10, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (23, CAST(0x0000A8FC012FCB7C AS DateTime), 1, N'测试超级管理员', N'成功', N'1', 30, NULL, N'超级管理员', CAST(0x0000AAB0011553B4 AS DateTime), 1, 100, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (24, CAST(0x0000A8FD009FD788 AS DateTime), 1, N'测试超级管理员', N'异常', N'2', 30, NULL, N'超级管理员', CAST(0x0000AAB0011553B4 AS DateTime), 1, 50, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (25, CAST(0x0000A8FD00F36240 AS DateTime), 1, N'测试超级管理员', N'系统', N'System', 31, NULL, N'超级管理员', CAST(0x0000AAB00113CD78 AS DateTime), 1, 100, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (26, CAST(0x0000A8FD00F3C4B0 AS DateTime), 1, N'测试超级管理员', N'登陆', N'Login', 31, NULL, N'超级管理员', CAST(0x0000AAB00113CD78 AS DateTime), 1, 90, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (27, CAST(0x0000A90000FF6C48 AS DateTime), 1, N'测试超级管理员', N'新建', N'Add', 31, NULL, N'超级管理员', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (28, CAST(0x0000A90000FF6C48 AS DateTime), 1, N'测试超级管理员', N'删除', N'Del', 31, 1, N'超级管理员', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (29, CAST(0x0000A90000FF9678 AS DateTime), 1, N'测试超级管理员', N'编辑', N'Edit', 31, 1, N'超级管理员', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (33, CAST(0x0000A91800A5F078 AS DateTime), 1, N'测试超级管理员', N'注册', N'1', 34, NULL, N'测试超级管理员', CAST(0x0000A91900E8F4B8 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (34, CAST(0x0000A91800A5F078 AS DateTime), 1, N'测试超级管理员', N'忘记密码', N'2', 34, NULL, N'测试超级管理员', CAST(0x0000A91900E8F4B8 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (35, CAST(0x0000A91800A5F078 AS DateTime), 1, N'测试超级管理员', N'验证码登录', N'3', 34, NULL, N'测试超级管理员', CAST(0x0000A91900E8F4B8 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (36, CAST(0x0000A91800A5F078 AS DateTime), 1, N'测试超级管理员', N'修改密码', N'4', 34, NULL, N'测试超级管理员', CAST(0x0000A91900E8F4B8 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (37, CAST(0x0000A91900B2F9F8 AS DateTime), 1, N'测试超级管理员', N'审核中', N'0', 35, NULL, N'测试超级管理员', CAST(0x0000A91900B61804 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (38, CAST(0x0000A91900B2F9F8 AS DateTime), 1, N'测试超级管理员', N'审核通过', N'1', 35, NULL, N'测试超级管理员', CAST(0x0000A91900B61804 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (39, CAST(0x0000A91900B2F9F8 AS DateTime), 1, N'测试超级管理员', N'审核未通过', N'2', 35, NULL, N'测试超级管理员', CAST(0x0000A91900B61804 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (40, CAST(0x0000A91900E86B9C AS DateTime), 1, N'测试超级管理员', N'西门塔尔', N'西门塔尔', 36, NULL, N'测试超级管理员', CAST(0x0000A951010B80DC AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (41, CAST(0x0000A91900E86B9C AS DateTime), 1, N'测试超级管理员', N'利木赞牛', N'利木赞牛', 36, NULL, N'测试超级管理员', CAST(0x0000A951010B80DC AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (42, CAST(0x0000A91900E86B9C AS DateTime), 1, N'测试超级管理员', N'夏洛莱牛', N'夏洛莱牛', 36, NULL, N'测试超级管理员', CAST(0x0000A951010B80DC AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (43, CAST(0x0000A91900E86B9C AS DateTime), 1, N'测试超级管理员', N'鲁西黄牛', N'鲁西黄牛', 36, NULL, N'测试超级管理员', CAST(0x0000A951010B80DC AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (44, CAST(0x0000A91900E86B9C AS DateTime), 1, N'测试超级管理员', N'神户肉牛', N'神户肉牛', 36, NULL, N'测试超级管理员', CAST(0x0000A951010B80DC AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (45, CAST(0x0000A91900E86B9C AS DateTime), 1, N'测试超级管理员', N'南阳牛', N'南阳牛', 36, NULL, N'测试超级管理员', CAST(0x0000A951010B8208 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (46, CAST(0x0000A91900E86B9C AS DateTime), 1, N'测试超级管理员', N'秦川牛', N'秦川牛', 36, NULL, N'测试超级管理员', CAST(0x0000A951010B8208 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (47, CAST(0x0000A91900E8D898 AS DateTime), 1, N'测试超级管理员', N'0-2月龄', N'0-2月龄', 37, NULL, N'测试超级管理员', CAST(0x0000A9530106FB0C AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (48, CAST(0x0000A91900E8D898 AS DateTime), 1, N'测试超级管理员', N'2-6月龄', N'2-6月龄', 37, NULL, N'测试超级管理员', CAST(0x0000A9530106FB0C AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (49, CAST(0x0000A91900E8D898 AS DateTime), 1, N'测试超级管理员', N'7-12月龄', N'7-12月龄', 37, NULL, N'测试超级管理员', CAST(0x0000A9530106FB0C AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (50, CAST(0x0000A91900E8D898 AS DateTime), 1, N'测试超级管理员', N'12-16月龄', N'12-16月龄', 37, NULL, N'测试超级管理员', CAST(0x0000A9530106FB0C AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (51, CAST(0x0000A91900E8D898 AS DateTime), 1, N'测试超级管理员', N'16月龄以上', N'16月龄以上', 37, NULL, N'测试超级管理员', CAST(0x0000A9530106FB0C AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (52, CAST(0x0000A91900F54E70 AS DateTime), 1, N'测试超级管理员', N'未回复', N'0', 39, NULL, N'测试超级管理员', CAST(0x0000A91900F62AC0 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (53, CAST(0x0000A91900F54E70 AS DateTime), 1, N'测试超级管理员', N'已回复', N'1', 39, NULL, N'测试超级管理员', CAST(0x0000A91900F62AC0 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (56, CAST(0x0000A91901033440 AS DateTime), 1, N'测试超级管理员', N'公牛', N'公牛', 41, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (57, CAST(0x0000A91901033440 AS DateTime), 1, N'测试超级管理员', N'母牛', N'母牛', 41, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (58, CAST(0x0000A91901043AC0 AS DateTime), 1, N'测试超级管理员', N'39.5°C以上(升高)', N'39.5°C以上(升高)', 42, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (59, CAST(0x0000A91901043AC0 AS DateTime), 1, N'测试超级管理员', N'38°C~39.5°C以上(正常)', N'38°C~39.5°C以上(正常)', 42, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (60, CAST(0x0000A91901043AC0 AS DateTime), 1, N'测试超级管理员', N'38°C以下(降低)', N'38°C以下(降低)', 42, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (64, CAST(0x0000A919010C0FD4 AS DateTime), 1, N'测试超级管理员', N'行业新闻', N'1', 44, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (65, CAST(0x0000A919010C0FD4 AS DateTime), 1, N'测试超级管理员', N'行情资讯', N'2', 44, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (66, CAST(0x0000A91901124AC0 AS DateTime), 1, N'测试超级管理员', N'否', N'0', 45, NULL, N'超级管理员', CAST(0x0000AABD00DBEFE8 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (67, CAST(0x0000A91901124AC0 AS DateTime), 1, N'测试超级管理员', N'是', N'1', 45, NULL, N'超级管理员', CAST(0x0000AABD00DBEFE8 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (68, CAST(0x0000A91A00DBC6E4 AS DateTime), 1, N'测试超级管理员', N'App登陆', N'ApiLogin', 31, NULL, N'超级管理员', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (69, CAST(0x0000A91A0106DC94 AS DateTime), 1, N'测试超级管理员', N'App发送验证码', N'ApiSendPIN', 31, NULL, N'超级管理员', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (70, CAST(0x0000A91A011B4148 AS DateTime), 1, N'测试超级管理员', N'App请求异常', N'ApiException', 31, NULL, N'超级管理员', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (71, CAST(0x0000A91A011B4274 AS DateTime), 1, N'测试超级管理员', N'PC请求异常', N'Exception', 31, NULL, N'超级管理员', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (77, CAST(0x0000A92100A94A48 AS DateTime), 1, N'测试超级管理员', N'现金', N'1', 48, NULL, N'超级管理员', CAST(0x0000AACC012B4B88 AS DateTime), 1, 120, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (78, CAST(0x0000A92100A94B74 AS DateTime), 1, N'测试超级管理员', N'赊账', N'2', 48, NULL, N'超级管理员', CAST(0x0000AACC012B4B88 AS DateTime), 1, 70, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (79, CAST(0x0000A92100A94B74 AS DateTime), 1, N'测试超级管理员', N'抵扣', N'3', 48, NULL, N'超级管理员', CAST(0x0000AACC012B4B88 AS DateTime), 1, 100, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (86, CAST(0x0000A92200BEC5E4 AS DateTime), 1, N'测试超级管理员', N'App首页', N'AppHome', 31, NULL, N'超级管理员', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (89, CAST(0x0000A9230121EDE0 AS DateTime), 1, N'测试超级管理员', N'加入会议', N'JoinMeeting', 31, NULL, N'超级管理员', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (90, CAST(0x0000A92600A6197C AS DateTime), 1, N'测试超级管理员', N'男', N'0', 49, NULL, N'测试超级管理员', CAST(0x0000A92600B82630 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (91, CAST(0x0000A92600A6197C AS DateTime), 1, N'测试超级管理员', N'女', N'1', 49, NULL, N'测试超级管理员', CAST(0x0000A92600B82630 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (92, CAST(0x0000A92600B0F1A8 AS DateTime), 1, N'测试超级管理员', N'修改密码', N'ApiModifyPwd', 31, 0, N'超级管理员', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (93, CAST(0x0000A92600E45D54 AS DateTime), 1, N'测试超级管理员', N'加入我们', N'JoinUs', 31, 0, N'超级管理员', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (96, CAST(0x0000A926010146E4 AS DateTime), 1, N'测试超级管理员', N'未启用', N'0', 50, 1, N'超级管理员', CAST(0x0000AAAB012D83E4 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (97, CAST(0x0000A926010146E4 AS DateTime), 1, N'测试超级管理员', N'已启用', N'1', 50, 1, N'超级管理员', CAST(0x0000AAAB012D83E4 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (98, CAST(0x0000A926010146E4 AS DateTime), 1, N'测试超级管理员', N'已删除', N'2', 50, 1, N'超级管理员', CAST(0x0000AAAB012D83E4 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (101, CAST(0x0000A9270103C464 AS DateTime), 1, N'测试超级管理员', N'否', N'0', 52, 0, N'超级管理员', CAST(0x0000AACC01211AF0 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (102, CAST(0x0000A9270103C464 AS DateTime), 1, N'测试超级管理员', N'是', N'1', 52, 0, N'超级管理员', CAST(0x0000AACC01211AF0 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (104, CAST(0x0000A9280136ABA4 AS DateTime), 1, N'测试超级管理员', N'iPhone测试', N'IPhoneTest', 31, 0, N'超级管理员', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (109, CAST(0x0000A93500E50D1C AS DateTime), 1, N'测试超级管理员', N'PC后台上传', N'0', 53, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (110, CAST(0x0000A93500E50D1C AS DateTime), 1, N'测试超级管理员', N'专家提问', N'1', 53, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (111, CAST(0x0000A93500E50D1C AS DateTime), 1, N'测试超级管理员', N'公开提问', N'2', 53, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (112, CAST(0x0000A93500E50D1C AS DateTime), 1, N'测试超级管理员', N'首面轮播', N'3', 53, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (128, CAST(0x0000A94B01061EBC AS DateTime), 1, N'测试超级管理员', N'是', N'1', 59, 0, N'超级管理员', CAST(0x0000AACB00BB54A4 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (129, CAST(0x0000A94B01061EBC AS DateTime), 1, N'测试超级管理员', N'否', N'0', 59, 1, N'超级管理员', CAST(0x0000AACB00BB54A4 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (130, CAST(0x0000A951010B7524 AS DateTime), 1, N'测试超级管理员', N'安格斯', N'安格斯', 36, 1, N'测试超级管理员', CAST(0x0000A951010B8208 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (137, CAST(0x0000A9520103C6BC AS DateTime), 1, N'超级管理员', N'是', N'1', 60, 1, N'超级管理员', CAST(0x0000AAB800EAC270 AS DateTime), 1, 2, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (138, CAST(0x0000A9520103C6BC AS DateTime), 1, N'超级管理员', N'否', N'0', 60, 1, N'超级管理员', CAST(0x0000AAB800EAC270 AS DateTime), 1, 1, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (142, CAST(0x0000AAAF00A437D8 AS DateTime), 1, N'超级管理员', N'是', N'1', 62, 1, N'超级管理员', CAST(0x0000AACC00FD8E28 AS DateTime), 1, NULL, N'1')
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (143, CAST(0x0000AAAF00A437D8 AS DateTime), 1, N'超级管理员', N'否', N'0', 62, 1, N'超级管理员', CAST(0x0000AACC00FD8E28 AS DateTime), 1, NULL, N'测试')
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (144, CAST(0x0000AAB00112E318 AS DateTime), 1, N'超级管理员', N'刷新Token', N'ReplaceToeken', 31, NULL, N'超级管理员', CAST(0x0000AAB00113CD78 AS DateTime), 1, 110, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (145, CAST(0x0000AAB0011553B4 AS DateTime), 1, N'超级管理员', N'Info', N'3', 30, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (147, CAST(0x0000AAB700F59844 AS DateTime), 1, N'超级管理员', N'xx', N'2', 62, 1, N'超级管理员', CAST(0x0000AACC00FD8E28 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (149, CAST(0x0000AACC01403124 AS DateTime), 1, N'超级管理员', N'发货', N'1', 64, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (150, CAST(0x0000AACC01403124 AS DateTime), 1, N'超级管理员', N'退货', N'2', 64, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (151, CAST(0x0000AACC01403124 AS DateTime), 1, N'超级管理员', N'返单', N'3', 64, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (152, CAST(0x0000AACD00A6D2A4 AS DateTime), 1, N'超级管理员', N'家居', N'家居', 65, 1, N'超级管理员', CAST(0x0000AACE014F9008 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (153, CAST(0x0000AACD00A6D2A4 AS DateTime), 1, N'超级管理员', N'男装', N'男装', 65, 1, N'超级管理员', CAST(0x0000AACE014F9008 AS DateTime), 1, 4, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (154, CAST(0x0000AACD00A6D2A4 AS DateTime), 1, N'超级管理员', N'女装', N'女装', 65, NULL, N'超级管理员', CAST(0x0000AACE014F9007 AS DateTime), 1, 6, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (155, CAST(0x0000AACD00A6D2A4 AS DateTime), 1, N'超级管理员', N'食品', N'食品', 65, NULL, N'超级管理员', CAST(0x0000AACE014F9007 AS DateTime), 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sys_DictionaryList] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Menu] ON 

GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (1, N'系统设置', N'[{"text":"查询","value":"Search"}]', N'', NULL, 0, 140, N'.', 45, NULL, CAST(0x0000A7D0012924C0 AS DateTime), N'2017-08-15 17:58:6', CAST(0x0000AAD0017FC52E AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (2, N'用户基础信息', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 160, N'.', 0, NULL, CAST(0x0000A7DD00CB94CC AS DateTime), N'2017-08-28 11:12:45', CAST(0x0000AACC00FE0358 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (3, N'角色管理', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', N'', NULL, 1, 90, N'Sys_Role', 2, N'/Sys_Role/Manager', CAST(0x0000A7EC010D2C98 AS DateTime), N'2017-08-28 14:19:13', CAST(0x0000AAAA00AC65FC AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (4, N'配置管理', N'Search,Save,Add,Update,Delete,Export,Imort', N'md-radio-button-on icon-plus-sign-alt', NULL, 1, 90, N'.', 1, NULL, CAST(0x0000A7DD00ED00A8 AS DateTime), N'2017-08-28 14:21:48', CAST(0x0000AA8000B1A878 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (5, N'日志管理', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 130, N'xxx', 0, N'/', CAST(0x0000A7F60128868C AS DateTime), N'2017-09-22 17:59:37', CAST(0x0000AACC00FE4174 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (6, N'系统日志', N'[{"text":"查询","value":"Search"},{"text":"删除","value":"Delete"},{"text":"导出","value":"Export"}]', N'', NULL, 1, 0, N'Sys_Log', 5, N'/Sys_Log/Manager', CAST(0x0000A7F60128BECC AS DateTime), N'2017-09-22 18:0:25', CAST(0x0000AAA9010D5344 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (7, N'角色权限分配', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', N'', NULL, 0, 1, N'Sys_Role', 2, N'/Sys_Role/TreeManager', NULL, NULL, CAST(0x0000AACD00FB8F38 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (8, N'字典数据', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', N'', NULL, 1, 1000, N'Sys_Dictionary', 14, N'/Sys_Dictionary', NULL, NULL, CAST(0x0000AAAB011F86A4 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (9, N'用户管理', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', N'', NULL, 1, 1111, N'Sys_User', 2, N'/Sys_User/Manager', NULL, NULL, CAST(0x0000AAA900EE99A4 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (10, N'短信验证码发送记录', N'Search,Save,Add,Update,Delete,Export,Imort', NULL, NULL, 1, 0, N'Sys_PinRecord', 11, N'/Sys_PinRecord/Manager', NULL, NULL, CAST(0x0000AA4500EC2A34 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (11, N'历史记录', N'[{"text":"查询","value":"Search"}]', N'', NULL, 0, 60, N'/', 45, N'/', NULL, NULL, CAST(0x0000AAD0017FCD12 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (12, N'生成配置', N'Search,Save,Add,Update,Delete,Export,Imort', N'', NULL, 1, 0, N'Index', 4, N'/Builder/Index', CAST(0x0000A7DD00ECCD18 AS DateTime), N'null', CAST(0x0000A39400983E38 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (13, N'菜单设置', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', N'', NULL, 1, 0, N'Sys_Menu', 1, N'/sysmenu', CAST(0x0000A7DD00ECCAC0 AS DateTime), N'null', CAST(0x0000AAA30116F4E4 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (14, N'系统字典', N'Search,Save,Add,Update,Delete,Export,Imort', N'md-radio-button-on icon-plus-sign-alt', NULL, 1, 11, N'.', 1, N'/', NULL, NULL, CAST(0x0000AA8000B1AD28 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (16, N'首页轮播图片', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', N'', NULL, 0, 200, N'App_HomeHeadImages', 15, N'/App_HomeHeadImages/Manager', NULL, NULL, CAST(0x0000AAA7010F03B0 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (17, N'用户注册信息', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', N'', NULL, 0, 1, N'Sys_UserRegisterRecord', 2, N'/Sys_UserRegisterRecord/Manager', NULL, NULL, CAST(0x0000AACC00FFD110 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (18, N'成交均价', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', N'ivu-icon ivu-icon-md-alarm', NULL, 1, 120, N'App_TransactionAvgPrice', 15, N'/App_TransactionAvgPrice', NULL, NULL, CAST(0x0000AAA800D966B0 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (23, N'问答信息', N'[{"text":"查询","value":"Search"}]', N'', NULL, 0, 110, N'/', 45, N'/', NULL, NULL, CAST(0x0000AACC00FEA9C0 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (24, N'后台加载table数据', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 75, N'/', 56, N'/table', NULL, NULL, CAST(0x0000AACE00F7083C AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (25, N'其他组件', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 110, N'/', 29, N'/form6', NULL, NULL, CAST(0x0000AACE00D21158 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (26, N'静态页面', N'[{"text":"查询","value":"Search"}]', N'ivu-icon ivu-icon-ios-bookmark', NULL, 0, 105, N'/', 45, N'/', NULL, NULL, CAST(0x0000AACC00FEA3E4 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (27, N'静态页面1', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 105, N'App_TechnicalClassify', 26, N'/App_TechnicalClassify/Manager', NULL, NULL, CAST(0x0000AACC00FE9F34 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (28, N'资讯', N'[{"text":"查询","value":"Search"}]', N'', NULL, 0, 95, N'/', 45, NULL, NULL, NULL, CAST(0x0000AACC00FE775C AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (29, N'其他组件', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 173, N'App_News', 0, N'/App_News/Manager', NULL, NULL, CAST(0x0000AACE00D27044 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (31, N'牛评', N'', N'', NULL, 0, 95, N'App_Comment', 28, N'/App_Comment/Manager', NULL, NULL, CAST(0x0000AAA80104E830 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (32, N'会议活动', N'', N'', NULL, 0, 95, N'App_Meeting', 28, N'/App_Meeting/Manager', NULL, NULL, CAST(0x0000AAA80104EBB4 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (33, N'我要加入', N'', N'', NULL, 0, 95, N'App_CustomerJoin', 28, N'/App_CustomerJoin/Manager', NULL, NULL, CAST(0x0000AAA80104EF38 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (34, N'我的', N'[{"text":"查询","value":"Search"}]', N'', NULL, 0, 80, N'/', 45, N'/', NULL, NULL, CAST(0x0000AACC00FE58E4 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (35, N'可编辑的table', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 73, N'editTable', 56, N'/editTable', NULL, NULL, CAST(0x0000AACE0105057C AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (36, N'系统消息推送', N'Search,Save,Add,Update,Delete,Export,Imort', NULL, NULL, 1, 80, N'Sys_Message', 34, N'/Sys_Message/Manager', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (37, N'意见反馈', N'Search,Save,Add,Update,Delete,Export,Imort', NULL, NULL, 1, 80, N'App_Feedback', 34, N'/App_Feedback/Manager', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (38, N'省市列表', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', N'', NULL, 1, 100, N'vProvinceCity', 15, N'/vProvinceCity', NULL, NULL, CAST(0x0000AAAF009C92D0 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (39, N'用户Token生成记录', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', N'', NULL, 0, 1, N'x', 2, N'/Sys_UserTokenLog/Manager', NULL, NULL, CAST(0x0000AACC00FFCB34 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (40, N'提问记录', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', N'ivu-icon ivu-icon-ios-add-circle', NULL, 1, 111, N'App_Question', 23, N'/App_Question/Manager', NULL, NULL, CAST(0x0000AACC00F1F11C AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (41, N'图片上传记录', N'Search,Save,Add,Update,Delete,Export,Imort', NULL, NULL, 1, 1, N'Sys_ImageLibrary', 11, N'/Sys_ImageLibrary/Manager', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (42, N'消息推送记录', N'Search,Save,Add,Update,Delete,Export,Imort', NULL, NULL, 0, 0, N'vSys_MessageSendLog', 34, N'/vSys_MessageSendLog/Manager', NULL, NULL, CAST(0x0000A9FB0133092C AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (43, N'静态页访问记录', N'Search,Save,Add,Update,Delete,Export,Imort', NULL, NULL, 1, 0, N'vApp_StaticBrowserLog', 11, N'/vApp_StaticBrowserLog/Manager', NULL, NULL, CAST(0x0000A93B0137C610 AS DateTime), N'测试超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (44, N'提问回复记录', N'', NULL, NULL, 0, 1, N'App_QuestionReply', 23, NULL, NULL, NULL, CAST(0x0000A94B012BF574 AS DateTime), N'测试超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (45, N'其他不用节点', N'', N'', NULL, 0, 0, N'/', 0, NULL, NULL, NULL, CAST(0x0000AACE00A34418 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (46, N'产业联盟', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"},{"text":"审核","value":"Audit"}]', N'', NULL, 1, 1, N'App_Alliance', 15, N'/App_Alliance/Manager', NULL, NULL, CAST(0x0000AAA800D9B8B8 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (47, N'test2019', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', N'', NULL, 1, 0, N'test2019', 15, N'/test2019', CAST(0x0000AA3F00FBB134 AS DateTime), N'超级管理员', CAST(0x0000AAA800D9C218 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (48, N'Table+单表数据', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 200, N'Table+表单数据', 0, N'/', CAST(0x0000AA8800DD8560 AS DateTime), N'超级管理员', CAST(0x0000AACC01244A90 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (49, N'基础表单+编辑只读', N'[{"text":"查询","value":"Search"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"}]', N'', NULL, 1, 100, N'App_Appointment', 48, N'/App_Appointment', CAST(0x0000AA8800DE006C AS DateTime), N'超级管理员', CAST(0x0000AACE014F0195 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (50, N'自动绑定下拉框', N'', N'', NULL, 1, 90, N'App_TransactionAvgPrice', 48, N'/App_TransactionAvgPrice', CAST(0x0000AA8800E4EFD0 AS DateTime), N'超级管理员', CAST(0x0000AACC011177D0 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (51, N'新增编辑删除表单', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"},{"text":"审核","value":"Audit"}]', N'', NULL, 1, 80, N'App_ReportPrice', 48, N'/App_ReportPrice', CAST(0x0000AA8800E56F8C AS DateTime), N'超级管理员', CAST(0x0000AACC01334748 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (52, N'导入导出表单', N'[{"text":"查询","value":"Search"},{"text":"删除","value":"Delete"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"}]', N'', NULL, 1, 60, N'App_Transaction', 48, N'/App_Transaction', CAST(0x0000AA8800E5AED4 AS DateTime), N'超级管理员', CAST(0x0000AACC012A7D48 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (53, N'主从基础表单', NULL, NULL, NULL, 1, 1, N'/', 55, N'/coding', CAST(0x0000AA8800E5E96C AS DateTime), N'超级管理员', CAST(0x0000AA8800E67990 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (54, N'可新增修改主从表单', NULL, NULL, NULL, 1, 1, N'/', 55, N'/coding', CAST(0x0000AA8800E62530 AS DateTime), N'超级管理员', CAST(0x0000AA8800E67E40 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (55, N'Table+主从表单', N'[{"text":"查询","value":"Search"}]', N'', NULL, 0, 180, N'/', 0, NULL, CAST(0x0000AA8800E651B8 AS DateTime), N'超级管理员', CAST(0x0000AACE00A24E00 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (56, N'表单布局', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 175, N'/', 0, NULL, CAST(0x0000AA8800E6CCC4 AS DateTime), N'超级管理员', CAST(0x0000AACC00FED51C AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (57, N'单列表单', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 100, N'.', 56, N'/form1', CAST(0x0000AA8800E70AE0 AS DateTime), N'超级管理员', CAST(0x0000AACE00E67030 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (58, N'两列表单', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 90, N'两列表单', 56, N'/form2', CAST(0x0000AA8800E72F34 AS DateTime), N'超级管理员', CAST(0x0000AACE00E673B4 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (59, N'多列表单', N'', N'', NULL, 1, 80, N'多列表单', 56, N'/form3', CAST(0x0000AA8800E7570C AS DateTime), N'超级管理员', CAST(0x0000AACE00E67738 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (60, N'Table+表单', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 70, N'Table+表单', 56, N'/form4', CAST(0x0000AA8800E799D8 AS DateTime), N'超级管理员', CAST(0x0000AACE00E67ABC AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (61, N'系统', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 100, N'系统', 0, N'/', CAST(0x0000AA8800E7D470 AS DateTime), N'超级管理员', CAST(0x0000AAD001804CAE AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (62, N'菜单设置', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 1, N'菜单设置', 61, N'/sysmenu', CAST(0x0000AA8800E7F8C4 AS DateTime), N'超级管理员', CAST(0x0000AAD0017F8437 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (63, N'下拉框绑定设置', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', N'', NULL, 1, 1, N'Sys_Dictionary', 61, N'/Sys_Dictionary', CAST(0x0000AA8800E85A08 AS DateTime), N'超级管理员', CAST(0x0000AAAB01237B24 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (64, N'代码在线生成器', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 150, N'代码在线生成器', 0, N'/coding', CAST(0x0000AA8800E8E324 AS DateTime), N'超级管理员', CAST(0x0000AAD0017F8E93 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (65, N'Vue+后台代码生成', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"}]', N'', NULL, 1, 1, N'/', 64, N'/coder', CAST(0x0000AA8800E92CF8 AS DateTime), N'超级管理员', CAST(0x0000AAA9010BCD08 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (66, N'静态页面发布', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 152, N'静态页面发布', 0, N'/coding', CAST(0x0000AA8800EA2EC8 AS DateTime), N'超级管理员', CAST(0x0000AACE011FB32C AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (67, N'生成静态页面', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 0, N'生成静态页面', 66, N'/coding', CAST(0x0000AA8800EAA1A0 AS DateTime), N'超级管理员', CAST(0x0000AAD0017FA049 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (68, N'审核、启用图片支持', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"},{"text":"审核","value":"Audit"}]', N'', NULL, 1, 70, N'App_Expert', 48, N'/App_Expert', CAST(0x0000AA8800ED5F94 AS DateTime), N'超级管理员', CAST(0x0000AACC012FE2EC AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (69, N'前端自定义扩展', NULL, NULL, NULL, 1, 50, N'前端自定义扩展', 48, N'/coding', CAST(0x0000AA8800EDF7EC AS DateTime), N'超级管理员', CAST(0x0000AA8800EE5B88 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (70, N'后台自定义扩展', NULL, NULL, NULL, 1, 40, N'后台自定义扩展', 48, N'/coding', CAST(0x0000AA8800EE9BFC AS DateTime), N'超级管理员', NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (71, N'vue权限管理', N'[{"text":"查询","value":"Search"},{"text":"编辑","value":"Update"}]', N'ivu-icon ivu-icon-ios-boat', NULL, 1, 100, N'Sys_Role', 2, N'/permission', CAST(0x0000AAA500ABD380 AS DateTime), N'超级管理员', NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (72, N'移动H5开发', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 165, N'/', 0, N'', CAST(0x0000AAA900DAA7C8 AS DateTime), N'超级管理员', CAST(0x0000AACC00FEF970 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (73, N'移动H5开发打包介绍', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, NULL, N'/', 72, N'/app/guide', CAST(0x0000AAA900DAE134 AS DateTime), N'超级管理员', NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (74, N'测试完整示例', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 177, N'/', 0, N'/', CAST(0x0000AAB101243A28 AS DateTime), N'超级管理员', CAST(0x0000AACE00A268F4 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (75, N'前后台主从扩展用例', N'[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', N'', NULL, 1, NULL, N'SellOrder', 74, N'/SellOrder', CAST(0x0000AAB1012C1FA4 AS DateTime), N'超级管理员', CAST(0x0000AACC013DB854 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (76, N'其他组件', N'[{"text":"查询","value":"Search"},{"text":"导出","value":"Export"}]', N'', NULL, 1, 95, N'编辑只读', 26, N'/coding', CAST(0x0000AAB500C529D4 AS DateTime), N'超级管理员', CAST(0x0000AACE00D18BC0 AS DateTime), N'超级管理员')
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier]) VALUES (77, N'表单只读', N'[{"text":"查询","value":"Search"}]', N'', NULL, 1, 60, N'表单只读', 56, N'/form7', CAST(0x0000AAB500C574D4 AS DateTime), N'超级管理员', CAST(0x0000AACE00E67F6C AS DateTime), N'超级管理员')
GO
SET IDENTITY_INSERT [dbo].[Sys_Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Province] ON 

GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (1, N'110000', N'北京市', N'华北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (2, N'120000', N'天津市', N'华北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (3, N'130000', N'河北省', N'华北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (4, N'140000', N'山西省', N'华北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (5, N'150000', N'内蒙古自治区', N'华北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (6, N'210000', N'辽宁省', N'东北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (7, N'220000', N'吉林省', N'东北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (8, N'230000', N'黑龙江省', N'东北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (9, N'310000', N'上海市', N'华东')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (10, N'320000', N'江苏省', N'华东')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (11, N'330000', N'浙江省', N'华东')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (12, N'340000', N'安徽省', N'华东')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (13, N'350000', N'福建省', N'华东')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (14, N'360000', N'江西省', N'华东')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (15, N'370000', N'山东省', N'华东')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (16, N'410000', N'河南省', N'华中')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (17, N'420000', N'湖北省', N'华中')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (18, N'430000', N'湖南省', N'华中')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (19, N'440000', N'广东省', N'华南')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (20, N'450000', N'广西壮族自治区', N'华南')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (21, N'460000', N'海南省', N'华南')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (22, N'500000', N'重庆市', N'西南')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (23, N'510000', N'四川省', N'西南')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (24, N'520000', N'贵州省', N'西南')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (25, N'530000', N'云南省', N'西南')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (26, N'540000', N'西藏自治区', N'西南')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (27, N'610000', N'陕西省', N'西北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (28, N'620000', N'甘肃省', N'西北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (29, N'630000', N'青海省', N'西北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (30, N'640000', N'宁夏回族自治区', N'西北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (31, N'650000', N'新疆维吾尔自治区', N'西北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (32, N'710000', N'台湾省', N'港澳台')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (33, N'810000', N'香港特别行政区', N'港澳台')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (34, N'820000', N'澳门特别行政区', N'港澳台')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (35, N'thd', N'桃花岛', N'东北')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (43, N'测试1', N'测试1', N'港澳台')
GO
SET IDENTITY_INSERT [dbo].[Sys_Province] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Role] ON 

GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (1, CAST(0x0000A94500C1EFA8 AS DateTime), N'超级管理员', NULL, N'无', 0, 1, N'测试超级管理员', CAST(0x0000A953011A8244 AS DateTime), 1000, 0, N'超级管理员')
GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (2, CAST(0x0000A94500C22590 AS DateTime), N'超级管理员', NULL, N'1', 0, 1, N'超级管理员', CAST(0x0000AACE01564AF4 AS DateTime), NULL, 1, N'测试管理员')
GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (3, CAST(0x0000A94500C23AA8 AS DateTime), N'超级管理员', NULL, N'无', 0, 1, N'超级管理员', CAST(0x0000AAAA00B217CC AS DateTime), NULL, 3, N'小编')
GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (4, CAST(0x0000A94500C25EFC AS DateTime), N'超级管理员', NULL, N'无  ', 0, 1, N'超级管理员', CAST(0x0000AACE0156EDD8 AS DateTime), NULL, 3, N'信息员')
GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (5, CAST(0x0000AA5D00B50F2C AS DateTime), N'超级管理员', NULL, N'还没想好', NULL, 1, N'超级管理员', CAST(0x0000AACE01564194 AS DateTime), NULL, 1, N'主管')
GO
SET IDENTITY_INSERT [dbo].[Sys_Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_RoleAuth] ON 

GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (1, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000AAA800BA5B08 AS DateTime), N'超级管理员', 18, N'超级管理员', CAST(0x0000AAA800ED46F8 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (2, N'', CAST(0x0000AAA800BA5B08 AS DateTime), N'超级管理员', 19, N'超级管理员', CAST(0x0000AAA800ED46F8 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (3, N'', CAST(0x0000AAA800BA5B08 AS DateTime), N'超级管理员', 22, N'超级管理员', CAST(0x0000AAA800ED46F8 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (4, N'', CAST(0x0000AAA800BA5B08 AS DateTime), N'超级管理员', 15, N'超级管理员', CAST(0x0000AAA800ED46F8 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (5, N'Search,Add,Delete,Update,Export,Audit', CAST(0x0000AAA800BA5B08 AS DateTime), N'超级管理员', 46, N'超级管理员', CAST(0x0000AAA800ED46F8 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (6, N'Search,Add,Delete,Update,Export', CAST(0x0000AAA800BA5B08 AS DateTime), N'超级管理员', 47, N'超级管理员', CAST(0x0000AAA800ED46F8 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (7, N'Search,Add,Delete,Update,Export', CAST(0x0000AAA800D9D280 AS DateTime), N'超级管理员', 38, N'超级管理员', CAST(0x0000AAA800ED46F8 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (8, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000AAA800D9E9F0 AS DateTime), N'超级管理员', 40, N'超级管理员', CAST(0x0000AAA900EDED60 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (9, N'Search', CAST(0x0000AAA800DAB830 AS DateTime), N'超级管理员', 29, N'超级管理员', CAST(0x0000AACE011F7F9C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (10, N'Search,Update', CAST(0x0000AAA800E02284 AS DateTime), N'超级管理员', 71, N'超级管理员', CAST(0x0000AAA800E02284 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (11, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000AAA800E02284 AS DateTime), N'超级管理员', 13, N'超级管理员', CAST(0x0000AAA800E02284 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (12, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000AAA800F08124 AS DateTime), N'超级管理员', 18, N'超级管理员', CAST(0x0000AAA800F08124 AS DateTime), 5, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (13, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000AAA800F08124 AS DateTime), N'超级管理员', 19, N'超级管理员', CAST(0x0000AAA800F08124 AS DateTime), 5, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (14, N'Search,Add,Delete,Update,Import,Export,Audit', CAST(0x0000AAA800F08124 AS DateTime), N'超级管理员', 22, N'超级管理员', CAST(0x0000AAA800F08124 AS DateTime), 5, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (15, N'Search', CAST(0x0000AAA800F08124 AS DateTime), N'超级管理员', 15, N'超级管理员', CAST(0x0000AAA800F08124 AS DateTime), 5, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (16, N'Search,Add,Delete,Update,Export', CAST(0x0000AAA800F08124 AS DateTime), N'超级管理员', 38, N'超级管理员', CAST(0x0000AAA800F08124 AS DateTime), 5, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (17, N'Search,Add,Delete,Update,Export,Audit', CAST(0x0000AAA800F08124 AS DateTime), N'超级管理员', 46, N'超级管理员', CAST(0x0000AAA800F08124 AS DateTime), 5, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (18, N'Search,Add,Delete,Update,Export', CAST(0x0000AAA800F08124 AS DateTime), N'超级管理员', 47, N'超级管理员', CAST(0x0000AAA800F08124 AS DateTime), 5, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (19, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000AAA900EDED60 AS DateTime), N'超级管理员', 9, N'超级管理员', CAST(0x0000AAA900EDED60 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (20, N'Search', CAST(0x0000AAA900EDED60 AS DateTime), N'超级管理员', 27, N'超级管理员', CAST(0x0000AAA900EDED60 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (21, N'', CAST(0x0000AAA900EDED60 AS DateTime), N'超级管理员', 26, N'超级管理员', CAST(0x0000AAA900EDED60 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (22, N'', CAST(0x0000AAA900EDED60 AS DateTime), N'超级管理员', 30, N'超级管理员', CAST(0x0000AAA900EDED60 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (23, N'Search', CAST(0x0000AAA900EDED60 AS DateTime), N'超级管理员', 73, N'超级管理员', CAST(0x0000AAA900EDED60 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (24, N'Search', CAST(0x0000AAA900EDED60 AS DateTime), N'超级管理员', 72, N'超级管理员', CAST(0x0000AAA900EDED60 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (25, N'Search', CAST(0x0000AAA900EEC62C AS DateTime), N'超级管理员', 2, N'超级管理员', CAST(0x0000AAA900EEC62C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (26, N'Search,Add,Delete,Update,Export', CAST(0x0000AAAB011FEEF0 AS DateTime), N'超级管理员', 63, N'超级管理员', CAST(0x0000AACE011F7F9C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (27, N'Search', CAST(0x0000AAAB011FEEF0 AS DateTime), N'超级管理员', 61, N'超级管理员', CAST(0x0000AAAB011FEEF0 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (28, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000AAB500EB5AC8 AS DateTime), N'测试帐号666', 9, N'测试帐号666', CAST(0x0000AAB500EB5AC8 AS DateTime), 4, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (29, N'Search,Update', CAST(0x0000AAB500EB5AC8 AS DateTime), N'测试帐号666', 71, N'测试帐号666', CAST(0x0000AAB500EB5AC8 AS DateTime), 4, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (30, N'Search', CAST(0x0000AAB500EB5AC8 AS DateTime), N'测试帐号666', 2, N'测试帐号666', CAST(0x0000AAB500EB5AC8 AS DateTime), 4, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (31, N'Search', CAST(0x0000AACE011F7F9C AS DateTime), N'超级管理员', 5, N'超级管理员', CAST(0x0000AACE011F7F9C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (32, N'Search', CAST(0x0000AACE011F7F9C AS DateTime), N'超级管理员', 48, N'超级管理员', CAST(0x0000AACE0155C131 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (33, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000AACE011F7F9C AS DateTime), N'超级管理员', 75, N'超级管理员', CAST(0x0000AACE011F7F9C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (34, N'Search,Delete,Export', CAST(0x0000AACE011F7F9C AS DateTime), N'超级管理员', 6, N'超级管理员', CAST(0x0000AACE011F7F9C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (35, N'Search,Add,Delete,Update', CAST(0x0000AACE011F7F9C AS DateTime), N'超级管理员', 65, N'超级管理员', CAST(0x0000AACE011F7F9C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (36, N'Search,Delete,Import,Export', CAST(0x0000AACE011F7F9C AS DateTime), N'超级管理员', 52, N'超级管理员', CAST(0x0000AACE011F7F9C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (37, N'Search', CAST(0x0000AACE011F7F9C AS DateTime), N'超级管理员', 77, N'超级管理员', CAST(0x0000AACE011F7F9C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (38, N'Search,Add,Update,Export,Audit', CAST(0x0000AACE011F7F9C AS DateTime), N'超级管理员', 68, N'超级管理员', CAST(0x0000AACE011F7F9C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (39, N'Search', CAST(0x0000AACE011F7F9C AS DateTime), N'超级管理员', 60, N'超级管理员', CAST(0x0000AACE011F7F9C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (40, N'Search', CAST(0x0000AACE011F7F9C AS DateTime), N'超级管理员', 35, N'超级管理员', CAST(0x0000AACE011F7F9C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (41, N'Search', CAST(0x0000AACE011F7F9C AS DateTime), N'超级管理员', 74, N'超级管理员', CAST(0x0000AACE011F7F9C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (42, N'Search,Add,Delete,Update,Export,Audit', CAST(0x0000AACE011F7F9C AS DateTime), N'超级管理员', 51, N'超级管理员', CAST(0x0000AACE011F7F9C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (43, N'Search,Add,Delete,Update,Export', CAST(0x0000AACE011F7F9C AS DateTime), N'超级管理员', 3, N'超级管理员', CAST(0x0000AACE011F7F9C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (44, N'Search', CAST(0x0000AACE011F7F9C AS DateTime), N'超级管理员', 58, N'超级管理员', CAST(0x0000AACE011F7F9C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (45, N'Search,Import,Export', CAST(0x0000AACE011F7F9C AS DateTime), N'超级管理员', 49, N'超级管理员', CAST(0x0000AACE011F7F9C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (46, N'Search', CAST(0x0000AACE011F7F9C AS DateTime), N'超级管理员', 57, N'超级管理员', CAST(0x0000AACE011F7F9C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (47, N'Search', CAST(0x0000AACE011F7F9C AS DateTime), N'超级管理员', 25, N'超级管理员', CAST(0x0000AACE011F7F9C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (48, N'Search', CAST(0x0000AACE011F7F9C AS DateTime), N'超级管理员', 56, N'超级管理员', CAST(0x0000AACE011F7F9C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (49, N'Search', CAST(0x0000AACE011F7F9C AS DateTime), N'超级管理员', 24, N'超级管理员', CAST(0x0000AACE011F7F9C AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (50, N'Search', CAST(0x0000AACE011FC718 AS DateTime), N'超级管理员', 66, N'超级管理员', CAST(0x0000AACE011FC718 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (51, N'Search', CAST(0x0000AAD0017FEC9E AS DateTime), N'超级管理员', 64, N'超级管理员', CAST(0x0000AAD0017FEC9E AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (52, N'Search', CAST(0x0000AAD0017FEC9E AS DateTime), N'超级管理员', 62, N'超级管理员', CAST(0x0000AAD0017FEC9E AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (53, N'Search', CAST(0x0000AAD0017FEC9E AS DateTime), N'超级管理员', 67, N'超级管理员', CAST(0x0000AAD0017FEC9E AS DateTime), 2, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sys_RoleAuth] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_TableColumn] ON 

GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (20, NULL, NULL, NULL, NULL, N'角色ID', N'Role_Id', N'int', 70, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AACE014EF051 AS DateTime), 1, 1420, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (21, NULL, NULL, NULL, NULL, N'父级ID', N'ParentId', N'int', 70, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 1, N'', NULL, 1, 1, NULL, 0, 0, 0, 4, N'超级管理员', CAST(0x0000AACE014EF059 AS DateTime), 1, 1410, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (22, NULL, NULL, NULL, NULL, N'角色名称', N'RoleName', N'string', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 1, N'', NULL, 1, 1, NULL, 0, 1, 0, 50, N'超级管理员', CAST(0x0000AACE014EF05B AS DateTime), 1, 1400, N'', NULL, 1, N'text', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (23, NULL, NULL, NULL, NULL, N'部门ID', N'Dept_Id', N'int', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACE014EF05B AS DateTime), 1, 1390, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (24, NULL, NULL, NULL, NULL, N'部门名称', N'DeptName', N'string', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 2, N'', NULL, 1, 1, NULL, 0, 1, 0, 50, N'超级管理员', CAST(0x0000AACE014EF05B AS DateTime), 1, 1380, N'', NULL, 1, N'text', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (25, NULL, NULL, NULL, NULL, N'排序', N'OrderNo', N'int', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACE014EF05B AS DateTime), 1, 1370, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (26, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 4, N'', NULL, 1, 1, NULL, 0, 1, 1, 50, N'超级管理员', CAST(0x0000AACE014EF05B AS DateTime), 1, 1360, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (27, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 4, N'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AACE014EF05B AS DateTime), 1, 1350, N'', NULL, 2, N'datetime', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (28, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 5, N'', NULL, 1, 1, NULL, 0, 1, 1, 50, N'超级管理员', CAST(0x0000AACE014EF05C AS DateTime), 1, 1340, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (29, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 5, N'', NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AACE014EF05C AS DateTime), 1, 1330, N'', NULL, 2, N'datetime', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (30, NULL, NULL, NULL, NULL, N'', N'DeleteBy', N'string', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 0, 0, NULL, 0, 1, 0, 50, N'超级管理员', CAST(0x0000AACE014EF05C AS DateTime), 1, 1320, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (31, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'enable', NULL, 2, N'switch', NULL, 1, 1, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000AACE014EF05B AS DateTime), 1, 1375, N'', NULL, 1, N'select', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (32, NULL, NULL, NULL, NULL, N'字典ID', N'Dic_ID', N'int', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AAB200A99674 AS DateTime), 1, 1300, NULL, NULL, NULL, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (33, NULL, NULL, NULL, NULL, N'字典名称', N'DicName', N'string', 140, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, N'超级管理员', CAST(0x0000AAB200A99674 AS DateTime), 1, 1290, NULL, NULL, 1, N'textarea', NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (34, NULL, NULL, NULL, NULL, N'父级ID', N'ParentId', N'int', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, N'超级管理员', CAST(0x0000AAB200A99674 AS DateTime), 1, 1280, NULL, NULL, 1, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (35, NULL, NULL, NULL, NULL, N'配置项', N'Config', N'string', 300, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 10000, N'超级管理员', CAST(0x0000AAB200A99674 AS DateTime), 1, 1270, NULL, NULL, NULL, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (36, NULL, NULL, NULL, 8, N'sql语句', N'DbSql', N'string', 200, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 6, N'textarea', NULL, 1, 1, NULL, 0, 1, 0, 10000, N'超级管理员', CAST(0x0000AAB200A99674 AS DateTime), 1, 1260, NULL, NULL, NULL, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (37, NULL, NULL, NULL, NULL, N'DBServer', N'DBServer', N'string', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 10000, N'超级管理员', CAST(0x0000AAB200A99674 AS DateTime), 1, 1250, NULL, NULL, NULL, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (38, NULL, NULL, NULL, NULL, N'排序号', N'OrderNo', N'int', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAB200A99674 AS DateTime), 1, 1240, NULL, NULL, NULL, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (39, NULL, NULL, NULL, NULL, N'字典编号', N'DicNo', N'string', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, N'超级管理员', CAST(0x0000AAB200A99674 AS DateTime), 1, 1295, NULL, NULL, 1, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (40, NULL, NULL, NULL, NULL, N'备注', N'Remark', N'string', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 6, N'textarea', NULL, 1, 1, NULL, 0, 1, 0, 2000, N'超级管理员', CAST(0x0000AAB200A99674 AS DateTime), 1, 1220, NULL, NULL, NULL, N'无', NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (41, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, N'enable', NULL, 2, N'select', NULL, 1, 1, NULL, 0, 0, 0, 4, N'超级管理员', CAST(0x0000AAB200A99674 AS DateTime), 1, 1210, NULL, NULL, 2, N'drop', NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (42, NULL, NULL, NULL, NULL, NULL, N'CreateID', N'int', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAB200A99674 AS DateTime), 1, 1200, NULL, NULL, NULL, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (43, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, N'超级管理员', CAST(0x0000AAB200A99674 AS DateTime), 1, 1190, NULL, NULL, NULL, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (44, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 2, N'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AAB200A99674 AS DateTime), 1, 1180, NULL, NULL, 2, N'datetime', NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (45, NULL, NULL, NULL, NULL, NULL, N'ModifyID', N'int', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAB200A99674 AS DateTime), 1, 1170, NULL, NULL, NULL, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (46, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, N'超级管理员', CAST(0x0000AAB200A99674 AS DateTime), 1, 1160, NULL, NULL, NULL, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (47, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 150, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, N'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AAB200A99674 AS DateTime), 1, 1150, NULL, NULL, 2, N'datetime', NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (48, NULL, NULL, NULL, NULL, N'', N'DicList_ID', N'int', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1140, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (49, NULL, NULL, NULL, NULL, N'数据源ID', N'Dic_ID', N'int', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 1, NULL, 0, 1, 1, 4, N'超级管理员', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1130, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (50, NULL, NULL, NULL, NULL, N'数据源Value', N'DicValue', N'string', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, 1, N'text', NULL, 1, 1, NULL, 0, 1, 0, 100, N'超级管理员', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1120, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (51, NULL, NULL, NULL, NULL, N'数据源Text', N'DicName', N'string', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, 1, N'text', NULL, 1, 1, NULL, 0, 1, 0, 100, N'超级管理员', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1110, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (52, NULL, NULL, NULL, NULL, N'排序号', N'OrderNo', N'int', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, 1, N'text', NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1100, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (53, NULL, NULL, NULL, NULL, N'备注', N'Remark', N'string', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, 1, N'text', NULL, 1, 1, NULL, 0, 1, 0, 2000, N'超级管理员', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1090, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (54, NULL, NULL, NULL, NULL, N'是否可用', N'Enable', N'byte', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'enable', NULL, 1, N'switch', NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1080, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (55, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'无', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1070, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (56, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 1, 30, N'超级管理员', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1060, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (57, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1050, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (58, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1040, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (59, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1030, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (60, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1020, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (61, NULL, NULL, NULL, NULL, NULL, N'Id', N'int', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AAB001172F7C AS DateTime), 1, 10000, NULL, NULL, NULL, NULL, NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (62, NULL, NULL, NULL, 12, N'日志类型', N'LogType', N'string', 120, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, N'log', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, N'超级管理员', CAST(0x0000AAB001172F7C AS DateTime), 1, 8888, NULL, NULL, 3, N'checkbox', NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (63, NULL, NULL, NULL, NULL, N'请求参数', N'RequestParameter', N'string', 300, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 10000, N'超级管理员', CAST(0x0000AAB001172F7C AS DateTime), 1, 7990, NULL, NULL, NULL, NULL, NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (64, NULL, NULL, NULL, NULL, N'响应参数', N'ResponseParameter', N'string', 250, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 10000, N'超级管理员', CAST(0x0000AAB001172F7C AS DateTime), 1, 7980, NULL, NULL, NULL, NULL, NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (65, NULL, NULL, NULL, NULL, N'异常信息', N'ExceptionInfo', N'string', 280, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 10000, N'超级管理员', CAST(0x0000AAB001172F7C AS DateTime), 1, 7970, NULL, NULL, NULL, NULL, NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (66, NULL, NULL, NULL, NULL, N'响应状态', N'Success', N'int', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, N'restatus', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAB001172F7C AS DateTime), 1, 8700, NULL, NULL, 2, N'dropList', NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (67, NULL, NULL, NULL, NULL, N'开始时间', N'BeginDate', N'DateTime', 150, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AAB001172F7C AS DateTime), 1, 9999, NULL, NULL, 2, N'datetime', NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (68, NULL, NULL, NULL, NULL, N'结束时间', N'EndDate', N'DateTime', 150, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AAB001172F7C AS DateTime), 1, 880, NULL, NULL, NULL, NULL, NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (69, NULL, NULL, NULL, NULL, N'时长(毫秒)', N'ElapsedTime', N'int', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAB001172F7C AS DateTime), 1, 8600, NULL, NULL, NULL, NULL, NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (70, NULL, NULL, NULL, NULL, N'用户IP', N'UserIP', N'string', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, N'超级管理员', CAST(0x0000AAB001172F7C AS DateTime), 1, 7920, NULL, NULL, 1, N'text', NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (71, NULL, NULL, NULL, NULL, N'服务器IP', N'ServiceIP', N'string', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, N'超级管理员', CAST(0x0000AAB001172F7C AS DateTime), 1, 7910, NULL, NULL, 1, N'text', NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (72, NULL, NULL, NULL, NULL, N'浏览器类型', N'BrowserType', N'string', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, N'超级管理员', CAST(0x0000AAB001172F7C AS DateTime), 1, 7900, NULL, NULL, NULL, NULL, NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (73, NULL, NULL, NULL, NULL, N'请求地址', N'Url', N'string', 300, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30000, N'超级管理员', CAST(0x0000AAB001172F7C AS DateTime), 1, 9000, NULL, NULL, 1, N'text', NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (74, NULL, NULL, NULL, NULL, N'用户ID', N'User_Id', N'int', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAB001172F7C AS DateTime), 1, 7880, NULL, NULL, NULL, N'无', NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (75, NULL, NULL, NULL, NULL, N'用户名称', N'UserName', N'string', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30000, N'超级管理员', CAST(0x0000AAB001172F7C AS DateTime), 1, 7870, NULL, NULL, NULL, NULL, NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (76, NULL, NULL, NULL, NULL, N'角色ID', N'Role_Id', N'int', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAB001172F7C AS DateTime), 1, 7860, NULL, NULL, 2, N'text', NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (77, NULL, NULL, NULL, NULL, N'', N'User_Id', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7850, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (78, NULL, NULL, NULL, NULL, N'', N'Dept_Id', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7840, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (79, 0, NULL, 1, NULL, N'部门', N'DeptName', N'string', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'text', NULL, 1, 0, NULL, 0, 1, 0, 150, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7830, N'', NULL, 2, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (80, 0, 0, 1, NULL, N'角色', N'Role_Id', N'string', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'roles', NULL, 2, N'drop', NULL, 1, 1, NULL, 0, 0, 0, 600, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7820, N'', NULL, 2, N'drop', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (81, NULL, NULL, NULL, NULL, N'', N'RoleName', N'string', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 0, 0, 150, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7810, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (82, 1, 0, 1, NULL, N'用户名', N'UserName', N'string', 120, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 1, N'', NULL, 1, 1, NULL, 0, 0, 1, 100, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7945, N'', NULL, 1, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (83, 1, 0, NULL, NULL, N'密码', N'UserPwd', N'string', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 0, 0, NULL, 0, 1, 0, 200, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7790, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (84, NULL, NULL, NULL, NULL, N'用户真实姓名', N'UserTrueName', N'string', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 1, N'text', NULL, 1, 1, NULL, 0, 0, 0, 20, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7792, N'', NULL, 1, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (85, NULL, NULL, NULL, NULL, N'地址', N'Address', N'string', 190, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 3, N'text', NULL, 1, 1, NULL, 0, 1, 0, 200, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7270, N'', NULL, 4, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (86, NULL, NULL, NULL, NULL, N'电话', N'Mobile', N'string', 140, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 3, N'text', NULL, 1, 1, NULL, 0, 1, 0, 100, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7260, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (87, NULL, NULL, NULL, NULL, N'Email', N'Email', N'string', 140, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 5, N'text', NULL, 1, 1, NULL, 0, 1, 0, 100, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7250, N'', NULL, 4, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (88, NULL, NULL, NULL, NULL, N'', N'Tel', N'string', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 20, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7740, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (89, NULL, NULL, NULL, 12, N'备注', N'Remark', N'string', 180, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 7, N'textarea', NULL, 1, 1, NULL, 0, 1, 0, 200, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7230, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (90, NULL, NULL, NULL, NULL, N'排序号', N'OrderNo', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'text', NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7220, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (91, NULL, NULL, NULL, NULL, N'是否可用', N'Enable', N'byte', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'enable', NULL, 5, N'drop', NULL, 1, 1, NULL, 0, 0, 0, 1, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7670, N'', NULL, 4, N'drop', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (92, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7700, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (93, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 6, N'', NULL, 1, 1, NULL, 0, 1, 1, 200, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7690, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (94, NULL, NULL, NULL, NULL, N'注册时间', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 6, N'', NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7780, N'', NULL, 5, N'datetime', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (95, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7670, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (96, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 1, 200, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7660, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (97, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7650, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (98, NULL, NULL, NULL, NULL, N'审核状态', N'AuditStatus', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'audit', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7640, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (99, NULL, NULL, NULL, NULL, N'审核人', N'Auditor', N'string', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 200, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7630, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (100, NULL, NULL, NULL, NULL, N'审核时间', N'AuditDate', N'DateTime', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7620, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (101, NULL, NULL, NULL, NULL, N'最后登陆时间', N'LastLoginDate', N'DateTime', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7610, N'', NULL, 5, N'datetime', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (102, NULL, NULL, NULL, NULL, N'最后密码修改时间', N'LastModifyPwdDate', N'DateTime', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7600, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (103, NULL, NULL, NULL, NULL, N'主键ID', N'Id', N'int', 90, NULL, CAST(0x0000A915012A8450 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AA45010DE494 AS DateTime), 1, 7300, NULL, NULL, NULL, NULL, NULL, N'Sys_PinRecord', 7)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (104, 1, 1, NULL, NULL, N'手机号', N'PhoneNo', N'string', 90, NULL, CAST(0x0000A915012A8450 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, 0, 11, N'超级管理员', CAST(0x0000AA45010DE494 AS DateTime), 1, 7290, NULL, NULL, 1, NULL, NULL, N'Sys_PinRecord', 7)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (105, 1, NULL, NULL, NULL, N'验证码', N'PIN', N'string', 90, NULL, CAST(0x0000A915012A8450 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, 0, 20, N'超级管理员', CAST(0x0000AA45010DE494 AS DateTime), 1, 7281, NULL, NULL, 1, NULL, NULL, N'Sys_PinRecord', 7)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (106, 1, 1, NULL, NULL, N'验证码类型', N'PINType', N'int', 90, NULL, CAST(0x0000A915012A8450 AS DateTime), NULL, NULL, N'pin', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, N'超级管理员', CAST(0x0000AA45010DE494 AS DateTime), 1, 7270, NULL, NULL, 2, N'selectList', NULL, N'Sys_PinRecord', 7)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (107, NULL, NULL, NULL, NULL, N'是否使用', N'Enable', N'byte', 90, NULL, CAST(0x0000A915012A8450 AS DateTime), NULL, NULL, N'enable', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000AA45010DE494 AS DateTime), 1, 7260, NULL, NULL, 1, N'drop', NULL, N'Sys_PinRecord', 7)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (108, NULL, NULL, NULL, NULL, N'创建人Id', N'CreateID', N'int', 90, NULL, CAST(0x0000A915012A8450 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AA45010DE494 AS DateTime), 1, 7250, NULL, NULL, NULL, NULL, NULL, N'Sys_PinRecord', 7)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (109, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, NULL, CAST(0x0000A915012A8450 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AA45010DE494 AS DateTime), 1, 7240, NULL, NULL, NULL, NULL, NULL, N'Sys_PinRecord', 7)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (110, NULL, NULL, NULL, NULL, N'发送时间', N'CreateDate', N'DateTime', 90, NULL, CAST(0x0000A915012A8450 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AA45010DE494 AS DateTime), 1, 7230, NULL, NULL, NULL, NULL, NULL, N'Sys_PinRecord', 7)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (111, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 90, NULL, CAST(0x0000A915012A8450 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AA45010DE494 AS DateTime), 1, 7220, NULL, NULL, NULL, NULL, NULL, N'Sys_PinRecord', 7)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (112, 0, 0, NULL, NULL, N'修改人', N'Modifier', N'string', 130, NULL, CAST(0x0000A915012A8450 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AA45010DE494 AS DateTime), 1, 7210, NULL, NULL, NULL, NULL, NULL, N'Sys_PinRecord', 7)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (113, 0, 0, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 90, NULL, CAST(0x0000A915012A8450 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AA45010DE494 AS DateTime), 1, 7200, NULL, NULL, NULL, NULL, NULL, N'Sys_PinRecord', 7)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (114, NULL, NULL, NULL, NULL, N'头像', N'HeadImageUrl', N'string', 150, N'', NULL, NULL, NULL, N'', NULL, 9, N'', NULL, 1, 1, 1, NULL, NULL, 0, 200, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7842, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (131, NULL, NULL, NULL, NULL, N'主键ID', N'Id', N'int', 90, NULL, CAST(0x0000A91900E42064 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AA3F00BC0598 AS DateTime), 1, 8680, NULL, NULL, NULL, NULL, NULL, N'App_HomeHeadImages', 14)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (132, NULL, NULL, NULL, 12, N'轮播图片1', N'ImageUrl', N'string', 400, NULL, CAST(0x0000A91900E42064 AS DateTime), NULL, NULL, NULL, NULL, 10, NULL, NULL, 1, 1, 1, 0, 0, 0, 500, N'超级管理员', CAST(0x0000AA3F00BC0598 AS DateTime), 1, 8670, NULL, NULL, NULL, NULL, NULL, N'App_HomeHeadImages', 14)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (133, NULL, NULL, NULL, NULL, N'跳转地址', N'TransferUrl', N'string', 250, NULL, CAST(0x0000A91900E42064 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, N'超级管理员', CAST(0x0000AA3F00BC0598 AS DateTime), 1, 8660, NULL, NULL, NULL, NULL, NULL, N'App_HomeHeadImages', 14)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (134, NULL, NULL, NULL, NULL, N'跳转类型', N'TransferType', N'string', 120, NULL, CAST(0x0000A91900E42064 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, N'超级管理员', CAST(0x0000AA3F00BC0598 AS DateTime), 1, 8650, NULL, NULL, NULL, NULL, NULL, N'App_HomeHeadImages', 14)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (135, NULL, NULL, NULL, NULL, N'启用首页轮播', N'Enable', N'byte', 140, NULL, CAST(0x0000A91900E42064 AS DateTime), NULL, NULL, N'enable', NULL, 2, N'drop', NULL, 1, 1, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000AA3F00BC0598 AS DateTime), 1, 8667, NULL, NULL, 1, N'drop', NULL, N'App_HomeHeadImages', 14)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (136, NULL, NULL, NULL, NULL, N'创建人Id', N'CreateID', N'int', 90, NULL, CAST(0x0000A91900E42064 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AA3F00BC0598 AS DateTime), 1, 8630, NULL, NULL, NULL, NULL, NULL, N'App_HomeHeadImages', 14)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (137, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 150, NULL, CAST(0x0000A91900E42064 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AA3F00BC0598 AS DateTime), 1, 8620, NULL, NULL, NULL, NULL, NULL, N'App_HomeHeadImages', 14)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (138, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000A91900E42064 AS DateTime), NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AA3F00BC0598 AS DateTime), 1, 8610, NULL, NULL, 1, N'datetime', NULL, N'App_HomeHeadImages', 14)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (139, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 90, NULL, CAST(0x0000A91900E42064 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AA3F00BC0598 AS DateTime), 1, 8600, NULL, NULL, NULL, NULL, NULL, N'App_HomeHeadImages', 14)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (140, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 140, NULL, CAST(0x0000A91900E42064 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AA3F00BC0598 AS DateTime), 1, 8590, NULL, NULL, NULL, NULL, NULL, N'App_HomeHeadImages', 14)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (141, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 180, NULL, CAST(0x0000A91900E42064 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AA3F00BC0598 AS DateTime), 1, 8580, NULL, NULL, NULL, NULL, NULL, N'App_HomeHeadImages', 14)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (142, NULL, NULL, NULL, NULL, N'主键ID', N'Id', N'int', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AACD00A5D6B0 AS DateTime), 1, 8570, NULL, NULL, NULL, NULL, NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (143, NULL, NULL, NULL, 12, N'品种', N'Variety', N'string', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, N'pz', NULL, 1, N'select', NULL, 1, 1, NULL, 0, 0, 0, 20, N'超级管理员', CAST(0x0000AACD00A5D6B0 AS DateTime), 1, 8560, NULL, NULL, 1, N'drop', NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (144, NULL, NULL, NULL, 12, N'月龄', N'AgeRange', N'string', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, N'age', NULL, 10, N'select', NULL, 1, 1, NULL, 0, 0, 0, 50, N'超级管理员', CAST(0x0000AACD00A5D6B0 AS DateTime), 1, 8550, NULL, NULL, 1, N'dropList', NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (145, NULL, NULL, NULL, 12, N'城市', N'City', N'string', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, N'city', NULL, 15, N'select', NULL, 1, 1, NULL, 0, 0, 0, 15, N'超级管理员', CAST(0x0000AACD00A5D6B0 AS DateTime), 1, 8540, NULL, NULL, 1, N'dropList', NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (146, NULL, NULL, NULL, 12, N'成交均价', N'AvgPrice', N'decimal', 80, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, 20, NULL, NULL, 1, 1, NULL, 0, 0, 0, 9, N'超级管理员', CAST(0x0000AACD00A5D6B0 AS DateTime), 1, 8530, NULL, NULL, NULL, NULL, NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (147, NULL, NULL, NULL, 12, N'成交日期', N'Date', N'DateTime', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, 25, N'date', NULL, 1, 1, NULL, 0, 0, 0, 3, N'超级管理员', CAST(0x0000AACD00A5D6B0 AS DateTime), 1, 8520, NULL, NULL, 2, N'datetime', NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (148, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, N'enable', NULL, NULL, N'select', NULL, 1, 0, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000AACD00A5D6B0 AS DateTime), 1, 8510, NULL, NULL, 2, N'drop', NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (149, NULL, NULL, NULL, NULL, N'创建人Id', N'CreateID', N'int', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACD00A5D6B0 AS DateTime), 1, 8500, NULL, NULL, NULL, NULL, NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (150, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, 40, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, N'超级管理员', CAST(0x0000AACD00A5D6B0 AS DateTime), 1, 8490, NULL, NULL, NULL, NULL, NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (151, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, 40, NULL, NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AACD00A5D6B0 AS DateTime), 1, 8480, NULL, NULL, NULL, N'datetime', NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (152, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACD00A5D6B0 AS DateTime), 1, 8470, NULL, NULL, NULL, NULL, NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (153, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, 50, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, N'超级管理员', CAST(0x0000AACD00A5D6B0 AS DateTime), 1, 8460, NULL, NULL, NULL, NULL, NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (154, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, 50, NULL, NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AACD00A5D6B0 AS DateTime), 1, 8450, NULL, NULL, NULL, NULL, NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (155, NULL, NULL, NULL, NULL, N'主键ID', N'Id', N'int', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AACC01328844 AS DateTime), 1, 8440, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (156, NULL, NULL, NULL, NULL, N'品种', N'Variety', N'string', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, N'pz', NULL, 1, N'select', NULL, 1, 1, NULL, 0, 0, 0, 20, N'超级管理员', CAST(0x0000AACC01328844 AS DateTime), 1, 8430, NULL, NULL, 1, N'drop', NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (157, NULL, NULL, NULL, NULL, N'月龄', N'Age', N'string', 100, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, N'age', NULL, 1, N'select', NULL, 1, 1, NULL, 0, 0, 0, 50, N'超级管理员', CAST(0x0000AACC01328844 AS DateTime), 1, 8420, NULL, NULL, 1, N'drop', NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (158, NULL, NULL, NULL, NULL, N'报价城市', N'City', N'string', 120, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, N'city', NULL, 1, N'select', NULL, 1, 1, NULL, 0, 0, 0, 15, N'超级管理员', CAST(0x0000AACC01328844 AS DateTime), 1, 8410, NULL, NULL, 1, N'dropList', NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (159, NULL, NULL, NULL, NULL, N'上报价格', N'Price', N'decimal', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 0, 0, 9, N'超级管理员', CAST(0x0000AACC01328844 AS DateTime), 1, 8400, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (160, 0, NULL, NULL, NULL, N'审核状态', N'AuditStatus', N'int', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, N'audit', NULL, NULL, N'select', NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACC01328844 AS DateTime), 1, 8382, NULL, NULL, 2, N'select', NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (161, NULL, NULL, NULL, NULL, N'审核人Id', N'AuditId', N'int', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACC01328844 AS DateTime), 1, 8380, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (162, NULL, NULL, NULL, NULL, N'审核人', N'Auditor', N'string', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20, N'超级管理员', CAST(0x0000AACC01328844 AS DateTime), 1, 8370, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (163, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, N'enable', NULL, 2, N'switch', NULL, 1, 1, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000AACC01328844 AS DateTime), 1, 8360, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (164, NULL, NULL, NULL, NULL, N'创建人Id', N'CreateID', N'int', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACC01328844 AS DateTime), 1, 8350, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (165, NULL, NULL, NULL, NULL, N'上报人', N'Creator', N'string', 100, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, N'超级管理员', CAST(0x0000AACC01328844 AS DateTime), 1, 8388, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (166, NULL, 0, NULL, NULL, N'上报时间', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, 5, N'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AACC01328844 AS DateTime), 1, 8387, NULL, NULL, 2, N'datetime', NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (167, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACC01328844 AS DateTime), 1, 8320, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (168, NULL, NULL, NULL, 12, N'测试', N'Modifier', N'string', 100, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, 8, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AACC01328844 AS DateTime), 1, 8310, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (169, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, 5, N'无', NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AACC01328844 AS DateTime), 1, 8300, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (170, NULL, NULL, NULL, NULL, N'审核时间', N'AuditDate', N'DateTime', 110, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, N'超级管理员', CAST(0x0000AACC01328844 AS DateTime), 1, 8381, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (183, NULL, NULL, NULL, NULL, N'主键ID', N'Id', N'int', 90, N'', CAST(0x0000A91900FA6464 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'', CAST(0x0000A919011AE388 AS DateTime), NULL, 8160, N'', NULL, NULL, N'', NULL, N'App_OtherConfig', 18)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (184, NULL, NULL, NULL, NULL, N'预约专家界面描述', N'AppointmentDescribe', N'string', 90, N'', CAST(0x0000A91900FA6464 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 500, N'', CAST(0x0000A919011AE388 AS DateTime), NULL, 8150, N'', NULL, NULL, N'', NULL, N'App_OtherConfig', 18)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (185, NULL, NULL, NULL, NULL, N'产业联盟图片地址', N'AllianceImageUrls', N'string', 90, N'', CAST(0x0000A91900FA6464 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 500, N'', CAST(0x0000A919011AE388 AS DateTime), NULL, 8140, N'', NULL, NULL, N'', NULL, N'App_OtherConfig', 18)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (186, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, N'', CAST(0x0000A91900FA6464 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 1, N'', CAST(0x0000A919011AE388 AS DateTime), NULL, 8130, N'', NULL, NULL, N'', NULL, N'App_OtherConfig', 18)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (187, NULL, NULL, NULL, NULL, N'创建人Id', N'CreateID', N'int', 90, N'', CAST(0x0000A91900FA6464 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A919011AE388 AS DateTime), NULL, 8120, N'', NULL, NULL, N'', NULL, N'App_OtherConfig', 18)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (188, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, N'', CAST(0x0000A91900FA6464 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A919011AE388 AS DateTime), NULL, 8110, N'', NULL, NULL, N'', NULL, N'App_OtherConfig', 18)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (189, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 90, N'', CAST(0x0000A91900FA6464 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A919011AE388 AS DateTime), NULL, 8100, N'', NULL, NULL, N'', NULL, N'App_OtherConfig', 18)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (190, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 90, N'', CAST(0x0000A91900FA6464 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A919011AE388 AS DateTime), NULL, 8090, N'', NULL, NULL, N'', NULL, N'App_OtherConfig', 18)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (191, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, N'', CAST(0x0000A91900FA6464 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A919011AE388 AS DateTime), NULL, 8080, N'', NULL, NULL, N'', NULL, N'App_OtherConfig', 18)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (192, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 90, N'', CAST(0x0000A91900FA6464 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A919011AE388 AS DateTime), NULL, 8070, N'', NULL, NULL, N'', NULL, N'App_OtherConfig', 18)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (193, NULL, NULL, NULL, NULL, N'主键ID', N'Id', N'int', 90, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AACC01235478 AS DateTime), 1, 8060, NULL, NULL, NULL, NULL, NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (194, NULL, NULL, NULL, NULL, N'姓名', N'Name', N'string', 120, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 50, N'超级管理员', CAST(0x0000AACC01235478 AS DateTime), 1, 8050, NULL, NULL, 1, N'text', NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (195, NULL, NULL, NULL, NULL, N'电话', N'PhoneNo', N'string', 150, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 15, N'超级管理员', CAST(0x0000AACC01235478 AS DateTime), 1, 8040, NULL, NULL, 1, N'text', NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (196, NULL, NULL, NULL, NULL, N'数量', N'Quantity', N'int', 90, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, N'超级管理员', CAST(0x0000AACC01235478 AS DateTime), 1, 8030, NULL, NULL, NULL, NULL, NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (197, NULL, NULL, NULL, NULL, N'购买类型', N'CowType', N'string', 90, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, N'nav', NULL, 2, N'select', NULL, 1, 1, NULL, 0, 1, 0, 100, N'超级管理员', CAST(0x0000AACC01235478 AS DateTime), 1, 8020, NULL, NULL, 2, N'dropList', NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (198, NULL, NULL, NULL, NULL, N'描述', N'Describe', N'string', 190, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, 0, 500, N'超级管理员', CAST(0x0000AACC01235478 AS DateTime), 1, 8010, NULL, NULL, NULL, NULL, NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (199, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000AACC01235478 AS DateTime), 1, 8000, NULL, NULL, NULL, NULL, NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (200, NULL, NULL, NULL, NULL, N'创建人Id', N'CreateID', N'int', 90, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACC01235478 AS DateTime), 1, 7990, NULL, NULL, NULL, NULL, NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (201, NULL, NULL, NULL, NULL, N'提交人', N'Creator', N'string', 130, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, 3, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AACC01235478 AS DateTime), 1, 7980, NULL, NULL, 2, NULL, NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (202, NULL, NULL, NULL, NULL, N'提交时间', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, 3, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AACC01235478 AS DateTime), 1, 7970, NULL, NULL, 2, N'datetime', NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (203, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 90, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACC01235478 AS DateTime), 1, 7960, NULL, NULL, NULL, NULL, NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (204, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AACC01235478 AS DateTime), 1, 7950, NULL, NULL, NULL, NULL, NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (205, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 150, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AACC01235478 AS DateTime), 1, 7940, NULL, NULL, NULL, NULL, NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (206, 1, 1, 0, NULL, N'主键ID', N'ExpertId', N'int', 80, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7930, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (207, NULL, NULL, NULL, NULL, N'专家名称', N'ExpertName', N'string', 150, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 1, N'', NULL, 1, 1, NULL, 0, 1, 0, 20, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7920, N'', NULL, 1, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (208, NULL, NULL, NULL, NULL, N'真实姓名', N'ReallyName', N'string', 150, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 1, N'', NULL, 1, 1, NULL, 0, 1, 0, 20, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7910, N'', NULL, 1, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (209, NULL, NULL, NULL, NULL, N'身份证号', N'IDNumber', N'string', 200, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 2, N'', NULL, 1, 1, NULL, 0, 1, 0, 18, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7900, N'', NULL, 1, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (210, NULL, NULL, NULL, NULL, N'专家头像', N'HeadImageUrl', N'string', 220, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 10, N'', NULL, 1, 1, 1, 0, 1, 0, 500, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7920, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (211, NULL, NULL, NULL, NULL, N'学历', N'Education', N'string', 120, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 2, N'', NULL, 1, 1, NULL, 0, 1, 0, 50, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7880, N'', NULL, 2, N'text', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (212, NULL, NULL, NULL, NULL, N'职业', N'Professional', N'string', 120, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 3, N'', NULL, 1, 1, NULL, 0, 1, 0, 50, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7870, N'', NULL, 2, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (213, NULL, NULL, NULL, NULL, N'所在公司', N'Company', N'string', 150, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 6, N'', NULL, 1, 1, NULL, 0, 1, 0, 50, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7860, N'', NULL, 2, N'无', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (214, NULL, NULL, NULL, NULL, N'服务地区', N'City', N'string', 120, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'city', NULL, 3, N'drop', NULL, 1, 1, NULL, 0, 1, 0, 50, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7850, N'', NULL, 3, N'dropList', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (215, NULL, NULL, NULL, NULL, N'擅长领域', N'SpecialField', N'string', 120, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 9, N'textarea', NULL, 1, 1, NULL, 0, 1, 0, 800, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7840, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (216, NULL, NULL, NULL, NULL, N'个人简介', N'Resume', N'string', 220, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 9, N'textarea', NULL, 1, 1, NULL, 0, 1, 0, 500, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7830, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (217, NULL, NULL, NULL, NULL, N'审核状态', N'AuditStatus', N'int', 120, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'audit', NULL, 0, N'drop', NULL, 1, 1, NULL, 0, 0, 0, 4, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7919, N'', NULL, 3, N'dropList', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (218, NULL, NULL, NULL, NULL, N'审核人Id', N'AuditId', N'int', 80, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7810, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (219, NULL, NULL, NULL, NULL, N'审核人', N'Auditor', N'string', 150, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 1, NULL, 0, 1, 0, 20, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7919, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (220, NULL, NULL, NULL, NULL, N'审核时间', N'AuditDate', N'DateTime', 150, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'datetime', NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7790, N'', NULL, 3, N'datetime', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (221, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'enable', NULL, 7, N'drop', NULL, 1, 1, NULL, 0, 0, 0, 1, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7919, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (222, NULL, NULL, NULL, NULL, N'创建人Id', N'CreateID', N'int', 80, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7770, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (223, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7760, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (224, NULL, NULL, NULL, NULL, N'申请时间', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 7, N'', NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7750, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (225, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 80, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7740, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (226, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7730, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (227, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 150, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7720, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (228, NULL, NULL, NULL, NULL, N'主键ID', N'QuestionId', N'int', 80, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7710, N'', NULL, NULL, N'', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (230, NULL, NULL, NULL, NULL, N'专家名称', N'ExpertName', N'string', 150, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 20, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7690, N'', NULL, 1, N'', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (231, NULL, NULL, NULL, NULL, N'提问人头像', N'HeadImageUrl', N'string', 140, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, 1, 0, 1, 0, 500, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7680, N'', NULL, NULL, N'', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (232, NULL, NULL, NULL, NULL, N'公母', N'Sex', N'string', 90, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, NULL, N'sex', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 10, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7670, N'', NULL, 1, N'drop', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (233, NULL, NULL, NULL, NULL, N'月龄', N'Age', N'string', 120, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, NULL, N'age', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 20, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7660, N'', NULL, 1, N'dropList', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (234, NULL, NULL, NULL, NULL, N'温度', N'Temperature', N'string', 200, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, NULL, N'wd', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 20, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7650, N'', NULL, 2, N'dropList', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (235, NULL, NULL, NULL, NULL, N'标题', N'Title', N'string', 300, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7640, N'', NULL, NULL, N'', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (236, NULL, NULL, NULL, NULL, N'问题描述', N'Describe', N'string', 220, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 500, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7630, N'', NULL, NULL, N'', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (237, NULL, NULL, NULL, NULL, N'提问照片', N'ImageUrls', N'string', 300, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, 1, 0, 1, 0, 500, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7620, N'', NULL, NULL, N'', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (238, NULL, NULL, NULL, NULL, N'回复状态', N'ReplyStatus', N'int', 80, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, NULL, N'reply', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 0, 0, 4, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7610, N'', NULL, 2, N'drop', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (239, NULL, NULL, NULL, NULL, N'审核状态', N'AuditStatus', N'int', 80, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, NULL, N'audit', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 0, 0, 4, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7600, N'', NULL, 2, N'drop', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (240, NULL, NULL, NULL, NULL, N'审核人Id', N'AuditId', N'int', 80, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7590, N'', NULL, NULL, N'', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (241, NULL, NULL, NULL, NULL, N'审核人', N'Auditor', N'string', 90, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 20, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7580, N'', NULL, NULL, N'', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (242, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, NULL, N'status', NULL, 0, N'', NULL, 1, 0, NULL, 0, 0, 0, 1, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7570, N'', NULL, NULL, N'', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (243, NULL, NULL, NULL, NULL, N'提问人Id', N'CreateID', N'int', 80, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7560, N'', NULL, NULL, N'', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (244, NULL, NULL, NULL, NULL, N'提问人', N'Creator', N'string', 130, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7550, N'', NULL, 3, N'无', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (245, NULL, NULL, NULL, NULL, N'提问时间', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7540, N'', NULL, 3, N'datetime', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (246, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 80, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7530, N'', NULL, NULL, N'', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (247, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7520, N'', NULL, NULL, N'', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (248, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 150, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7510, N'', NULL, NULL, N'', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (249, NULL, NULL, NULL, NULL, N'审核时间', N'AuditDate', N'DateTime', 150, N'', NULL, NULL, NULL, N'', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7578, N'', NULL, 3, N'datetime', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (252, NULL, NULL, NULL, NULL, N'主键ID', N'QuestionId', N'int', 80, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7470, N'', NULL, NULL, N'', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (253, NULL, NULL, NULL, NULL, N'公母', N'Sex', N'string', 90, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'sex', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 10, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7460, N'', NULL, 1, N'drop', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (254, NULL, NULL, NULL, NULL, N'月龄', N'Age', N'string', 90, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'age', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 20, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7450, N'', NULL, 1, N'drop', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (255, NULL, NULL, NULL, NULL, N'温度', N'Temperature', N'string', 140, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'wd', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 20, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7440, N'', NULL, 1, N'drop', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (256, NULL, NULL, NULL, NULL, N'标题', N'Title', N'string', 300, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7430, N'', NULL, NULL, N'', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (257, NULL, NULL, NULL, NULL, N'问题描述', N'Describe', N'string', 220, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 500, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7420, N'', NULL, NULL, N'', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (258, NULL, NULL, NULL, NULL, N'提问照片', N'ImageUrls', N'string', 350, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, 1, 0, 1, 0, 500, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7410, N'', NULL, NULL, N'', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (259, NULL, NULL, NULL, NULL, N'提问照片(大图)', N'BigImageUrls', N'string', 220, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 500, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7400, N'', NULL, NULL, N'', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (260, NULL, NULL, NULL, NULL, N'精选提问', N'Choiceness', N'int', 80, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7390, N'', NULL, NULL, N'', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (261, NULL, NULL, NULL, NULL, N'精选排序号', N'OrderNo', N'int', 80, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7380, N'', NULL, NULL, N'', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (263, NULL, NULL, NULL, NULL, N'回复状态', N'ReplyStatus', N'int', 80, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'reply', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 0, 0, 4, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7360, N'', NULL, 2, N'drop', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (264, NULL, NULL, NULL, NULL, N'审核状态', N'AuditStatus', N'int', 80, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 0, 0, 4, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7350, N'', NULL, NULL, N'', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (265, NULL, NULL, NULL, NULL, N'审核人Id', N'AuditId', N'int', 80, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7340, N'', NULL, NULL, N'', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (266, NULL, NULL, NULL, NULL, N'审核人', N'Auditor', N'string', 90, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 20, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7330, N'', NULL, NULL, N'', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (267, NULL, NULL, NULL, NULL, N'审核时间', N'AuditDate', N'DateTime', 150, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7320, N'', NULL, 2, N'datetime', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (268, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'status', NULL, 0, N'', NULL, 1, 1, NULL, 0, 0, 0, 1, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7310, N'', NULL, NULL, N'', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (269, NULL, NULL, NULL, NULL, N'创建人Id', N'CreateID', N'int', 80, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7300, N'', NULL, NULL, N'', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (270, NULL, NULL, NULL, NULL, N'提问人', N'Creator', N'string', 130, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7290, N'', NULL, NULL, N'', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (271, NULL, NULL, NULL, NULL, N'提问时间', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7280, N'', NULL, 2, N'datetime', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (272, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 80, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7270, N'', NULL, NULL, N'', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (273, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7260, N'', NULL, NULL, N'', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (274, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 150, N'', CAST(0x0000A9190105A98C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7250, N'', NULL, NULL, N'', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (275, NULL, NULL, NULL, NULL, N'主键ID', N'ReplyId', N'int', 80, N'', CAST(0x0000A9190106524C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'', CAST(0x0000A9270100C4D0 AS DateTime), NULL, 7240, N'', NULL, NULL, N'', NULL, N'App_PublicQuestionReply', 24)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (276, NULL, NULL, NULL, NULL, N'问题ID', N'QuestionId', N'int', 80, N'', CAST(0x0000A9190106524C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'', CAST(0x0000A9270100C4D0 AS DateTime), NULL, 7230, N'', NULL, NULL, N'', NULL, N'App_PublicQuestionReply', 24)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (277, NULL, NULL, NULL, NULL, N'回复id', N'ReplierId', N'int', 80, N'', CAST(0x0000A9190106524C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'', CAST(0x0000A9270100C4D0 AS DateTime), NULL, 7220, N'', NULL, NULL, N'', NULL, N'App_PublicQuestionReply', 24)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (278, NULL, NULL, NULL, NULL, N'回复人', N'Replier', N'string', 120, N'', CAST(0x0000A9190106524C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 50, N'', CAST(0x0000A9270100C4D0 AS DateTime), NULL, 7210, N'', NULL, NULL, N'', NULL, N'App_PublicQuestionReply', 24)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (279, NULL, NULL, NULL, NULL, N'回复日期', N'ReplyDate', N'DateTime', 150, N'', CAST(0x0000A9190106524C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A9270100C4D0 AS DateTime), NULL, 7200, N'', NULL, NULL, N'', NULL, N'App_PublicQuestionReply', 24)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (280, NULL, NULL, NULL, NULL, N'回复内容', N'ReplyContent', N'string', 220, N'', CAST(0x0000A9190106524C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 500, N'', CAST(0x0000A9270100C4D0 AS DateTime), NULL, 7190, N'', NULL, NULL, N'', NULL, N'App_PublicQuestionReply', 24)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (281, NULL, NULL, NULL, NULL, N'被回复人ID', N'ReplyToId', N'int', 80, N'', CAST(0x0000A9190106524C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'', CAST(0x0000A9270100C4D0 AS DateTime), NULL, 7180, N'', NULL, NULL, N'', NULL, N'App_PublicQuestionReply', 24)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (282, NULL, NULL, NULL, NULL, N'被回复人', N'ReplyTo', N'string', 120, N'', CAST(0x0000A9190106524C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 50, N'', CAST(0x0000A9270100C4D0 AS DateTime), NULL, 7170, N'', NULL, NULL, N'', NULL, N'App_PublicQuestionReply', 24)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (283, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, N'', CAST(0x0000A9190106524C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 1, N'', CAST(0x0000A9270100C4D0 AS DateTime), NULL, 7160, N'', NULL, NULL, N'', NULL, N'App_PublicQuestionReply', 24)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (284, NULL, NULL, NULL, NULL, N'创建人Id', N'CreateID', N'int', 80, N'', CAST(0x0000A9190106524C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A9270100C4D0 AS DateTime), NULL, 7150, N'', NULL, NULL, N'', NULL, N'App_PublicQuestionReply', 24)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (285, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, N'', CAST(0x0000A9190106524C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A9270100C4D0 AS DateTime), NULL, 7140, N'', NULL, NULL, N'', NULL, N'App_PublicQuestionReply', 24)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (286, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A9190106524C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A9270100C4D0 AS DateTime), NULL, 7130, N'', NULL, NULL, N'', NULL, N'App_PublicQuestionReply', 24)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (287, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 80, N'', CAST(0x0000A9190106524C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A9270100C4D0 AS DateTime), NULL, 7120, N'', NULL, NULL, N'', NULL, N'App_PublicQuestionReply', 24)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (288, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, N'', CAST(0x0000A9190106524C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A9270100C4D0 AS DateTime), NULL, 7110, N'', NULL, NULL, N'', NULL, N'App_PublicQuestionReply', 24)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (289, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 150, N'', CAST(0x0000A9190106524C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A9270100C4D0 AS DateTime), NULL, 7100, N'', NULL, NULL, N'', NULL, N'App_PublicQuestionReply', 24)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (290, NULL, NULL, NULL, NULL, N'主键ID', N'Id', N'int', 80, NULL, CAST(0x0000A919010876BC AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 8090, NULL, NULL, NULL, NULL, NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (291, NULL, NULL, NULL, NULL, N'二级分类标题', N'SecondClassifyId', N'int', 120, NULL, CAST(0x0000A919010876BC AS DateTime), NULL, NULL, N'tc', NULL, 2, N'drop', NULL, 1, 1, NULL, 0, 0, 0, 4, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 7080, NULL, NULL, 1, N'dropList', NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (292, NULL, NULL, NULL, NULL, N'二级分类标题', N'SecondClassifyTitle', N'string', 90, NULL, CAST(0x0000A919010876BC AS DateTime), NULL, NULL, NULL, NULL, 0, N'text', NULL, 1, 0, NULL, 0, 0, 0, 20, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 7070, NULL, NULL, NULL, N'无', NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (293, NULL, NULL, NULL, 12, N'标题', N'Title', N'string', 300, NULL, CAST(0x0000A919010876BC AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 50, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 7060, NULL, NULL, 1, NULL, NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (294, NULL, NULL, NULL, NULL, N'浏览次数', N'ViewCount', N'int', 80, NULL, CAST(0x0000A919010876BC AS DateTime), NULL, NULL, NULL, NULL, 4, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 7050, NULL, NULL, NULL, NULL, NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (295, NULL, NULL, NULL, 12, N'浏览地址', N'DetailUrl', N'string', 90, NULL, CAST(0x0000A919010876BC AS DateTime), NULL, NULL, NULL, NULL, 7, N'text', NULL, 1, 1, NULL, 0, 1, 0, 200, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 7040, NULL, NULL, NULL, NULL, NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (296, NULL, NULL, NULL, 12, N'封面图片', N'ImageUrls', N'string', 220, NULL, CAST(0x0000A919010876BC AS DateTime), NULL, NULL, NULL, NULL, 9, NULL, NULL, 1, 1, 1, 0, 1, 0, 500, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 7030, NULL, NULL, NULL, NULL, NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (297, NULL, NULL, NULL, NULL, N'图片(大图)', N'BigImageUrls', N'string', 220, NULL, CAST(0x0000A919010876BC AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 500, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 7020, NULL, NULL, NULL, NULL, NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (298, NULL, NULL, NULL, NULL, N'Url类型', N'UrlType', N'int', 80, NULL, CAST(0x0000A919010876BC AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 7010, NULL, NULL, NULL, NULL, NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (299, NULL, NULL, NULL, NULL, N'发布人', N'Author', N'string', 120, NULL, CAST(0x0000A919010876BC AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 50, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 7000, NULL, NULL, 2, NULL, NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (300, NULL, NULL, NULL, NULL, N'发布日期', N'ReleaseDate', N'DateTime', 150, NULL, CAST(0x0000A919010876BC AS DateTime), NULL, NULL, NULL, NULL, NULL, N'datetime', NULL, 1, 0, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 6990, NULL, NULL, 3, N'datetime', NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (301, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, NULL, CAST(0x0000A919010876BC AS DateTime), NULL, NULL, N'enable', NULL, 4, N'drop', NULL, 1, 1, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 6980, NULL, NULL, 2, N'drop', NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (302, NULL, NULL, NULL, NULL, N'创建人Id', N'CreateID', N'int', 80, NULL, CAST(0x0000A919010876BC AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 6970, NULL, NULL, NULL, NULL, NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (303, NULL, NULL, NULL, NULL, N'发布人', N'Creator', N'string', 130, NULL, CAST(0x0000A919010876BC AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 6960, NULL, NULL, NULL, NULL, NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (304, NULL, NULL, NULL, NULL, N'发布时间', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000A919010876BC AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 6950, NULL, NULL, NULL, NULL, NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (305, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 80, NULL, CAST(0x0000A919010876BC AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 6940, NULL, NULL, NULL, NULL, NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (306, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, NULL, CAST(0x0000A919010876BC AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 6930, NULL, NULL, NULL, NULL, NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (307, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 150, NULL, CAST(0x0000A919010876BC AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 6920, NULL, NULL, 3, N'datetime', NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (308, NULL, NULL, NULL, NULL, N'主键ID', N'Id', N'int', 80, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AAAB009CE028 AS DateTime), 1, 6910, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (309, NULL, NULL, NULL, 12, N'标题', N'Title', N'string', 250, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 50, N'超级管理员', CAST(0x0000AAAB009CE028 AS DateTime), 1, 6900, NULL, NULL, 1, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (310, NULL, NULL, NULL, NULL, N'发布人', N'Author', N'string', 120, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 50, N'超级管理员', CAST(0x0000AAAB009CE028 AS DateTime), 1, 6890, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (311, 0, NULL, NULL, NULL, N'发布时间', N'ReleaseDate', N'DateTime', 150, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AAAB009CE028 AS DateTime), 1, 6880, NULL, NULL, 3, N'datetime', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (312, NULL, NULL, NULL, 12, N'封面图片', N'ImageUrl', N'string', 220, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, 9, NULL, NULL, 1, 1, 1, 0, 1, 0, 500, N'超级管理员', CAST(0x0000AAAB009CE028 AS DateTime), 1, 6870, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (313, NULL, NULL, NULL, NULL, N'图片(大图)', N'BigImageUrls', N'string', 220, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 500, N'超级管理员', CAST(0x0000AAAB009CE028 AS DateTime), 1, 6860, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (314, NULL, NULL, NULL, 12, N'新闻地址', N'DetailUrl', N'string', 90, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, 8, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, N'超级管理员', CAST(0x0000AAAB009CE028 AS DateTime), 1, 6850, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (315, NULL, NULL, NULL, NULL, N'浏览次数', N'ViewCount', N'int', 110, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, 2, 3, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAAB009CE028 AS DateTime), 1, 6840, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (316, NULL, NULL, NULL, NULL, N'新闻类型', N'NewsType', N'int', 110, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, N'news', 1, 3, N'drop', NULL, 1, 1, NULL, 0, 0, 0, 4, N'超级管理员', CAST(0x0000AAAB009CE028 AS DateTime), 1, 6830, NULL, NULL, 1, N'drop', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (317, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, N'enable', NULL, 7, N'drop', NULL, 1, 1, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000AAAB009CE028 AS DateTime), 1, 6820, NULL, NULL, 3, N'drop', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (318, NULL, NULL, NULL, NULL, N'创建人Id', N'CreateID', N'int', 80, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAAB009CE028 AS DateTime), 1, 6810, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (319, NULL, NULL, NULL, NULL, N'发布人', N'Creator', N'string', 130, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, 6, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, N'超级管理员', CAST(0x0000AAAB009CE028 AS DateTime), 1, 6800, NULL, NULL, 3, N'无', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (320, NULL, NULL, NULL, NULL, N'发布时间', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, 6, NULL, NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AAAB009CE028 AS DateTime), 1, 6790, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (321, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 80, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAAB009CE028 AS DateTime), 1, 6780, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (322, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AAAB009CE028 AS DateTime), 1, 6770, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (323, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 150, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, 7, NULL, NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AAAB009CE028 AS DateTime), 1, 6760, NULL, NULL, NULL, N'datetime', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (324, NULL, NULL, NULL, 12, N'新闻内容', N'Content', N'string', 300, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, 10000, N'超级管理员', CAST(0x0000AAAB009CE028 AS DateTime), 1, 6896, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (325, NULL, NULL, NULL, 12, N'信息正文', N'Content', N'string', 300, NULL, NULL, NULL, NULL, NULL, NULL, 15, N'textarea', NULL, 1, 0, NULL, NULL, 0, 0, 10000, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 7055, NULL, NULL, NULL, N'text', NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (328, NULL, NULL, NULL, NULL, N'主键ID', N'Id', N'int', 80, N'', CAST(0x0000A919010EEE98 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AACC013F91C4 AS DateTime), 1, 6710, N'', NULL, NULL, N'', NULL, N'App_PriceTendency', 29)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (329, NULL, NULL, NULL, NULL, N'价格', N'Price', N'decimal', 90, N'', CAST(0x0000A919010EEE98 AS DateTime), NULL, NULL, N'', NULL, 1, N'', NULL, 1, 1, NULL, 0, 0, 0, 9, N'超级管理员', CAST(0x0000AACC013F91C4 AS DateTime), 1, 6700, N'', NULL, 1, N'', NULL, N'App_PriceTendency', 29)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (330, NULL, NULL, NULL, NULL, N'日期', N'Date', N'DateTime', 150, N'', CAST(0x0000A919010EEE98 AS DateTime), NULL, NULL, N'', NULL, 1, N'date', NULL, 1, 1, NULL, 0, 0, 0, 3, N'超级管理员', CAST(0x0000AACC013F91C4 AS DateTime), 1, 6690, N'', NULL, 1, N'datetime', NULL, N'App_PriceTendency', 29)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (331, NULL, NULL, NULL, NULL, N'城市预留', N'City', N'string', 120, N'', CAST(0x0000A919010EEE98 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 0, 0, NULL, 0, 1, 0, 50, N'超级管理员', CAST(0x0000AACC013F91C4 AS DateTime), 1, 6680, N'', NULL, NULL, N'', NULL, N'App_PriceTendency', 29)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (332, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, N'', CAST(0x0000A919010EEE98 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000AACC013F91C4 AS DateTime), 1, 6670, N'', NULL, NULL, N'', NULL, N'App_PriceTendency', 29)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (333, NULL, NULL, NULL, NULL, N'创建人Id', N'CreateID', N'int', 80, N'', CAST(0x0000A919010EEE98 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACC013F91C4 AS DateTime), 1, 6660, N'', NULL, NULL, N'', NULL, N'App_PriceTendency', 29)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (334, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, N'', CAST(0x0000A919010EEE98 AS DateTime), NULL, NULL, N'', NULL, 2, N'', NULL, 1, 1, NULL, 0, 1, 1, 30, N'超级管理员', CAST(0x0000AACC013F91C4 AS DateTime), 1, 6650, N'', NULL, NULL, N'无', NULL, N'App_PriceTendency', 29)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (335, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A919010EEE98 AS DateTime), NULL, NULL, N'', NULL, 2, N'datetime', NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AACC013F91C4 AS DateTime), 1, 6640, N'', NULL, 1, N'datetime', NULL, N'App_PriceTendency', 29)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (336, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 80, N'', CAST(0x0000A919010EEE98 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACC013F91C4 AS DateTime), 1, 6630, N'', NULL, NULL, N'', NULL, N'App_PriceTendency', 29)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (337, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, N'', CAST(0x0000A919010EEE98 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AACC013F91C4 AS DateTime), 1, 6620, N'', NULL, NULL, N'', NULL, N'App_PriceTendency', 29)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (338, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 150, N'', CAST(0x0000A919010EEE98 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AACC013F91C4 AS DateTime), 1, 6610, N'', NULL, NULL, N'', NULL, N'App_PriceTendency', 29)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (339, NULL, NULL, NULL, NULL, N'主键ID', N'Id', N'int', 80, N'', CAST(0x0000A919010F917C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AACC013F8D14 AS DateTime), 1, 6600, N'', NULL, NULL, N'', NULL, N'App_Comment', 30)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (340, NULL, NULL, NULL, NULL, N'标题', N'Title', N'string', 350, N'', CAST(0x0000A919010F917C AS DateTime), NULL, NULL, N'', NULL, 1, N'无', NULL, 1, 1, NULL, 0, 0, 0, 50, N'超级管理员', CAST(0x0000AACC013F8D14 AS DateTime), 1, 6590, N'', NULL, 1, N'', NULL, N'App_Comment', 30)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (341, NULL, NULL, NULL, 12, N'评论内容', N'Content', N'string', 220, N'', CAST(0x0000A919010F917C AS DateTime), NULL, NULL, N'', NULL, 4, N'textarea', NULL, 1, 1, NULL, 0, 0, 0, 3000, N'超级管理员', CAST(0x0000AACC013F8D14 AS DateTime), 1, 6580, N'', NULL, NULL, N'', NULL, N'App_Comment', 30)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (342, NULL, NULL, NULL, NULL, N'发布时间', N'CommentDate', N'DateTime', 90, N'', CAST(0x0000A919010F917C AS DateTime), NULL, NULL, N'', NULL, 2, N'date', NULL, 1, 1, NULL, 0, 0, 0, 10, N'超级管理员', CAST(0x0000AACC013F8D14 AS DateTime), 1, 6570, N'', NULL, 1, N'date', NULL, N'App_Comment', 30)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (343, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, N'', CAST(0x0000A919010F917C AS DateTime), NULL, NULL, N'enable', NULL, 1, N'drop', NULL, 1, 1, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000AACC013F8D14 AS DateTime), 1, 6560, N'', NULL, 1, N'select', NULL, N'App_Comment', 30)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (344, NULL, NULL, NULL, NULL, N'创建人Id', N'CreateID', N'int', 80, N'', CAST(0x0000A919010F917C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACC013F8D14 AS DateTime), 1, 6550, N'', NULL, NULL, N'', NULL, N'App_Comment', 30)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (345, NULL, NULL, NULL, NULL, N'发布人', N'Creator', N'string', 130, N'', CAST(0x0000A919010F917C AS DateTime), NULL, NULL, N'', NULL, 2, N'', NULL, 1, 1, NULL, 0, 1, 1, 30, N'超级管理员', CAST(0x0000AACC013F8D14 AS DateTime), 1, 6578, N'', NULL, 2, N'', NULL, N'App_Comment', 30)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (346, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A919010F917C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AACC013F8D14 AS DateTime), 1, 6530, N'', NULL, 2, N'datetime', NULL, N'App_Comment', 30)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (347, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 80, N'', CAST(0x0000A919010F917C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACC013F8D14 AS DateTime), 1, 6520, N'', NULL, NULL, N'', NULL, N'App_Comment', 30)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (348, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, N'', CAST(0x0000A919010F917C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AACC013F8D14 AS DateTime), 1, 6510, N'', NULL, NULL, N'', NULL, N'App_Comment', 30)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (349, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 150, N'', CAST(0x0000A919010F917C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AACC013F8D14 AS DateTime), 1, 6500, N'', NULL, NULL, N'', NULL, N'App_Comment', 30)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (350, NULL, NULL, 1, NULL, N'主键ID', N'MeetingId', N'int', 80, N'', CAST(0x0000A919011074D4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AACC013F8990 AS DateTime), 1, 6490, N'', NULL, NULL, N'', NULL, N'App_Meeting', 31)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (351, NULL, NULL, 1, 12, N'会议标题', N'Title', N'string', 300, N'', CAST(0x0000A919011074D4 AS DateTime), NULL, NULL, N'', NULL, 1, N'', NULL, 1, 1, NULL, 0, 0, 0, 50, N'超级管理员', CAST(0x0000AACC013F8990 AS DateTime), 1, 6480, N'', NULL, 1, N'', NULL, N'App_Meeting', 31)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (352, NULL, NULL, 1, NULL, N'会议发布人', N'Author', N'string', 120, N'', CAST(0x0000A919011074D4 AS DateTime), NULL, NULL, N'', NULL, 5, N'', NULL, 1, 0, NULL, 0, 1, 1, 50, N'超级管理员', CAST(0x0000AACC013F8990 AS DateTime), 1, 6470, N'', NULL, NULL, N'', NULL, N'App_Meeting', 31)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (353, NULL, NULL, 1, NULL, N'会议发布日期(备用)', N'ReleaseDate', N'DateTime', 150, N'', CAST(0x0000A919011074D4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AACC013F8990 AS DateTime), 1, 6460, N'', NULL, NULL, N'无', NULL, N'App_Meeting', 31)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (354, NULL, NULL, NULL, NULL, N'', N'SmallImageUrl', N'string', 220, N'', CAST(0x0000A919011074D4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 0, 0, NULL, 0, 1, 0, 500, N'超级管理员', CAST(0x0000AACC013F8990 AS DateTime), 1, 6450, N'', NULL, NULL, N'', NULL, N'App_Meeting', 31)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (355, NULL, NULL, 1, 12, N'会议图片', N'ImageUrl', N'string', 220, N'', CAST(0x0000A919011074D4 AS DateTime), NULL, NULL, N'', NULL, 7, N'', NULL, 1, 1, 1, 0, 1, 0, 500, N'超级管理员', CAST(0x0000AACC013F8990 AS DateTime), 1, 6440, N'', NULL, NULL, N'', NULL, N'App_Meeting', 31)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (356, NULL, NULL, NULL, NULL, N'会议截止日期', N'MeetingEndDate', N'DateTime', 150, N'', CAST(0x0000A919011074D4 AS DateTime), NULL, NULL, N'', NULL, 2, N'datetime', NULL, 1, 1, NULL, 0, 0, 0, 8, N'超级管理员', CAST(0x0000AACC013F8990 AS DateTime), 1, 6430, N'', NULL, 2, N'datetime', NULL, N'App_Meeting', 31)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (357, NULL, NULL, NULL, NULL, N'会议地点', N'Location', N'string', 220, N'', CAST(0x0000A919011074D4 AS DateTime), NULL, NULL, N'', NULL, 2, N'', NULL, 1, 1, NULL, 0, 1, 0, 150, N'超级管理员', CAST(0x0000AACC013F8990 AS DateTime), 1, 6420, N'', NULL, NULL, N'', NULL, N'App_Meeting', 31)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (358, NULL, NULL, NULL, 12, N'会议介绍', N'Content', N'string', 220, N'', CAST(0x0000A919011074D4 AS DateTime), NULL, NULL, N'', NULL, 10, N'textarea', NULL, 1, 1, NULL, 0, 1, 0, 1500, N'超级管理员', CAST(0x0000AACC013F8990 AS DateTime), 1, 6410, N'', NULL, NULL, N'无', NULL, N'App_Meeting', 31)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (359, NULL, NULL, 1, NULL, N'会议是否载止', N'Expire', N'int', 120, N'', CAST(0x0000A919011074D4 AS DateTime), NULL, NULL, N'expire', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACC013F8990 AS DateTime), 1, 6400, N'', NULL, 1, N'drop', NULL, N'App_Meeting', 31)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (360, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, N'', CAST(0x0000A919011074D4 AS DateTime), NULL, NULL, N'enable', NULL, 3, N'drop', NULL, 1, 1, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000AACC013F8990 AS DateTime), 1, 6390, N'', NULL, 1, N'drop', NULL, N'App_Meeting', 31)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (361, NULL, NULL, NULL, NULL, N'创建人Id', N'CreateID', N'int', 80, N'', CAST(0x0000A919011074D4 AS DateTime), NULL, NULL, N'', NULL, 5, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACC013F8990 AS DateTime), 1, 6380, N'', NULL, NULL, N'', NULL, N'App_Meeting', 31)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (362, NULL, NULL, NULL, NULL, N'发布人', N'Creator', N'string', 130, N'', CAST(0x0000A919011074D4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AACC013F8990 AS DateTime), 1, 6370, N'', NULL, NULL, N'', NULL, N'App_Meeting', 31)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (363, NULL, NULL, NULL, NULL, N'会议发布日期', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A919011074D4 AS DateTime), NULL, NULL, N'', NULL, 4, N'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AACC013F8990 AS DateTime), 1, 6460, N'', NULL, 2, N'datetime', NULL, N'App_Meeting', 31)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (364, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 80, N'', CAST(0x0000A919011074D4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACC013F8990 AS DateTime), 1, 6350, N'', NULL, NULL, N'', NULL, N'App_Meeting', 31)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (365, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, N'', CAST(0x0000A919011074D4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AACC013F8990 AS DateTime), 1, 6340, N'', NULL, NULL, N'', NULL, N'App_Meeting', 31)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (366, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 150, N'', CAST(0x0000A919011074D4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AACC013F8990 AS DateTime), 1, 6330, N'', NULL, NULL, N'', NULL, N'App_Meeting', 31)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (367, NULL, NULL, NULL, NULL, N'主键ID', N'Id', N'int', 80, N'', CAST(0x0000A91901135974 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AACC013F84E0 AS DateTime), 1, 6320, N'', NULL, NULL, N'', NULL, N'App_CustomerJoin', 32)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (368, NULL, NULL, NULL, NULL, N'报名人姓名', N'Name', N'string', 120, N'', CAST(0x0000A91901135974 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 0, 0, 50, N'超级管理员', CAST(0x0000AACC013F84E0 AS DateTime), 1, 6310, N'', NULL, 1, N'', NULL, N'App_CustomerJoin', 32)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (369, NULL, NULL, NULL, NULL, N'电话', N'PhoneNo', N'string', 90, N'', CAST(0x0000A91901135974 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 0, 0, 15, N'超级管理员', CAST(0x0000AACC013F84E0 AS DateTime), 1, 6300, N'', NULL, 1, N'', NULL, N'App_CustomerJoin', 32)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (370, NULL, NULL, NULL, NULL, N'公司', N'Company', N'string', 220, N'', CAST(0x0000A91901135974 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 0, 0, 150, N'超级管理员', CAST(0x0000AACC013F84E0 AS DateTime), 1, 6290, N'', NULL, 1, N'', NULL, N'App_CustomerJoin', 32)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (371, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, N'', CAST(0x0000A91901135974 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000AACC013F84E0 AS DateTime), 1, 6280, N'', NULL, NULL, N'', NULL, N'App_CustomerJoin', 32)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (372, NULL, NULL, NULL, NULL, N'创建人Id', N'CreateID', N'int', 80, N'', CAST(0x0000A91901135974 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACC013F84E0 AS DateTime), 1, 6270, N'', NULL, NULL, N'', NULL, N'App_CustomerJoin', 32)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (373, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, N'', CAST(0x0000A91901135974 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AACC013F84E0 AS DateTime), 1, 6260, N'', NULL, NULL, N'', NULL, N'App_CustomerJoin', 32)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (374, NULL, NULL, NULL, NULL, N'申请时间', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A91901135974 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AACC013F84E0 AS DateTime), 1, 6250, N'', NULL, 2, N'datetime', NULL, N'App_CustomerJoin', 32)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (375, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 80, N'', CAST(0x0000A91901135974 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AACC013F84E0 AS DateTime), 1, 6240, N'', NULL, 2, N'datetime', NULL, N'App_CustomerJoin', 32)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (376, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, N'', CAST(0x0000A91901135974 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AACC013F84E0 AS DateTime), 1, 6230, N'', NULL, NULL, N'', NULL, N'App_CustomerJoin', 32)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (377, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 150, N'', CAST(0x0000A91901135974 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AACC013F84E0 AS DateTime), 1, 6220, N'', NULL, NULL, N'', NULL, N'App_CustomerJoin', 32)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (387, NULL, NULL, NULL, NULL, N'参加人Id', N'CustomerId', N'int', 80, N'', CAST(0x0000A91901164C24 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A92301203B1C AS DateTime), NULL, 6120, N'', NULL, NULL, N'', NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (388, NULL, NULL, NULL, NULL, N'参加人', N'CustomerName', N'string', 90, N'', CAST(0x0000A91901164C24 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 50, N'', CAST(0x0000A92301203B1C AS DateTime), NULL, 6110, N'', NULL, 1, N'', NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (389, NULL, NULL, NULL, NULL, N'参加时间', N'JoinDate', N'DateTime', 150, N'', CAST(0x0000A91901164C24 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A92301203B1C AS DateTime), NULL, 6100, N'', NULL, 2, N'datetime', NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (390, NULL, NULL, NULL, NULL, N'', N'MeetingId', N'int', 80, N'', CAST(0x0000A91901164C24 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 0, 4, N'', CAST(0x0000A92301203B1C AS DateTime), NULL, 6090, N'', NULL, NULL, N'', NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (391, NULL, NULL, NULL, NULL, N'会议标题', N'Title', N'string', 120, N'', CAST(0x0000A91901164C24 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 50, N'', CAST(0x0000A92301203B1C AS DateTime), NULL, 6080, N'', NULL, 1, N'', NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (392, NULL, NULL, NULL, NULL, N'会议发布人', N'Author', N'string', 120, N'', CAST(0x0000A91901164C24 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 50, N'', CAST(0x0000A92301203B1C AS DateTime), NULL, 6070, N'', NULL, 1, N'', NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (393, NULL, NULL, NULL, NULL, N'会议发布日期', N'ReleaseDate', N'DateTime', 150, N'', CAST(0x0000A91901164C24 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A92301203B1C AS DateTime), NULL, 6060, N'', NULL, 2, N'datetime', NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (394, NULL, NULL, NULL, NULL, N'', N'SmallImageUrl', N'string', 220, N'', CAST(0x0000A91901164C24 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 0, 0, NULL, 0, 1, 0, 500, N'', CAST(0x0000A92301203B1C AS DateTime), NULL, 6050, N'', NULL, NULL, N'', NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (395, NULL, NULL, NULL, NULL, N'会议图片', N'ImageUrl', N'string', 220, N'', CAST(0x0000A91901164C24 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 500, N'', CAST(0x0000A92301203B1C AS DateTime), NULL, 6040, N'', NULL, NULL, N'', NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (396, NULL, NULL, NULL, NULL, N'会议截止日期', N'MeetingEndDate', N'DateTime', 150, N'', CAST(0x0000A91901164C24 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A92301203B1C AS DateTime), NULL, 6030, N'', NULL, NULL, N'', NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (397, NULL, NULL, NULL, NULL, N'会议地点', N'Location', N'string', 220, N'', CAST(0x0000A91901164C24 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 150, N'', CAST(0x0000A92301203B1C AS DateTime), NULL, 6020, N'', NULL, NULL, N'', NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (398, NULL, NULL, NULL, NULL, N'会议介绍', N'Content', N'string', 220, N'', CAST(0x0000A91901164C24 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 1500, N'', CAST(0x0000A92301203B1C AS DateTime), NULL, 6010, N'', NULL, NULL, N'', NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (399, NULL, NULL, NULL, NULL, N'会议是否载止', N'Expire', N'int', 80, N'', CAST(0x0000A91901164C24 AS DateTime), NULL, NULL, N'expire', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'', CAST(0x0000A92301203B1C AS DateTime), NULL, 6000, N'', NULL, 2, N'', NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (400, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, N'', CAST(0x0000A91901164C24 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 1, N'', CAST(0x0000A92301203B1C AS DateTime), NULL, 5990, N'', NULL, NULL, N'', NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (401, NULL, NULL, NULL, NULL, N'创建人Id', N'CreateID', N'int', 80, N'', CAST(0x0000A91901164C24 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A92301203B1C AS DateTime), NULL, 5980, N'', NULL, NULL, N'', NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (402, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, N'', CAST(0x0000A91901164C24 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A92301203B1C AS DateTime), NULL, 5970, N'', NULL, NULL, N'', NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (403, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A91901164C24 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A92301203B1C AS DateTime), NULL, 5960, N'', NULL, NULL, N'', NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (404, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 80, N'', CAST(0x0000A91901164C24 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 0, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A92301203B1C AS DateTime), NULL, 5950, N'', NULL, NULL, N'', NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (405, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, N'', CAST(0x0000A91901164C24 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 0, 0, NULL, 0, 1, 0, 30, N'', CAST(0x0000A92301203B1C AS DateTime), NULL, 5940, N'', NULL, NULL, N'', NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (406, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 150, N'', CAST(0x0000A91901164C24 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 0, 0, NULL, 0, 1, 0, 8, N'', CAST(0x0000A92301203B1C AS DateTime), NULL, 5930, N'', NULL, NULL, N'', NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (407, NULL, NULL, NULL, NULL, N'主键ID', N'Id', N'int', 80, N'', CAST(0x0000A9190117C900 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'', CAST(0x0000A93E009F6F3C AS DateTime), NULL, 5920, N'', NULL, NULL, N'', NULL, N'Sys_Message', 36)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (408, NULL, NULL, NULL, 12, N'标题', N'Title', N'string', 300, N'', CAST(0x0000A9190117C900 AS DateTime), NULL, NULL, N'', NULL, 1, N'', NULL, 1, 1, NULL, 0, 0, 0, 50, N'', CAST(0x0000A93E009F6F3C AS DateTime), NULL, 5910, N'', NULL, 1, N'', NULL, N'Sys_Message', 36)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (409, NULL, NULL, NULL, 12, N'推送内容', N'Content', N'string', 400, N'', CAST(0x0000A9190117C900 AS DateTime), NULL, NULL, N'', NULL, 5, N'textarea', NULL, 1, 1, NULL, 0, 0, 0, 500, N'', CAST(0x0000A93E009F6F3C AS DateTime), NULL, 5900, N'', NULL, NULL, N'textarea', NULL, N'Sys_Message', 36)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (410, NULL, NULL, NULL, NULL, N'推送人', N'Author', N'string', 120, N'', CAST(0x0000A9190117C900 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 50, N'', CAST(0x0000A93E009F6F3C AS DateTime), NULL, 5890, N'', NULL, NULL, N'无', NULL, N'Sys_Message', 36)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (411, NULL, NULL, NULL, NULL, N'最后推送时间', N'ReleaseDate', N'DateTime', 150, N'', CAST(0x0000A9190117C900 AS DateTime), NULL, NULL, N'', NULL, 2, N'', NULL, 1, 1, NULL, 0, 1, 1, 8, N'', CAST(0x0000A93E009F6F3C AS DateTime), NULL, 5880, N'', NULL, 1, N'datetime', NULL, N'Sys_Message', 36)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (412, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, N'', CAST(0x0000A9190117C900 AS DateTime), NULL, NULL, N'enable', NULL, 2, N'drop', NULL, 1, 1, NULL, 0, 1, 0, 1, N'', CAST(0x0000A93E009F6F3C AS DateTime), NULL, 5870, N'', NULL, 1, N'select', NULL, N'Sys_Message', 36)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (413, NULL, NULL, NULL, NULL, N'创建人Id', N'CreateID', N'int', 80, N'', CAST(0x0000A9190117C900 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A93E009F6F3C AS DateTime), NULL, 5860, N'', NULL, NULL, N'', NULL, N'Sys_Message', 36)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (414, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, N'', CAST(0x0000A9190117C900 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A93E009F6F3C AS DateTime), NULL, 5850, N'', NULL, NULL, N'', NULL, N'Sys_Message', 36)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (415, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A9190117C900 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A93E009F6F3C AS DateTime), NULL, 5840, N'', NULL, NULL, N'', NULL, N'Sys_Message', 36)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (416, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 80, N'', CAST(0x0000A9190117C900 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A93E009F6F3C AS DateTime), NULL, 5830, N'', NULL, NULL, N'', NULL, N'Sys_Message', 36)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (417, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, N'', CAST(0x0000A9190117C900 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 30, N'', CAST(0x0000A93E009F6F3C AS DateTime), NULL, 5820, N'', NULL, NULL, N'', NULL, N'Sys_Message', 36)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (418, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 150, N'', CAST(0x0000A9190117C900 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 8, N'', CAST(0x0000A93E009F6F3C AS DateTime), NULL, 5810, N'', NULL, NULL, N'', NULL, N'Sys_Message', 36)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (419, NULL, NULL, NULL, NULL, N'主键ID', N'Id', N'int', 80, N'', CAST(0x0000A919011F65D4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'', CAST(0x0000A92700C16560 AS DateTime), NULL, 5800, N'', NULL, NULL, N'', NULL, N'App_Feedback', 37)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (420, NULL, NULL, NULL, NULL, N'反馈内容', N'Content', N'string', 220, N'', CAST(0x0000A919011F65D4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 0, 0, 500, N'', CAST(0x0000A92700C16560 AS DateTime), NULL, 5790, N'', NULL, 1, N'', NULL, N'App_Feedback', 37)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (421, NULL, NULL, NULL, NULL, N'电话', N'PhoneNo', N'string', 90, N'', CAST(0x0000A919011F65D4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 0, 0, 11, N'', CAST(0x0000A92700C16560 AS DateTime), NULL, 5780, N'', NULL, NULL, N'', NULL, N'App_Feedback', 37)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (422, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 80, N'', CAST(0x0000A919011F65D4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 0, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A92700C16560 AS DateTime), NULL, 5770, N'', NULL, NULL, N'', NULL, N'App_Feedback', 37)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (423, NULL, NULL, NULL, NULL, N'创建人Id', N'CreateID', N'int', 80, N'', CAST(0x0000A919011F65D4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A92700C16560 AS DateTime), NULL, 5760, N'', NULL, NULL, N'', NULL, N'App_Feedback', 37)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (424, NULL, NULL, NULL, NULL, N'反馈人', N'Creator', N'string', 130, N'', CAST(0x0000A919011F65D4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A92700C16560 AS DateTime), NULL, 5750, N'', NULL, 1, N'', NULL, N'App_Feedback', 37)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (425, NULL, NULL, NULL, NULL, N'反馈时间', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A919011F65D4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A92700C16560 AS DateTime), NULL, 5740, N'', NULL, 1, N'datetime', NULL, N'App_Feedback', 37)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (426, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 80, N'', CAST(0x0000A919011F65D4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A92700C16560 AS DateTime), NULL, 5730, N'', NULL, NULL, N'', NULL, N'App_Feedback', 37)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (427, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, N'', CAST(0x0000A919011F65D4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A92700C16560 AS DateTime), NULL, 5720, N'', NULL, NULL, N'', NULL, N'App_Feedback', 37)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (428, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 150, N'', CAST(0x0000A919011F65D4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A92700C16560 AS DateTime), NULL, 5710, N'', NULL, NULL, N'', NULL, N'App_Feedback', 37)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (429, 1, 0, NULL, NULL, N'手机号', N'PhoneNo', N'string', 150, N'', NULL, NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, NULL, NULL, 0, 11, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7760, N'', NULL, 3, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (431, NULL, NULL, NULL, NULL, N'Token', N'Token', N'string', 180, N'', NULL, NULL, NULL, N'', NULL, 4, N'', NULL, 1, 1, NULL, NULL, 1, 0, 300, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7810, N'', NULL, 2, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (433, 1, 0, NULL, NULL, N'密码', N'UserPwd', N'string', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, 0, 30, N'超级管理员', CAST(0x0000AA45010DE494 AS DateTime), 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Sys_PinRecord', 7)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (436, NULL, NULL, NULL, NULL, N'', N'ProvinceId', N'int', 80, N'', CAST(0x0000A91F00DCD91C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 0, 4, N'超级管理员', CAST(0x0000AAAF009BAE4C AS DateTime), 1, 5630, N'', NULL, NULL, N'', NULL, N'vProvinceCity', 38)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (437, NULL, NULL, NULL, NULL, N'省编号', N'ProvinceCode', N'string', 90, N'', CAST(0x0000A91F00DCD91C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 0, 0, 20, N'超级管理员', CAST(0x0000AAAF009BAE4C AS DateTime), 1, 5620, N'', NULL, NULL, N'无', NULL, N'vProvinceCity', 38)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (438, NULL, NULL, NULL, NULL, N'省', N'ProvinceName', N'string', 300, N'', CAST(0x0000A91F00DCD91C AS DateTime), NULL, NULL, N'pro', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 0, 0, 30, N'超级管理员', CAST(0x0000AAAF009BAE4C AS DateTime), 1, 5610, N'', NULL, 1, N'selectList', NULL, N'vProvinceCity', 38)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (439, NULL, NULL, NULL, NULL, N'市编号', N'CityCode', N'string', 90, N'', CAST(0x0000A91F00DCD91C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 0, 0, 20, N'超级管理员', CAST(0x0000AAAF009BAE4C AS DateTime), 1, 5600, N'', NULL, NULL, N'', NULL, N'vProvinceCity', 38)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (440, NULL, NULL, NULL, NULL, N'市', N'CityName', N'string', 250, N'', CAST(0x0000A91F00DCD91C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 0, 0, 30, N'超级管理员', CAST(0x0000AAAF009BAE4C AS DateTime), 1, 5590, N'', NULL, NULL, N'', NULL, N'vProvinceCity', 38)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (441, NULL, NULL, NULL, NULL, N'图片像数', N'ImageSize', N'int', 120, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 9, N'超级管理员', CAST(0x0000AA3F00BC0598 AS DateTime), 1, 8645, NULL, NULL, NULL, NULL, NULL, N'App_HomeHeadImages', 14)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (444, NULL, NULL, NULL, NULL, N'轮播显示排序', N'OrderNo', N'int', 140, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 8, N'超级管理员', CAST(0x0000AA3F00BC0598 AS DateTime), 1, 8668, NULL, NULL, NULL, NULL, NULL, N'App_HomeHeadImages', 14)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (446, NULL, NULL, NULL, 12, N'是否推荐价格', N'IsTop', N'int', 90, NULL, NULL, NULL, NULL, N'top', NULL, 30, N'select', NULL, 1, 1, NULL, NULL, 0, 0, NULL, N'超级管理员', CAST(0x0000AACD00A5D6B0 AS DateTime), 1, 8515, NULL, NULL, 2, N'drop', NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (457, NULL, NULL, NULL, NULL, N'是否买入', N'TransactionType', N'int', 120, NULL, NULL, NULL, NULL, N'cq', NULL, 2, N'select', NULL, 1, 1, NULL, NULL, NULL, 0, 8, N'超级管理员', CAST(0x0000AACC01235478 AS DateTime), 1, 8021, NULL, NULL, 1, N'select', NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (458, NULL, NULL, NULL, NULL, N'专家Id', N'ExpertId', N'int', 80, N'', CAST(0x0000A91901029ABC AS DateTime), NULL, N'', N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A9270100DFC4 AS DateTime), NULL, 7700, N'', NULL, NULL, N'', NULL, N'App_ExpertQuestion', 22)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (459, NULL, NULL, NULL, NULL, N'回答数量', N'ReplyQty', N'int', 80, N'', CAST(0x0000A9190105A860 AS DateTime), NULL, N'', N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7370, N'', NULL, NULL, N'', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (460, NULL, NULL, NULL, NULL, N'提问人头像', N'HeadImageUrl', N'string', 160, N'', NULL, NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, NULL, NULL, 0, 500, N'', CAST(0x0000A9270100D2E0 AS DateTime), NULL, 7290, N'', NULL, NULL, N'', NULL, N'App_PublicQuestion', 23)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (461, 1, 0, NULL, NULL, N'导航分类', N'ClassifyId', N'int', 150, NULL, NULL, NULL, NULL, N'nav', NULL, 2, N'drop', NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 7085, NULL, NULL, 1, N'dropList', NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (462, NULL, NULL, NULL, NULL, N'11', N'PartById', N'long', 80, NULL, CAST(0x0000A9210123F888 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, 0, 8, N'超级管理员', CAST(0x0000A9E600D6B0F0 AS DateTime), 1, 5370, NULL, NULL, NULL, NULL, NULL, N'vApp_TechnicalClassifyPartBy', 40)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (463, NULL, NULL, NULL, NULL, N'测试id', N'Id', N'int', 80, NULL, CAST(0x0000A9210123F888 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 4, N'超级管理员', CAST(0x0000A9E600D6B0F0 AS DateTime), 1, 5360, NULL, NULL, NULL, NULL, NULL, N'vApp_TechnicalClassifyPartBy', 40)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (464, NULL, NULL, NULL, NULL, NULL, N'ClassifyId', N'int', 80, NULL, CAST(0x0000A9210123F888 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000A9E600D6B0F0 AS DateTime), 1, 5350, NULL, NULL, NULL, NULL, NULL, N'vApp_TechnicalClassifyPartBy', 40)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (465, NULL, NULL, NULL, NULL, NULL, N'SecondClassifyId', N'int', 80, NULL, CAST(0x0000A9210123F888 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000A9E600D6B0F0 AS DateTime), 1, 5340, NULL, NULL, NULL, NULL, NULL, N'vApp_TechnicalClassifyPartBy', 40)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (466, NULL, NULL, NULL, NULL, NULL, N'SecondClassifyTitle', N'string', 90, NULL, CAST(0x0000A9210123F888 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20, N'超级管理员', CAST(0x0000A9E600D6B0F0 AS DateTime), 1, 5330, NULL, NULL, NULL, NULL, NULL, N'vApp_TechnicalClassifyPartBy', 40)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (467, NULL, NULL, NULL, NULL, NULL, N'Title', N'string', 120, NULL, CAST(0x0000A9210123F888 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, N'超级管理员', CAST(0x0000A9E600D6B0F0 AS DateTime), 1, 5320, NULL, NULL, NULL, NULL, NULL, N'vApp_TechnicalClassifyPartBy', 40)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (468, NULL, NULL, NULL, NULL, NULL, N'ViewCount', N'int', 80, NULL, CAST(0x0000A9210123F888 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000A9E600D6B0F0 AS DateTime), 1, 5310, NULL, NULL, NULL, NULL, NULL, N'vApp_TechnicalClassifyPartBy', 40)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (469, NULL, NULL, NULL, NULL, NULL, N'DetailUrl', N'string', 90, NULL, CAST(0x0000A9210123F888 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, N'超级管理员', CAST(0x0000A9E600D6B0F0 AS DateTime), 1, 5300, NULL, NULL, NULL, NULL, NULL, N'vApp_TechnicalClassifyPartBy', 40)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (470, NULL, NULL, NULL, NULL, NULL, N'ImageUrls', N'string', 220, NULL, CAST(0x0000A9210123F888 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, N'超级管理员', CAST(0x0000A9E600D6B0F0 AS DateTime), 1, 5290, NULL, NULL, NULL, NULL, NULL, N'vApp_TechnicalClassifyPartBy', 40)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (471, NULL, NULL, NULL, NULL, NULL, N'UrlType', N'int', 80, NULL, CAST(0x0000A9210123F888 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000A9E600D6B0F0 AS DateTime), 1, 5280, NULL, NULL, NULL, NULL, NULL, N'vApp_TechnicalClassifyPartBy', 40)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (472, NULL, NULL, NULL, NULL, NULL, N'Author', N'string', 120, NULL, CAST(0x0000A9210123F888 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, N'超级管理员', CAST(0x0000A9E600D6B0F0 AS DateTime), 1, 5270, NULL, NULL, NULL, NULL, NULL, N'vApp_TechnicalClassifyPartBy', 40)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (473, NULL, NULL, NULL, NULL, NULL, N'ReleaseDate', N'DateTime', 150, NULL, CAST(0x0000A9210123F888 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000A9E600D6B0F0 AS DateTime), 1, 5260, NULL, NULL, NULL, NULL, NULL, N'vApp_TechnicalClassifyPartBy', 40)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (474, NULL, NULL, NULL, NULL, N'推荐排序', N'OrderNo', N'int', 120, NULL, NULL, NULL, NULL, NULL, NULL, 3, N'无', NULL, 1, 1, NULL, NULL, 1, 0, 8, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 6982, NULL, NULL, NULL, NULL, NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (486, NULL, NULL, NULL, NULL, N'查询日期', N'QueryCommentDate', N'string', 100, N'', NULL, NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, NULL, NULL, 0, 7, N'超级管理员', CAST(0x0000AACC013F8D14 AS DateTime), 1, NULL, N'', NULL, NULL, N'', NULL, N'App_Comment', 30)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (487, NULL, NULL, NULL, NULL, N'显示排序', N'OrderNo', N'int', 100, N'', NULL, NULL, NULL, N'', NULL, 4, N'', NULL, 1, 1, NULL, NULL, 1, 0, 8, N'超级管理员', CAST(0x0000AACC013F8990 AS DateTime), 1, 6390, N'', NULL, NULL, N'', NULL, N'App_Meeting', 31)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (488, NULL, NULL, NULL, NULL, N'会议开始日期', N'MeetingDate', N'DateTime', 150, N'', NULL, NULL, NULL, N'', NULL, 3, N'datetime', NULL, 1, 1, NULL, NULL, 0, 0, 8, N'超级管理员', CAST(0x0000AACC013F8990 AS DateTime), 1, 6408, N'', NULL, 2, N'datetime', NULL, N'App_Meeting', 31)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (490, NULL, NULL, NULL, NULL, N'会议Id', N'MeetingId', N'int', 80, N'', CAST(0x0000A923011D95C4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'', CAST(0x0000A923011F3244 AS DateTime), NULL, 5090, N'', NULL, NULL, N'', NULL, N'App_MyJoinMeeting', 42)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (491, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, N'', CAST(0x0000A923011D95C4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 1, N'', CAST(0x0000A923011F3244 AS DateTime), NULL, 5080, N'', NULL, NULL, N'', NULL, N'App_MyJoinMeeting', 42)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (492, NULL, NULL, NULL, NULL, N'创建人Id', N'CreateID', N'int', 80, N'', CAST(0x0000A923011D95C4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A923011F3244 AS DateTime), NULL, 5070, N'', NULL, NULL, N'', NULL, N'App_MyJoinMeeting', 42)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (493, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, N'', CAST(0x0000A923011D95C4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A923011F3244 AS DateTime), NULL, 5060, N'', NULL, NULL, N'', NULL, N'App_MyJoinMeeting', 42)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (494, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A923011D95C4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A923011F3244 AS DateTime), NULL, 5050, N'', NULL, NULL, N'', NULL, N'App_MyJoinMeeting', 42)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (495, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 80, N'', CAST(0x0000A923011D95C4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A923011F3244 AS DateTime), NULL, 5040, N'', NULL, NULL, N'', NULL, N'App_MyJoinMeeting', 42)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (496, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, N'', CAST(0x0000A923011D95C4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A923011F3244 AS DateTime), NULL, 5030, N'', NULL, NULL, N'', NULL, N'App_MyJoinMeeting', 42)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (497, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 150, N'', CAST(0x0000A923011D95C4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A923011F3244 AS DateTime), NULL, 5020, N'', NULL, NULL, N'', NULL, N'App_MyJoinMeeting', 42)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (498, NULL, NULL, NULL, NULL, N'公司', N'Company', N'string', 300, N'', NULL, NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, NULL, 0, 0, 250, N'', CAST(0x0000A923011F3244 AS DateTime), NULL, 5080, N'', NULL, NULL, N'', NULL, N'App_MyJoinMeeting', 42)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (499, NULL, NULL, NULL, NULL, N'主键ID', N'Id', N'int', 80, N'', CAST(0x0000A923011D95C4 AS DateTime), NULL, N'', N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'', CAST(0x0000A923011F3244 AS DateTime), NULL, 5100, N'', NULL, NULL, N'', NULL, N'App_MyJoinMeeting', 42)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (500, NULL, NULL, NULL, NULL, N'会议参加人', N'Name', N'string', 180, N'', NULL, NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, NULL, 0, 0, 50, N'', CAST(0x0000A923011F3244 AS DateTime), NULL, 5080, N'', NULL, NULL, N'', NULL, N'App_MyJoinMeeting', 42)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (501, NULL, NULL, NULL, NULL, N'电话', N'PhoneNo', N'string', 150, N'', NULL, NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, NULL, 0, 0, 11, N'', CAST(0x0000A923011F3244 AS DateTime), NULL, 5080, N'', NULL, NULL, N'', NULL, N'App_MyJoinMeeting', 42)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (502, NULL, NULL, NULL, NULL, N'参加人数', N'Total', N'int', 100, N'', NULL, NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, NULL, 0, 0, 8, N'', CAST(0x0000A923011F3244 AS DateTime), NULL, 5080, N'', NULL, NULL, N'', NULL, N'App_MyJoinMeeting', 42)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (503, NULL, NULL, NULL, NULL, N'公司', N'Company', N'string', 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 250, NULL, NULL, NULL, 6100, NULL, NULL, NULL, NULL, NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (504, NULL, NULL, NULL, NULL, N'电话', N'PhoneNo', N'string', 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 11, NULL, NULL, NULL, 6100, NULL, NULL, NULL, NULL, NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (505, NULL, NULL, NULL, NULL, N'参加人数', N'Total', N'int', 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, 6100, NULL, NULL, NULL, NULL, NULL, N'vMyJoinMeeting', 35)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (506, NULL, NULL, NULL, NULL, N'性别', N'Gender', N'bool', 100, N'', NULL, NULL, NULL, N'gender', NULL, 4, N'drop', NULL, 1, 1, NULL, NULL, 1, 0, 8, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7843, N'', NULL, 1, N'drop', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (507, NULL, NULL, NULL, NULL, N'主键ID', N'ReplyId', N'int', 80, N'', CAST(0x0000A926011D0DD4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AAA10130D1FC AS DateTime), 1, 4920, N'', NULL, NULL, N'', NULL, N'App_QuestionReply', 43)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (508, NULL, NULL, NULL, NULL, N'问题ID', N'QuestionId', N'int', 80, N'', CAST(0x0000A926011D0DD4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAA10130D1FC AS DateTime), 1, 4910, N'', NULL, NULL, N'', NULL, N'App_QuestionReply', 43)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (509, NULL, NULL, NULL, NULL, N'回复类型', N'QuestionType', N'int', 80, N'', CAST(0x0000A926011D0DD4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAA10130D1FC AS DateTime), 1, 4900, N'', NULL, NULL, N'', NULL, N'App_QuestionReply', 43)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (510, NULL, NULL, NULL, NULL, N'回复id', N'ReplierId', N'int', 80, N'', CAST(0x0000A926011D0DD4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAA10130D1FC AS DateTime), 1, 4890, N'', NULL, NULL, N'', NULL, N'App_QuestionReply', 43)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (511, NULL, NULL, NULL, NULL, N'回复人', N'Replier', N'string', 120, N'', CAST(0x0000A926011D0DD4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 50, N'超级管理员', CAST(0x0000AAA10130D1FC AS DateTime), 1, 4880, N'', NULL, NULL, N'', NULL, N'App_QuestionReply', 43)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (512, NULL, NULL, NULL, NULL, N'回复日期', N'ReplyDate', N'DateTime', 150, N'', CAST(0x0000A926011D0DD4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AAA10130D1FC AS DateTime), 1, 4870, N'', NULL, NULL, N'', NULL, N'App_QuestionReply', 43)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (513, NULL, NULL, NULL, NULL, N'回复内容', N'ReplyContent', N'string', 220, N'', CAST(0x0000A926011D0DD4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 500, N'超级管理员', CAST(0x0000AAA10130D1FC AS DateTime), 1, 4860, N'', NULL, NULL, N'', NULL, N'App_QuestionReply', 43)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (514, NULL, NULL, NULL, NULL, N'被回复人ID', N'ReplyToId', N'int', 80, N'', CAST(0x0000A926011D0DD4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAA10130D1FC AS DateTime), 1, 4850, N'', NULL, NULL, N'', NULL, N'App_QuestionReply', 43)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (515, NULL, NULL, NULL, NULL, N'被回复人', N'ReplyTo', N'string', 120, N'', CAST(0x0000A926011D0DD4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 50, N'超级管理员', CAST(0x0000AAA10130D1FC AS DateTime), 1, 4840, N'', NULL, NULL, N'', NULL, N'App_QuestionReply', 43)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (516, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, N'', CAST(0x0000A926011D0DD4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000AAA10130D1FC AS DateTime), 1, 4830, N'', NULL, NULL, N'', NULL, N'App_QuestionReply', 43)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (518, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, N'', CAST(0x0000A926011D0DD4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AAA10130D1FC AS DateTime), 1, 4810, N'', NULL, NULL, N'', NULL, N'App_QuestionReply', 43)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (519, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A926011D0DD4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AAA10130D1FC AS DateTime), 1, 4800, N'', NULL, NULL, N'', NULL, N'App_QuestionReply', 43)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (520, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 80, N'', CAST(0x0000A926011D0DD4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AAA10130D1FC AS DateTime), 1, 4790, N'', NULL, NULL, N'', NULL, N'App_QuestionReply', 43)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (521, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, N'', CAST(0x0000A926011D0DD4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AAA10130D1FC AS DateTime), 1, 4780, N'', NULL, NULL, N'', NULL, N'App_QuestionReply', 43)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (522, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 150, N'', CAST(0x0000A926011D0DD4 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AAA10130D1FC AS DateTime), 1, 4770, N'', NULL, NULL, N'', NULL, N'App_QuestionReply', 43)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (523, NULL, NULL, NULL, NULL, N'电话', N'PhoneNo', N'string', 150, N'', NULL, NULL, NULL, N'', NULL, 6, N'', NULL, 1, 1, NULL, NULL, 1, 0, 11, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7900, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (524, NULL, NULL, NULL, NULL, N'', N'QuestionId', N'int', 80, N'', CAST(0x0000A92700B58EE8 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 1, 0, 0, 4, N'', CAST(0x0000A92700B5A8B0 AS DateTime), NULL, 4750, N'', NULL, NULL, N'', NULL, N'vApp_PublicQuestionReply', 47)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (525, NULL, NULL, NULL, NULL, N'', N'ReplierId', N'int', 80, N'', CAST(0x0000A92700B58EE8 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'', CAST(0x0000A92700B5A8B0 AS DateTime), NULL, 4740, N'', NULL, NULL, N'', NULL, N'vApp_PublicQuestionReply', 47)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (526, NULL, NULL, NULL, NULL, N'', N'QuestionType', N'string', 90, N'', CAST(0x0000A92700B58EE8 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 0, 0, 3, N'', CAST(0x0000A92700B5A8B0 AS DateTime), NULL, 4730, N'', NULL, NULL, N'', NULL, N'vApp_PublicQuestionReply', 47)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (527, NULL, NULL, NULL, NULL, N'', N'Title', N'string', 90, N'', CAST(0x0000A92700B58EE8 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 60, N'', CAST(0x0000A92700B5A8B0 AS DateTime), NULL, 4720, N'', NULL, NULL, N'', NULL, N'vApp_PublicQuestionReply', 47)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (528, NULL, NULL, NULL, NULL, N'', N'Replier', N'string', 120, N'', CAST(0x0000A92700B58EE8 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 100, N'', CAST(0x0000A92700B5A8B0 AS DateTime), NULL, 4710, N'', NULL, NULL, N'', NULL, N'vApp_PublicQuestionReply', 47)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (529, NULL, NULL, NULL, NULL, N'', N'ReplyDate', N'DateTime', 150, N'', CAST(0x0000A92700B58EE8 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A92700B5A8B0 AS DateTime), NULL, 4700, N'', NULL, NULL, N'', NULL, N'vApp_PublicQuestionReply', 47)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (530, NULL, NULL, NULL, NULL, N'', N'ReplyContent', N'string', 220, N'', CAST(0x0000A92700B58EE8 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 1000, N'', CAST(0x0000A92700B5A8B0 AS DateTime), NULL, 4690, N'', NULL, NULL, N'', NULL, N'vApp_PublicQuestionReply', 47)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (531, NULL, NULL, NULL, NULL, N'', N'Creator', N'string', 130, N'', CAST(0x0000A92700B58EE8 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 60, N'', CAST(0x0000A92700B5A8B0 AS DateTime), NULL, 4680, N'', NULL, NULL, N'', NULL, N'vApp_PublicQuestionReply', 47)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (532, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, N'', CAST(0x0000A92700B58EE8 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A92700B5A8B0 AS DateTime), NULL, 4670, N'', NULL, NULL, N'', NULL, N'vApp_PublicQuestionReply', 47)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (533, NULL, NULL, NULL, NULL, N'', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A92700B58EE8 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A92700B5A8B0 AS DateTime), NULL, 4660, N'', NULL, NULL, N'', NULL, N'vApp_PublicQuestionReply', 47)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (534, NULL, NULL, NULL, NULL, N'', N'ReplyToId', N'int', 80, N'', CAST(0x0000A92700B58EE8 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'', CAST(0x0000A92700B5A8B0 AS DateTime), NULL, 4650, N'', NULL, NULL, N'', NULL, N'vApp_PublicQuestionReply', 47)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (535, NULL, NULL, NULL, NULL, N'', N'ReplyTo', N'string', 120, N'', CAST(0x0000A92700B58EE8 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 100, N'', CAST(0x0000A92700B5A8B0 AS DateTime), NULL, 4640, N'', NULL, NULL, N'', NULL, N'vApp_PublicQuestionReply', 47)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (536, NULL, NULL, NULL, NULL, N'', N'HeadImageUrl', N'string', 90, N'', CAST(0x0000A92700B58EE8 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 0, 0, 1, N'', CAST(0x0000A92700B5A8B0 AS DateTime), NULL, 4630, N'', NULL, NULL, N'', NULL, N'vApp_PublicQuestionReply', 47)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (537, NULL, NULL, NULL, NULL, N'', N'QuestionId', N'int', 80, N'', CAST(0x0000A92700B69C70 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 1, 0, 0, 4, N'', CAST(0x0000A938011391B4 AS DateTime), NULL, 4620, N'', NULL, NULL, N'', NULL, N'vApp_QuestionReplyMe', 48)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (538, NULL, NULL, NULL, NULL, N'', N'ReplierId', N'int', 80, N'', CAST(0x0000A92700B69C70 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'', CAST(0x0000A938011391B4 AS DateTime), NULL, 4610, N'', NULL, NULL, N'', NULL, N'vApp_QuestionReplyMe', 48)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (539, NULL, NULL, NULL, NULL, N'', N'QuestionType', N'string', 90, N'', CAST(0x0000A92700B69C70 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 3, N'', CAST(0x0000A938011391B4 AS DateTime), NULL, 4600, N'', NULL, NULL, N'', NULL, N'vApp_QuestionReplyMe', 48)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (540, NULL, NULL, NULL, NULL, N'', N'Title', N'string', 90, N'', CAST(0x0000A92700B69C70 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A938011391B4 AS DateTime), NULL, 4590, N'', NULL, NULL, N'', NULL, N'vApp_QuestionReplyMe', 48)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (541, NULL, NULL, NULL, NULL, N'', N'Replier', N'string', 120, N'', CAST(0x0000A92700B69C70 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 50, N'', CAST(0x0000A938011391B4 AS DateTime), NULL, 4580, N'', NULL, NULL, N'', NULL, N'vApp_QuestionReplyMe', 48)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (542, NULL, NULL, NULL, NULL, N'', N'ReplyDate', N'DateTime', 150, N'', CAST(0x0000A92700B69C70 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A938011391B4 AS DateTime), NULL, 4570, N'', NULL, NULL, N'', NULL, N'vApp_QuestionReplyMe', 48)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (543, NULL, NULL, NULL, NULL, N'', N'ReplyContent', N'string', 220, N'', CAST(0x0000A92700B69C70 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 500, N'', CAST(0x0000A938011391B4 AS DateTime), NULL, 4560, N'', NULL, NULL, N'', NULL, N'vApp_QuestionReplyMe', 48)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (544, NULL, NULL, NULL, NULL, N'', N'Creator', N'string', 130, N'', CAST(0x0000A92700B69C70 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A938011391B4 AS DateTime), NULL, 4550, N'', NULL, NULL, N'', NULL, N'vApp_QuestionReplyMe', 48)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (545, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, N'', CAST(0x0000A92700B69C70 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'', CAST(0x0000A938011391B4 AS DateTime), NULL, 4540, N'', NULL, NULL, N'', NULL, N'vApp_QuestionReplyMe', 48)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (546, NULL, NULL, NULL, NULL, N'', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A92700B69C70 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A938011391B4 AS DateTime), NULL, 4530, N'', NULL, NULL, N'', NULL, N'vApp_QuestionReplyMe', 48)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (547, NULL, NULL, NULL, NULL, N'', N'ReplyToId', N'int', 80, N'', CAST(0x0000A92700B69C70 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'', CAST(0x0000A938011391B4 AS DateTime), NULL, 4520, N'', NULL, NULL, N'', NULL, N'vApp_QuestionReplyMe', 48)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (548, NULL, NULL, NULL, NULL, N'', N'ReplyTo', N'string', 120, N'', CAST(0x0000A92700B69C70 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 50, N'', CAST(0x0000A938011391B4 AS DateTime), NULL, 4510, N'', NULL, NULL, N'', NULL, N'vApp_QuestionReplyMe', 48)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (549, NULL, NULL, NULL, NULL, N'', N'HeadImageUrl', N'string', 90, N'', CAST(0x0000A92700B69C70 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 500, N'', CAST(0x0000A938011391B4 AS DateTime), NULL, 4500, N'', NULL, NULL, N'', NULL, N'vApp_QuestionReplyMe', 48)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (550, NULL, NULL, NULL, NULL, N'申请人帐号Id', N'User_Id', N'int', 90, N'', NULL, NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, NULL, 1, 0, 8, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7921, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (551, NULL, NULL, NULL, NULL, N'申请人帐号', N'UserName', N'string', 120, N'', NULL, NULL, NULL, N'', NULL, 0, N'', NULL, 1, 1, NULL, NULL, 1, 0, 30, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7920, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (552, NULL, NULL, NULL, NULL, N'申请人', N'UserTrueName', N'string', 120, N'', NULL, NULL, NULL, N'', NULL, 0, N'', NULL, 1, 1, NULL, NULL, 1, 0, 50, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7920, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (553, NULL, NULL, NULL, NULL, N'主键ID', N'QuestionId', N'int', 80, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4460, NULL, NULL, NULL, NULL, NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (554, NULL, NULL, NULL, NULL, N'提问人头像', N'HeadImageUrl', N'string', 220, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, 1, 0, 1, 0, 500, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4450, NULL, NULL, NULL, NULL, NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (555, NULL, NULL, NULL, NULL, N'标题', N'Title', N'string', 200, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4440, NULL, NULL, 1, NULL, NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (556, NULL, NULL, NULL, 12, N'问题描述', N'Describe', N'string', 300, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, NULL, NULL, 10, N'textarea', NULL, 1, 1, NULL, 0, 1, 0, 500, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4430, NULL, NULL, NULL, N'无', NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (557, NULL, NULL, NULL, NULL, N'提问类型', N'QuestionType', N'int', 100, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, N'qtype', 2, 1, N'drop', NULL, 1, 1, NULL, 0, 0, 1, 4, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4459, NULL, NULL, 4, N'drop', NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (558, NULL, NULL, NULL, NULL, N'提问照片', N'ImageUrls', N'string', 220, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, 1, 0, 1, 0, 500, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4410, NULL, NULL, NULL, NULL, NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (559, NULL, NULL, NULL, NULL, NULL, N'ExpertId', N'int', 80, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4400, NULL, NULL, NULL, NULL, NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (560, NULL, NULL, NULL, NULL, N'提问专家', N'ExpertName', N'string', 140, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4390, NULL, NULL, 1, NULL, NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (561, NULL, NULL, NULL, NULL, N'公母', N'Sex', N'string', 90, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, N'sex', 3, 1, N'drop', NULL, 1, 1, NULL, 0, 1, 0, 10, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4380, NULL, NULL, 2, N'drop', NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (562, NULL, NULL, NULL, NULL, N'月龄', N'Age', N'string', 90, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, N'age', NULL, 2, N'drop', NULL, 1, 1, NULL, 0, 1, 0, 20, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4370, NULL, NULL, 2, N'drop', NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (563, NULL, NULL, NULL, NULL, N'温度', N'Temperature', N'string', 200, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, N'wd', NULL, 2, N'drop', NULL, 1, 1, NULL, 0, 1, 0, 20, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4360, NULL, NULL, 2, N'drop', NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (564, NULL, NULL, NULL, NULL, N'提问照片(大图)', N'BigImageUrls', N'string', 220, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 500, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4350, NULL, NULL, NULL, NULL, NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (565, NULL, NULL, NULL, NULL, N'精选提问', N'Choiceness', N'int', 80, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, N'cq', NULL, 2, N'drop', NULL, 1, 1, NULL, 0, 0, 0, 4, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4457, NULL, NULL, 3, N'drop', NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (566, NULL, NULL, NULL, NULL, N'排序号', N'OrderNo', N'int', 80, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4260, NULL, NULL, NULL, NULL, NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (567, NULL, NULL, NULL, NULL, N'回答数量', N'ReplyQty', N'int', 80, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, NULL, 3, 3, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4320, NULL, NULL, NULL, NULL, NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (568, NULL, NULL, NULL, NULL, N'回复状态', N'ReplyStatus', N'int', 80, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, N'reply', 2, 3, N'无', NULL, 1, 1, NULL, 0, 0, 0, 4, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4310, NULL, NULL, 3, N'drop', NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (569, NULL, NULL, NULL, NULL, N'审核状态', N'AuditStatus', N'int', 80, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, N'audit', NULL, NULL, N'drop', NULL, 1, 1, NULL, 0, 0, 0, 4, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4455, NULL, NULL, 3, N'drop', NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (570, NULL, NULL, NULL, NULL, N'审核人Id', N'AuditId', N'int', 80, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4290, NULL, NULL, NULL, NULL, NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (571, NULL, NULL, NULL, NULL, N'审核人', N'Auditor', N'string', 140, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4280, NULL, NULL, NULL, NULL, NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (572, NULL, NULL, NULL, NULL, N'审核时间', N'AuditDate', N'DateTime', 150, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, NULL, NULL, NULL, N'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4270, NULL, NULL, NULL, NULL, NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (573, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, N'enable', 1, 3, N'drop', NULL, 1, 1, NULL, 0, 0, 0, 1, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4260, NULL, NULL, 4, N'drop', NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (574, NULL, NULL, NULL, NULL, N'创建人Id', N'CreateID', N'int', 80, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4250, NULL, NULL, NULL, NULL, NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (575, NULL, NULL, NULL, NULL, N'提问人', N'Creator', N'string', 130, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4240, NULL, NULL, 1, NULL, NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (576, NULL, NULL, NULL, NULL, N'提问时间', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4230, NULL, NULL, 4, N'datetime', NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (577, NULL, NULL, NULL, NULL, N'修改人ID', N'ModifyID', N'int', 80, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4220, NULL, NULL, NULL, NULL, NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (578, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4210, NULL, NULL, NULL, NULL, NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (579, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 150, NULL, CAST(0x0000A92701012998 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4200, NULL, NULL, NULL, NULL, NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (580, NULL, NULL, NULL, NULL, N'备注', N'Remark', N'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 500, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, 4305, NULL, NULL, NULL, NULL, NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (581, NULL, NULL, NULL, NULL, N'', N'PartById', N'long', 80, N'', CAST(0x0000A927012DAA90 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A93100AE0AB0 AS DateTime), NULL, 4180, N'', NULL, NULL, N'', NULL, N'vApp_QuestionMyReply', 50)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (582, NULL, NULL, NULL, NULL, N'', N'QuestionId', N'int', 80, N'', CAST(0x0000A927012DAA90 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 1, 0, 0, 4, N'', CAST(0x0000A93100AE0AB0 AS DateTime), NULL, 4170, N'', NULL, NULL, N'', NULL, N'vApp_QuestionMyReply', 50)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (583, NULL, NULL, NULL, NULL, N'', N'Creator', N'string', 130, N'', CAST(0x0000A927012DAA90 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A93100AE0AB0 AS DateTime), NULL, 4160, N'', NULL, NULL, N'', NULL, N'vApp_QuestionMyReply', 50)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (584, NULL, NULL, NULL, NULL, N'', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A927012DAA90 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A93100AE0AB0 AS DateTime), NULL, 4150, N'', NULL, NULL, N'', NULL, N'vApp_QuestionMyReply', 50)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (585, NULL, NULL, NULL, NULL, N'', N'HeadImageUrl', N'string', 220, N'', CAST(0x0000A927012DAA90 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 500, N'', CAST(0x0000A93100AE0AB0 AS DateTime), NULL, 4140, N'', NULL, NULL, N'', NULL, N'vApp_QuestionMyReply', 50)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (586, NULL, NULL, NULL, NULL, N'', N'Title', N'string', 90, N'', CAST(0x0000A927012DAA90 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A93100AE0AB0 AS DateTime), NULL, 4130, N'', NULL, NULL, N'', NULL, N'vApp_QuestionMyReply', 50)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (587, NULL, NULL, NULL, NULL, N'', N'ImageUrls', N'string', 220, N'', CAST(0x0000A927012DAA90 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 500, N'', CAST(0x0000A93100AE0AB0 AS DateTime), NULL, 4120, N'', NULL, NULL, N'', NULL, N'vApp_QuestionMyReply', 50)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (588, NULL, NULL, NULL, NULL, N'', N'Attr', N'string', 90, N'', CAST(0x0000A927012DAA90 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 0, 0, 4, N'', CAST(0x0000A93100AE0AB0 AS DateTime), NULL, 4110, N'', NULL, NULL, N'', NULL, N'vApp_QuestionMyReply', 50)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (589, NULL, NULL, NULL, NULL, N'', N'QuestionType', N'int', 80, N'', CAST(0x0000A927012DAA90 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'', CAST(0x0000A93100AE0AB0 AS DateTime), NULL, 4100, N'', NULL, NULL, N'', NULL, N'vApp_QuestionMyReply', 50)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (590, NULL, NULL, NULL, NULL, N'', N'Content', N'string', 220, N'', CAST(0x0000A927012DAA90 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 500, N'', CAST(0x0000A93100AE0AB0 AS DateTime), NULL, 4090, N'', NULL, NULL, N'', NULL, N'vApp_QuestionMyReply', 50)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (591, NULL, NULL, NULL, NULL, N'', N'ReplyDate', N'DateTime', 150, N'', CAST(0x0000A927012DAA90 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'', CAST(0x0000A93100AE0AB0 AS DateTime), NULL, 4080, N'', NULL, NULL, N'', NULL, N'vApp_QuestionMyReply', 50)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (592, NULL, NULL, NULL, NULL, NULL, N'Id', N'int', 80, NULL, CAST(0x0000A92800E3FF94 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'超级管理员', CAST(0x0000AA45012076E0 AS DateTime), 1, 4070, NULL, NULL, NULL, NULL, NULL, N'Sys_ImageLibrary', 51)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (593, NULL, NULL, NULL, NULL, NULL, N'Enable', N'byte', 90, NULL, CAST(0x0000A92800E3FF94 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000AA45012076E0 AS DateTime), 1, 4060, NULL, NULL, NULL, NULL, NULL, N'Sys_ImageLibrary', 51)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (594, NULL, NULL, NULL, NULL, N'备注 ', N'Remark', N'string', 220, NULL, CAST(0x0000A92800E3FF94 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, N'超级管理员', CAST(0x0000AA45012076E0 AS DateTime), 1, 3985, NULL, NULL, NULL, NULL, NULL, N'Sys_ImageLibrary', 51)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (595, NULL, NULL, NULL, NULL, N'文件1', N'ImageUrls', N'string', 400, NULL, CAST(0x0000A92800E3FF94 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 0, 500, N'超级管理员', CAST(0x0000AA45012076E0 AS DateTime), 1, 4040, NULL, NULL, NULL, NULL, NULL, N'Sys_ImageLibrary', 51)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (596, NULL, NULL, NULL, NULL, N'文件来源', N'SourceType', N'int', 150, NULL, CAST(0x0000A92800E3FF94 AS DateTime), NULL, NULL, N'ps', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AA45012076E0 AS DateTime), 1, 4030, NULL, NULL, 1, N'dropList', NULL, N'Sys_ImageLibrary', 51)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (597, NULL, NULL, NULL, NULL, NULL, N'CreateID', N'int', 80, NULL, CAST(0x0000A92800E3FF94 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AA45012076E0 AS DateTime), 1, 4020, NULL, NULL, NULL, NULL, NULL, N'Sys_ImageLibrary', 51)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (598, NULL, NULL, NULL, NULL, N'上传人', N'Creator', N'string', 130, NULL, CAST(0x0000A92800E3FF94 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AA45012076E0 AS DateTime), 1, 4010, NULL, NULL, 1, NULL, NULL, N'Sys_ImageLibrary', 51)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (599, NULL, NULL, NULL, NULL, N'上传时间', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000A92800E3FF94 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AA45012076E0 AS DateTime), 1, 4000, NULL, NULL, 1, N'datetime', NULL, N'Sys_ImageLibrary', 51)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (600, NULL, NULL, NULL, NULL, NULL, N'ModifyID', N'int', 80, NULL, CAST(0x0000A92800E3FF94 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'超级管理员', CAST(0x0000AA45012076E0 AS DateTime), 1, 3990, NULL, NULL, NULL, NULL, NULL, N'Sys_ImageLibrary', 51)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (601, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, NULL, CAST(0x0000A92800E3FF94 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AA45012076E0 AS DateTime), 1, 3980, NULL, NULL, NULL, NULL, NULL, N'Sys_ImageLibrary', 51)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (602, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 150, NULL, CAST(0x0000A92800E3FF94 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'超级管理员', CAST(0x0000AA45012076E0 AS DateTime), 1, 3970, NULL, NULL, NULL, NULL, NULL, N'Sys_ImageLibrary', 51)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (603, NULL, NULL, NULL, NULL, N'资质证书', N' Certificate', N'string', 200, N'', NULL, NULL, NULL, N'', NULL, 0, N'', NULL, 1, 1, 1, NULL, 1, 0, 2500, N'超级管理员', CAST(0x0000AACC01148A24 AS DateTime), 1, 7828, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (605, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 120, N'', NULL, NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, NULL, 1, 0, 8, N'', CAST(0x0000A93100AE0AB0 AS DateTime), NULL, 4161, N'', NULL, NULL, N'', NULL, N'vApp_QuestionMyReply', 50)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (606, NULL, NULL, NULL, NULL, N'', N'Replier', N'string', 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 50, NULL, CAST(0x0000A93100AE0AB0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'vApp_QuestionMyReply', 50)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (607, NULL, NULL, NULL, NULL, N'', N'ReplierId', N'int', 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, CAST(0x0000A93100AE0AB0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'vApp_QuestionMyReply', 50)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (609, NULL, NULL, NULL, NULL, N'', N'LogId', N'int', 80, N'', CAST(0x0000A9370120780C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 0, N'', CAST(0x0000A93B011457C0 AS DateTime), NULL, 3900, N'', NULL, NULL, N'', NULL, N'App_StaticBrowserLog', 52)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (610, NULL, NULL, NULL, NULL, N'用户', N'User_Id', N'int', 80, N'', CAST(0x0000A9370120780C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 0, N'', CAST(0x0000A93B011457C0 AS DateTime), NULL, 3890, N'', NULL, NULL, N'', NULL, N'App_StaticBrowserLog', 52)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (611, NULL, NULL, NULL, NULL, N'', N'ServerIP', N'string', 90, N'', CAST(0x0000A9370120780C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 10, N'', CAST(0x0000A93B011457C0 AS DateTime), NULL, 3880, N'', NULL, NULL, N'', NULL, N'App_StaticBrowserLog', 52)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (613, NULL, NULL, NULL, NULL, N'', N'TablePrimaryKey', N'int', 80, N'', CAST(0x0000A9370120780C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 0, N'', CAST(0x0000A93B011457C0 AS DateTime), NULL, 3860, N'', NULL, NULL, N'', NULL, N'App_StaticBrowserLog', 52)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (614, NULL, NULL, NULL, NULL, N'', N'TableName', N'string', 90, N'', CAST(0x0000A9370120780C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 25, N'', CAST(0x0000A93B011457C0 AS DateTime), NULL, 3850, N'', NULL, NULL, N'', NULL, N'App_StaticBrowserLog', 52)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (615, NULL, NULL, NULL, NULL, N'', N'Url', N'string', 220, N'', CAST(0x0000A9370120780C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 150, N'', CAST(0x0000A93B011457C0 AS DateTime), NULL, 3840, N'', NULL, NULL, N'', NULL, N'App_StaticBrowserLog', 52)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (619, NULL, NULL, NULL, NULL, N'', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A9370120780C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 0, N'', CAST(0x0000A93B011457C0 AS DateTime), NULL, 3800, N'', NULL, NULL, N'', NULL, N'App_StaticBrowserLog', 52)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (623, NULL, NULL, NULL, NULL, N'', N'Id', N'int', 80, N'', CAST(0x0000A93800F71778 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 1, 0, 0, 0, N'', CAST(0x0000A94200FF0654 AS DateTime), NULL, 3760, N'', NULL, NULL, N'', NULL, N'Sys_MessageSendLog', 53)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (624, NULL, NULL, NULL, NULL, N'', N'User_Id', N'int', 80, N'', CAST(0x0000A93800F71778 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 0, 0, 0, N'', CAST(0x0000A94200FF0654 AS DateTime), NULL, 3750, N'', NULL, NULL, N'', NULL, N'Sys_MessageSendLog', 53)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (625, NULL, NULL, NULL, NULL, N'', N'ReadStatus', N'int', 80, N'', CAST(0x0000A93800F71778 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 0, 0, 0, N'', CAST(0x0000A94200FF0654 AS DateTime), NULL, 3740, N'', NULL, NULL, N'', NULL, N'Sys_MessageSendLog', 53)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (626, NULL, NULL, NULL, NULL, N'', N'Enable', N'byte', 90, N'', CAST(0x0000A93800F71778 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 0, N'', CAST(0x0000A94200FF0654 AS DateTime), NULL, 3730, N'', NULL, NULL, N'', NULL, N'Sys_MessageSendLog', 53)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (627, NULL, NULL, NULL, NULL, N'', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A93800F71778 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 0, N'', CAST(0x0000A94200FF0654 AS DateTime), NULL, 3720, N'', NULL, NULL, N'', NULL, N'Sys_MessageSendLog', 53)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (628, NULL, NULL, NULL, NULL, N'', N'MsgId', N'int', 100, N'', NULL, NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, NULL, 1, 0, 0, N'', CAST(0x0000A94200FF0654 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, N'Sys_MessageSendLog', 53)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (629, NULL, NULL, NULL, NULL, N'', N'User_Id', N'int', 80, N'', CAST(0x0000A93800F919EC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 0, 0, 0, N'', CAST(0x0000A942011BD040 AS DateTime), NULL, 3700, N'', NULL, NULL, N'', NULL, N'vSys_MessageSendLog', 54)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (630, NULL, NULL, NULL, NULL, N'接收人帐号', N'UserName', N'string', 90, N'', CAST(0x0000A93800F919EC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 10, N'', CAST(0x0000A942011BD040 AS DateTime), NULL, 3690, N'', NULL, 1, N'', NULL, N'vSys_MessageSendLog', 54)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (631, NULL, NULL, NULL, NULL, N'接收人', N'UserTrueName', N'string', 90, N'', CAST(0x0000A93800F919EC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 20, N'', CAST(0x0000A942011BD040 AS DateTime), NULL, 3680, N'', NULL, 1, N'', NULL, N'vSys_MessageSendLog', 54)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (632, NULL, NULL, NULL, NULL, N'消息标题', N'Title', N'string', 120, N'', CAST(0x0000A93800F919EC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 50, N'', CAST(0x0000A942011BD040 AS DateTime), NULL, 3670, N'', NULL, 1, N'', NULL, N'vSys_MessageSendLog', 54)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (633, NULL, NULL, NULL, NULL, N'消息内容', N'Content', N'string', 220, N'', CAST(0x0000A93800F919EC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 500, N'', CAST(0x0000A942011BD040 AS DateTime), NULL, 3660, N'', NULL, NULL, N'', NULL, N'vSys_MessageSendLog', 54)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (634, NULL, NULL, NULL, NULL, N'推送人', N'Creator', N'string', 130, N'', CAST(0x0000A93800F919EC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'', CAST(0x0000A942011BD040 AS DateTime), NULL, 3650, N'', NULL, 2, N'', NULL, N'vSys_MessageSendLog', 54)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (635, NULL, NULL, NULL, NULL, N'推送时间', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A93800F919EC AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 0, 0, 0, N'', CAST(0x0000A942011BD040 AS DateTime), NULL, 3640, N'', NULL, 2, N'datetime', NULL, N'vSys_MessageSendLog', 54)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (636, NULL, NULL, NULL, NULL, N'推送自增ID', N'Id', N'int', NULL, N'', NULL, NULL, NULL, N'', NULL, NULL, N'', NULL, 1, NULL, NULL, 1, 1, 0, NULL, N'', CAST(0x0000A942011BD040 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, N'vSys_MessageSendLog', 54)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (637, NULL, NULL, NULL, NULL, N'消息ID', N'MsgId', N'int', NULL, N'', NULL, NULL, NULL, N'', NULL, NULL, N'', NULL, 1, NULL, NULL, NULL, 1, 0, NULL, N'', CAST(0x0000A942011BD040 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, N'vSys_MessageSendLog', 54)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (638, NULL, NULL, NULL, NULL, N'用户是否已读', N'ReadStatus', N'int', 100, N'', NULL, NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, NULL, 1, 0, NULL, N'', CAST(0x0000A942011BD040 AS DateTime), NULL, 3677, N'', NULL, NULL, N'', NULL, N'vSys_MessageSendLog', 54)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (640, NULL, NULL, NULL, NULL, N'读取状态', N'ReadStatus', N'int', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, N'超级管理员', CAST(0x0000AA4F00B01A08 AS DateTime), 1, NULL, NULL, NULL, NULL, NULL, NULL, N'App_Question', 49)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (641, NULL, NULL, NULL, NULL, N'', N'ReadStatus', N'int', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'vApp_QuestionReplyMe', 48)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (642, NULL, NULL, NULL, NULL, N'', N'LogId', N'int', 80, N'', CAST(0x0000A93B013661D0 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 0, 0, N'超级管理员', CAST(0x0000AAAA00A95AB0 AS DateTime), 1, 3570, N'', NULL, NULL, N'', NULL, N'vApp_StaticBrowserLog', 55)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (643, NULL, NULL, NULL, NULL, N'访问用户Id', N'User_Id', N'int', 80, N'', CAST(0x0000A93B013661D0 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 0, N'超级管理员', CAST(0x0000AAAA00A95AB0 AS DateTime), 1, 3572, N'', NULL, 1, N'', NULL, N'vApp_StaticBrowserLog', 55)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (644, NULL, NULL, NULL, NULL, N'服务器IP', N'ServerIP', N'string', 90, N'', CAST(0x0000A93B013661D0 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 10, N'超级管理员', CAST(0x0000AAAA00A95AB0 AS DateTime), 1, 3550, N'', NULL, 1, N'', NULL, N'vApp_StaticBrowserLog', 55)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (645, NULL, NULL, NULL, NULL, N'', N'TablePrimaryKey', N'int', 80, N'', CAST(0x0000A93B013661D0 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 0, N'超级管理员', CAST(0x0000AAAA00A95AB0 AS DateTime), 1, 3540, N'', NULL, NULL, N'', NULL, N'vApp_StaticBrowserLog', 55)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (646, NULL, NULL, NULL, NULL, N'访问类型', N'TableName', N'string', 90, N'', CAST(0x0000A93B013661D0 AS DateTime), NULL, NULL, N'html', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 25, N'超级管理员', CAST(0x0000AAAA00A95AB0 AS DateTime), 1, 3530, N'', NULL, 2, N'selectList', NULL, N'vApp_StaticBrowserLog', 55)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (647, NULL, NULL, NULL, NULL, N'', N'Url', N'string', 220, N'', CAST(0x0000A93B013661D0 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 150, N'超级管理员', CAST(0x0000AAAA00A95AB0 AS DateTime), 1, 3520, N'', NULL, NULL, N'', NULL, N'vApp_StaticBrowserLog', 55)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (648, NULL, NULL, NULL, NULL, N'访问时间', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A93B013661D0 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, 0, 0, 1, 0, 0, N'超级管理员', CAST(0x0000AAAA00A95AB0 AS DateTime), 1, 3540, N'', NULL, 2, N'datetime', NULL, N'vApp_StaticBrowserLog', 55)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (649, NULL, NULL, NULL, NULL, N'用户', N'UserName', N'string', 90, N'', CAST(0x0000A93B013661D0 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 10, N'超级管理员', CAST(0x0000AAAA00A95AB0 AS DateTime), 1, 3500, N'', NULL, NULL, N'', NULL, N'vApp_StaticBrowserLog', 55)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (650, NULL, NULL, NULL, NULL, N'访问用户', N'UserTrueName', N'string', 90, N'', CAST(0x0000A93B013661D0 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 20, N'超级管理员', CAST(0x0000AAAA00A95AB0 AS DateTime), 1, 3570, N'', NULL, 1, N'', NULL, N'vApp_StaticBrowserLog', 55)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (651, NULL, NULL, NULL, NULL, N'访问者头像', N'HeadImageUrl', N'string', 220, N'', CAST(0x0000A93B013661D0 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, 1, 0, 1, 0, 200, N'超级管理员', CAST(0x0000AAAA00A95AB0 AS DateTime), 1, 3569, N'', NULL, NULL, N'', NULL, N'vApp_StaticBrowserLog', 55)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (654, NULL, NULL, NULL, NULL, N'登陆设备类型', N'AppType', N'int', 150, N'', NULL, NULL, NULL, N'ut', NULL, 0, N'', NULL, 1, 1, NULL, NULL, 1, 0, 8, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7809, N'', NULL, 3, N'dropList', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (657, NULL, NULL, NULL, NULL, N'接收人设备', N'AppType', N'int', 120, N'', NULL, NULL, NULL, N'ut', NULL, NULL, N'', NULL, 1, 1, NULL, NULL, 1, 0, 50, N'', CAST(0x0000A942011BD040 AS DateTime), NULL, 3677, N'', NULL, 2, N'drop', NULL, N'vSys_MessageSendLog', 54)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (658, NULL, NULL, NULL, NULL, N'', N'AppType', N'int', NULL, N'', NULL, NULL, NULL, N'', NULL, NULL, N'', NULL, 1, NULL, NULL, NULL, 1, 0, 0, N'', CAST(0x0000A94200FF0654 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, N'Sys_MessageSendLog', 53)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (659, NULL, NULL, NULL, NULL, N'是否手机用户', N'IsRegregisterPhone', N'int', 120, N'', NULL, NULL, NULL, N'isphone', NULL, 2, N'drop', NULL, 1, 0, NULL, NULL, 0, 0, NULL, N'超级管理员', CAST(0x0000AAAD0011A468 AS DateTime), 1, 7771, N'', NULL, 3, N'drop', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (660, NULL, NULL, NULL, NULL, N'视频封面', N'Cover', N'string', 180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, 0, 0, 500, N'超级管理员', CAST(0x0000AA45012076E0 AS DateTime), 1, 4029, NULL, NULL, NULL, NULL, NULL, N'Sys_ImageLibrary', 51)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (661, NULL, NULL, NULL, NULL, N'文件类型', N'FileType', N'int', 120, NULL, NULL, NULL, NULL, N'filetype', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, NULL, N'超级管理员', CAST(0x0000AA45012076E0 AS DateTime), 1, 4028, NULL, NULL, NULL, NULL, NULL, N'Sys_ImageLibrary', 51)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (662, NULL, NULL, NULL, NULL, N'是否今日推荐', N'DailyRecommend', N'byte', 120, NULL, NULL, NULL, NULL, N'dr', NULL, 3, N'drop', NULL, 1, 1, NULL, NULL, 0, 0, 8, N'超级管理员', CAST(0x0000A9E600D4C010 AS DateTime), 1, 6984, NULL, NULL, 2, N'drop', NULL, N'App_TechnicalClassify ', 26)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (663, NULL, NULL, NULL, NULL, N'是否今日推荐', N'DailyRecommend', N'byte', 120, NULL, NULL, NULL, NULL, N'dr', NULL, 5, N'drop', NULL, 1, 1, NULL, NULL, 0, 0, 8, N'超级管理员', CAST(0x0000AAAB009CE028 AS DateTime), 1, 6825, NULL, NULL, 1, N'drop', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (664, NULL, NULL, NULL, NULL, N'推荐排序', N'OrderNo', N'int', 120, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 8, N'超级管理员', CAST(0x0000AAAB009CE028 AS DateTime), 1, 6822, NULL, NULL, NULL, N'无', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (665, NULL, NULL, NULL, NULL, N'', N'Id', N'int', 80, NULL, CAST(0x0000A95200FAABE0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 0, NULL, CAST(0x0000A95200FABD74 AS DateTime), NULL, 3340, NULL, NULL, NULL, NULL, NULL, N'vDailyRecommend', 56)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (666, NULL, NULL, NULL, NULL, N'', N'Title', N'string', 120, NULL, CAST(0x0000A95200FAABE0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, NULL, CAST(0x0000A95200FABD74 AS DateTime), NULL, 3330, NULL, NULL, NULL, NULL, NULL, N'vDailyRecommend', 56)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (667, NULL, NULL, NULL, NULL, N'', N'Author', N'string', 90, NULL, CAST(0x0000A95200FAABE0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, NULL, CAST(0x0000A95200FABD74 AS DateTime), NULL, 3320, NULL, NULL, NULL, NULL, NULL, N'vDailyRecommend', 56)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (668, NULL, NULL, NULL, NULL, N'', N'ReleaseDate', N'DateTime', 150, NULL, CAST(0x0000A95200FAABE0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, NULL, CAST(0x0000A95200FABD74 AS DateTime), NULL, 3310, NULL, NULL, NULL, NULL, NULL, N'vDailyRecommend', 56)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (669, NULL, NULL, NULL, NULL, N'', N'DetailUrl', N'string', 90, NULL, CAST(0x0000A95200FAABE0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, NULL, CAST(0x0000A95200FABD74 AS DateTime), NULL, 3300, NULL, NULL, NULL, NULL, NULL, N'vDailyRecommend', 56)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (670, NULL, NULL, NULL, NULL, N'', N'ImageUrl', N'string', 220, NULL, CAST(0x0000A95200FAABE0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 250, NULL, CAST(0x0000A95200FABD74 AS DateTime), NULL, 3290, NULL, NULL, NULL, NULL, NULL, N'vDailyRecommend', 56)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (671, NULL, NULL, NULL, NULL, N'', N'UrlType', N'int', 80, NULL, CAST(0x0000A95200FAABE0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, NULL, CAST(0x0000A95200FABD74 AS DateTime), NULL, 3280, NULL, NULL, NULL, NULL, NULL, N'vDailyRecommend', 56)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (672, NULL, NULL, NULL, NULL, N'', N'OrderNo', N'int', 80, NULL, CAST(0x0000A95200FAABE0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, NULL, CAST(0x0000A95200FABD74 AS DateTime), NULL, 3270, NULL, NULL, NULL, NULL, NULL, N'vDailyRecommend', 56)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (673, NULL, NULL, NULL, NULL, N'', N'Id', N'int', 80, NULL, CAST(0x0000A95B00A15590 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 0, N'超级管理员', CAST(0x0000AACC013F7F04 AS DateTime), 1, 3260, NULL, NULL, NULL, NULL, NULL, N'App_Alliance', 57)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (674, NULL, NULL, NULL, NULL, N'图片', N'ImageUrl', N'string', 220, NULL, CAST(0x0000A95B00A15590 AS DateTime), NULL, NULL, NULL, NULL, 7, NULL, NULL, 1, 1, 1, 0, 0, 0, 250, N'超级管理员', CAST(0x0000AACC013F7F04 AS DateTime), 1, 3250, NULL, NULL, NULL, NULL, NULL, N'App_Alliance', 57)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (675, NULL, NULL, NULL, NULL, N'排序显示', N'OrderNo', N'int', 80, NULL, CAST(0x0000A95B00A15590 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'超级管理员', CAST(0x0000AACC013F7F04 AS DateTime), 1, 3240, NULL, NULL, NULL, NULL, NULL, N'App_Alliance', 57)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (676, NULL, NULL, NULL, NULL, N'是否启用', N'Enable', N'byte', 90, NULL, CAST(0x0000A95B00A15590 AS DateTime), NULL, NULL, N'enable', NULL, 1, N'drop', NULL, 1, 1, NULL, 0, 1, 0, 0, N'超级管理员', CAST(0x0000AACC013F7F04 AS DateTime), 1, 3230, NULL, 1, 1, N'drop', NULL, N'App_Alliance', 57)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (677, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000A95B00A15590 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 0, N'超级管理员', CAST(0x0000AACC013F7F04 AS DateTime), 1, 3220, NULL, NULL, NULL, NULL, NULL, N'App_Alliance', 57)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (678, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, NULL, CAST(0x0000A95B00A15590 AS DateTime), NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, N'超级管理员', CAST(0x0000AACC013F7F04 AS DateTime), 1, 3210, NULL, NULL, NULL, NULL, NULL, N'App_Alliance', 57)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (679, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000A95B00A15590 AS DateTime), NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 1, 0, N'超级管理员', CAST(0x0000AACC013F7F04 AS DateTime), 1, 3200, NULL, 1, 1, N'datetime', NULL, N'App_Alliance', 57)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (680, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000A95B00A15590 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 0, N'超级管理员', CAST(0x0000AACC013F7F04 AS DateTime), 1, 3190, NULL, NULL, NULL, NULL, NULL, N'App_Alliance', 57)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (681, NULL, NULL, NULL, NULL, N'修改时间', N'Modifier', N'string', 130, NULL, CAST(0x0000A95B00A15590 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'超级管理员', CAST(0x0000AACC013F7F04 AS DateTime), 1, 3180, NULL, NULL, NULL, NULL, NULL, N'App_Alliance', 57)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (682, NULL, NULL, NULL, NULL, N'修改人', N'ModifyDate', N'DateTime', 150, NULL, CAST(0x0000A95B00A15590 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'超级管理员', CAST(0x0000AACC013F7F04 AS DateTime), 1, 3170, NULL, NULL, NULL, NULL, NULL, N'App_Alliance', 57)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (699, NULL, NULL, NULL, NULL, N'测试Id', N'id', N'int', 90, NULL, CAST(0x0000AA3F00E55A74 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, NULL, N'超级管理员', CAST(0x0000AAA1012976C8 AS DateTime), 1, 3000, NULL, NULL, NULL, NULL, NULL, N'test2019', 67)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (700, NULL, NULL, NULL, NULL, N'测试1', N'testUtf8', N'string', 90, NULL, CAST(0x0000AA3F00E55A74 AS DateTime), 1, N'超级管理员', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 10, N'超级管理员', CAST(0x0000AAA1012976C8 AS DateTime), 1, 2990, NULL, NULL, 1, NULL, NULL, N'test2019', 67)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (701, NULL, NULL, NULL, NULL, N'测试2', N'testmb4', N'string', 90, NULL, CAST(0x0000AA3F00E55A74 AS DateTime), 1, N'超级管理员', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 1, 0, 12, N'超级管理员', CAST(0x0000AAA1012976C8 AS DateTime), 1, 2980, NULL, NULL, 1, NULL, NULL, N'test2019', 67)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (702, NULL, NULL, NULL, NULL, NULL, N'y', N'int', 90, NULL, CAST(0x0000AA3F00E55A74 AS DateTime), 1, N'超级管理员', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, N'超级管理员', CAST(0x0000AAA1012976C8 AS DateTime), 1, 2970, NULL, NULL, 1, NULL, NULL, N'test2019', 67)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (703, NULL, NULL, NULL, NULL, NULL, N'timepsan', N'DateTime', 90, NULL, CAST(0x0000AA3F00E55A74 AS DateTime), 1, N'超级管理员', NULL, NULL, 2, N'datetime', NULL, 1, 1, NULL, 0, 1, 0, NULL, N'超级管理员', CAST(0x0000AAA1012976C8 AS DateTime), 1, 2960, NULL, NULL, NULL, N'datetime', NULL, N'test2019', 67)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (704, NULL, NULL, NULL, NULL, NULL, N'time', N'string', 90, NULL, CAST(0x0000AA3F00E55A74 AS DateTime), 1, N'超级管理员', NULL, NULL, 3, N'datetime', NULL, 1, 1, NULL, 0, 1, 0, NULL, N'超级管理员', CAST(0x0000AAA1012976C8 AS DateTime), 1, 2950, NULL, NULL, NULL, NULL, NULL, N'test2019', 67)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (705, NULL, NULL, NULL, NULL, NULL, N'text', N'string', 220, NULL, CAST(0x0000AA3F00E55A74 AS DateTime), 1, N'超级管理员', NULL, NULL, 3, NULL, NULL, 1, 1, NULL, 0, 1, 0, 65535, N'超级管理员', CAST(0x0000AAA1012976C8 AS DateTime), 1, 2940, NULL, NULL, NULL, NULL, NULL, N'test2019', 67)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (706, NULL, NULL, NULL, NULL, NULL, N'db', N'decimal', 90, NULL, CAST(0x0000AA3F00E55A74 AS DateTime), 1, N'超级管理员', NULL, NULL, 4, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, N'超级管理员', CAST(0x0000AAA1012976C8 AS DateTime), 1, 2930, NULL, NULL, NULL, NULL, NULL, N'test2019', 67)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (707, NULL, NULL, NULL, NULL, NULL, N'tt', N'string', 90, NULL, CAST(0x0000AA3F00E55A74 AS DateTime), 1, N'超级管理员', NULL, NULL, 4, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1, N'超级管理员', CAST(0x0000AAA1012976C8 AS DateTime), 1, 2920, NULL, NULL, NULL, NULL, NULL, N'test2019', 67)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (711, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000AAA101299414 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 67)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (712, NULL, NULL, NULL, NULL, N'fdsafdsa', NULL, NULL, NULL, NULL, CAST(0x0000AAA10130D1FC AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'22', 43)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (713, NULL, NULL, NULL, NULL, N'fdsasa', NULL, NULL, NULL, NULL, CAST(0x0000AAA10130D1FC AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'fsafdsa', 43)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (714, NULL, NULL, NULL, NULL, N'Id', N'Order_Id', N'string', 90, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 36, N'超级管理员', CAST(0x0000AACD00F5D408 AS DateTime), 1, 2850, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (715, NULL, NULL, NULL, NULL, N'订单类型', N'OrderType', N'int', 90, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'超级管理员', N'ordertype', 1, 1, N'select', NULL, 1, 1, NULL, 0, 0, 0, NULL, N'超级管理员', CAST(0x0000AACD00F5D408 AS DateTime), 1, 2840, NULL, 1, 1, N'select', NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (716, NULL, NULL, NULL, NULL, N'运单号', N'TranNo', N'string', 150, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'超级管理员', NULL, 1, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, N'超级管理员', CAST(0x0000AACD00F5D408 AS DateTime), 1, 2830, NULL, NULL, 1, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (717, NULL, NULL, NULL, NULL, N'销售订单号', N'SellNo', N'string', 200, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'超级管理员', NULL, 2, 2, NULL, NULL, 1, 1, NULL, 0, 0, 0, 255, N'超级管理员', CAST(0x0000AACD00F5D408 AS DateTime), 1, 2820, NULL, NULL, 1, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (718, NULL, NULL, NULL, NULL, N'销售数量', N'Qty', N'int', 90, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'超级管理员', NULL, 2, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, NULL, N'超级管理员', CAST(0x0000AACD00F5D408 AS DateTime), 1, 2810, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (719, NULL, NULL, NULL, 8, N'备注', N'Remark', N'string', 100, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'超级管理员', NULL, NULL, 2, N'textarea', NULL, 1, 1, NULL, 0, 1, 0, 1000, N'超级管理员', CAST(0x0000AACD00F5D408 AS DateTime), 1, 2800, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (720, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, N'超级管理员', CAST(0x0000AACD00F5D408 AS DateTime), 1, 2790, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (721, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 100, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'超级管理员', NULL, 3, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, 255, N'超级管理员', CAST(0x0000AACD00F5D408 AS DateTime), 1, 2780, NULL, NULL, 3, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (722, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 90, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'超级管理员', NULL, 3, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, N'超级管理员', CAST(0x0000AACD00F5D408 AS DateTime), 1, 2770, NULL, NULL, 3, N'datetime', NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (723, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, N'超级管理员', CAST(0x0000AACD00F5D408 AS DateTime), 1, 2760, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (724, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 100, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'超级管理员', NULL, 4, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 255, N'超级管理员', CAST(0x0000AACD00F5D408 AS DateTime), 1, 2750, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (725, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 90, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'超级管理员', NULL, 4, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, N'超级管理员', CAST(0x0000AACD00F5D408 AS DateTime), 1, 2740, NULL, NULL, 3, N'datetime', NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (726, NULL, NULL, NULL, NULL, N'', N'OrderList_Id', N'string', 90, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 0, 36, N'超级管理员', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2730, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (727, NULL, NULL, NULL, NULL, N'订单Id', N'Order_Id', N'string', 90, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0, 1, 36, N'超级管理员', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2720, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (728, NULL, NULL, NULL, NULL, N'商品名称', N'ProductName', N'string', 150, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'超级管理员', N'pn', NULL, 1, N'select', NULL, 1, 1, NULL, 0, 0, 0, 200, N'超级管理员', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2710, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (729, NULL, NULL, NULL, NULL, N'批次', N'MO', N'string', 100, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'超级管理员', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 255, N'超级管理员', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2700, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (730, NULL, NULL, NULL, NULL, N'数量', N'Qty', N'int', 90, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'超级管理员', NULL, NULL, 1, N'drop', NULL, 1, 1, NULL, 0, 0, 0, NULL, N'超级管理员', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2690, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (731, NULL, NULL, NULL, NULL, N'重量', N'Weight', N'decimal', 90, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'超级管理员', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, N'超级管理员', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2680, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (732, NULL, NULL, NULL, NULL, N'备注', N'Remark', N'string', 120, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'超级管理员', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1000, N'超级管理员', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2670, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (733, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, N'超级管理员', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2660, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (734, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, N'超级管理员', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2650, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (735, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 90, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, N'超级管理员', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2640, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (736, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, N'超级管理员', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2630, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (737, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 100, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, N'超级管理员', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2620, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (738, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 90, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, N'超级管理员', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2610, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (739, NULL, NULL, NULL, NULL, N'审核时间', N'AuditDate', N'DateTime', 120, NULL, CAST(0x0000AAB7009D3CBC AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, NULL, N'超级管理员', CAST(0x0000AACD00F5D408 AS DateTime), 1, 2805, NULL, NULL, 2, N'datetime', NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (740, NULL, NULL, NULL, NULL, N'审核人', N'Auditor', N'string', NULL, NULL, CAST(0x0000AAB7009D3CBC AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 100, N'超级管理员', CAST(0x0000AACD00F5D408 AS DateTime), 1, 2803, NULL, NULL, 2, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (741, NULL, NULL, NULL, NULL, N'审核人Id', N'AuditId', N'int', NULL, NULL, CAST(0x0000AAB7009D3CBC AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, 0, NULL, N'超级管理员', CAST(0x0000AACD00F5D408 AS DateTime), 1, 2801, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (742, NULL, NULL, NULL, NULL, N'审核状态', N'AuditStatus', N'int', NULL, NULL, CAST(0x0000AAB7009D3CBC AS DateTime), 1, N'超级管理员', N'audit', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, 0, NULL, N'超级管理员', CAST(0x0000AACD00F5D408 AS DateTime), 1, 2808, NULL, NULL, 2, N'select', NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (743, NULL, NULL, NULL, NULL, N'', N'Id', N'string', 90, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'超级管理员', NULL, 5, 1, NULL, NULL, 1, 0, NULL, 1, 0, 1, 36, N'超级管理员', CAST(0x0000AACC01109220 AS DateTime), 1, 2560, NULL, NULL, NULL, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (744, NULL, NULL, NULL, NULL, N'创建时间', N'CreateDate', N'DateTime', 120, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'超级管理员', NULL, 1, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, N'超级管理员', CAST(0x0000AACC01109220 AS DateTime), 1, 2550, NULL, NULL, 1, N'datetime', NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (745, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, N'超级管理员', CAST(0x0000AACC01109220 AS DateTime), 1, 2540, NULL, NULL, NULL, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (746, NULL, NULL, NULL, NULL, N'创建人', N'Creator', N'string', 130, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'超级管理员', NULL, 2, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, N'超级管理员', CAST(0x0000AACC01109220 AS DateTime), 1, 2530, NULL, NULL, 1, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (747, NULL, NULL, NULL, NULL, N'描述', N'Describe', N'string', 180, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'超级管理员', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 0, 1, 250, N'超级管理员', CAST(0x0000AACC01109220 AS DateTime), 1, 3490, NULL, NULL, NULL, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (748, NULL, NULL, NULL, NULL, N'修改人', N'Modifier', N'string', 130, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'超级管理员', NULL, NULL, 4, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, N'超级管理员', CAST(0x0000AACC01109220 AS DateTime), 1, 2510, NULL, NULL, NULL, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (749, NULL, NULL, NULL, NULL, N'修改时间', N'ModifyDate', N'DateTime', 90, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'超级管理员', NULL, 1, 4, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, N'超级管理员', CAST(0x0000AACC01109220 AS DateTime), 1, 2500, NULL, NULL, NULL, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (750, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, N'超级管理员', CAST(0x0000AACC01109220 AS DateTime), 1, 2490, NULL, NULL, NULL, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (751, NULL, NULL, NULL, NULL, N'姓名', N'Name', N'string', 100, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'超级管理员', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 1, 50, N'超级管理员', CAST(0x0000AACC01109220 AS DateTime), 1, 3500, NULL, NULL, 1, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (752, NULL, NULL, NULL, NULL, N'电话', N'PhoneNo', N'string', 130, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'超级管理员', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 0, 1, 15, N'超级管理员', CAST(0x0000AACC01109220 AS DateTime), 1, 3470, NULL, NULL, 1, NULL, NULL, N'App_Appointment', 80)
GO
SET IDENTITY_INSERT [dbo].[Sys_TableColumn] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_TableInfo] ON 

GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (2, N'角色管理', N'角色管理', NULL, NULL, NULL, NULL, NULL, 1, N'RoleName', N'System', N'VOL.System', NULL, 8, NULL, NULL, N'Sys_Role', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (3, N'字典数据', N'字典数据', NULL, NULL, N'字典明细', N'Sys_DictionaryList', NULL, 1, N'DicName', N'System', N'VOL.System', NULL, 11, NULL, NULL, N'Sys_Dictionary', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (4, N'字典明细', N'字典明细', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'System', N'VOL.System', NULL, 11, NULL, NULL, N'Sys_DictionaryList', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (5, N'系统日志', N'系统日志', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'System', N'VOL.System', NULL, 10, NULL, NULL, N'Sys_Log', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (6, NULL, N'用户管理', NULL, NULL, NULL, NULL, NULL, 1, N'UserName', N'System', N'VOL.System', NULL, 8, NULL, N'', N'Sys_User', NULL, N'HeadImageUrl', 1)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (7, NULL, N'短信验证码发送记录', NULL, N'无', NULL, NULL, NULL, 1, NULL, N'Record', N'VOL.AppManager', NULL, 9, NULL, NULL, N'Sys_PinRecord', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (8, N'用户基础信息', N'用户基础信息', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'System', N'VOL.System', 200, 0, NULL, NULL, N'无', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (9, N'历史记录', N'历史记录', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'System', N'VOL.System', 180, 25, NULL, NULL, N'.', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (10, N'日志管理', N'日志管理', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'System', N'VOL.System', NULL, 0, NULL, N'170', N'日志管理', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (11, N'配置管理', N'配置管理', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'System', N'VOL.System', NULL, 0, NULL, N'250', N'配置管理', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (13, N'App首页维护', N'App维护', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'App', N'VOL.AppManager', NULL, 25, NULL, NULL, N'App维护', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (14, NULL, N'首页轮播图片', NULL, NULL, NULL, NULL, NULL, 1, N'OrderNo', N'App', N'VOL.AppManager', NULL, 13, NULL, NULL, N'App_HomeHeadImages', NULL, N'ImageUrl', 1)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (15, N'成交均价', N'自动绑定下拉框', NULL, NULL, NULL, NULL, NULL, 1, N'AvgPrice', N'App', N'VOL.AppManager', NULL, 79, NULL, NULL, N'App_TransactionAvgPrice', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (16, NULL, N'新增编辑表单', NULL, NULL, NULL, NULL, NULL, 1, N'Price', N'App', N'VOL.AppManager', NULL, 79, NULL, NULL, N'App_ReportPrice', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (18, N'其他配置项', N'其他配置项', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'Other', N'VOL.AppManager', NULL, 13, NULL, NULL, N'App_OtherConfig', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (19, NULL, N'导入导出', NULL, NULL, NULL, NULL, NULL, 1, N'姓名', N'App', N'VOL.AppManager', NULL, 79, NULL, NULL, N'App_Transaction', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (20, NULL, N'启用图片支持', NULL, NULL, NULL, NULL, NULL, 1, N'UserName', N'App', N'VOL.AppManager', NULL, 79, NULL, NULL, N'App_Expert', NULL, N'HeadImageUrl', 1)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (22, NULL, N'专家提问(停用)', NULL, NULL, NULL, NULL, NULL, 1, N'Title', N'Question', N'VOL.AppManager', NULL, 46, NULL, NULL, N'App_ExpertQuestion', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (23, NULL, N'公开提问(停用)', NULL, NULL, N'提问回复明细', N'App_QuestionReply', NULL, 1, N'Title', N'Question', N'VOL.AppManager', NULL, 46, NULL, NULL, N'App_PublicQuestion', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (24, NULL, N'公开提问回复信息(停用)', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'Question', N'VOL.AppManager', NULL, 46, NULL, NULL, N'App_PublicQuestionReply', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (25, N'养牛宝', N'其他', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'App', N'VOL.AppManager', NULL, 0, NULL, NULL, N'养牛宝', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (26, NULL, N'养牛宝信息发布', NULL, NULL, NULL, NULL, NULL, 1, N'Title', N'Technical', N'VOL.AppManager', NULL, 25, N'Content', NULL, N'App_TechnicalClassify', NULL, N'ImageUrls', 3)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (27, N'侩牛资讯', N'静态页面发布', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'News', N'VOL.AppManager', NULL, 0, NULL, NULL, N'侩牛资讯', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (28, NULL, N'新闻列表', NULL, NULL, NULL, NULL, NULL, 1, N'Title', N'News', N'VOL.AppManager', NULL, 27, N'Content', N'CreateDate', N'App_News', NULL, N'ImageUrl', 3)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (29, N'价格走势', N'价格走势', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'Price', N'VOL.AppManager', NULL, 25, NULL, NULL, N'App_PriceTendency', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (30, NULL, N'牛评', NULL, NULL, NULL, NULL, NULL, 1, N'Title', N'Comment', N'VOL.AppManager', NULL, 25, NULL, NULL, N'App_Comment', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (31, NULL, N'会议活动', NULL, NULL, NULL, NULL, NULL, 1, N'Title', N'Meeting', N'VOL.AppManager', NULL, 25, NULL, NULL, N'App_Meeting', NULL, N'ImageUrl', 3)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (32, NULL, N'我要加入', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'CJoin', N'VOL.AppManager', NULL, 25, NULL, NULL, N'App_CustomerJoin', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (33, N'我的', N'我的', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'My', N'VOL.AppManager', NULL, 25, NULL, NULL, N'我的', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (35, NULL, N'我加入的会议视图', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'Meeting', N'VOL.AppManager', NULL, 33, NULL, NULL, N'vMyJoinMeeting', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (36, NULL, N'系统消息推送', NULL, NULL, NULL, NULL, NULL, 1, N'Title', N'Message', N'VOL.AppManager', NULL, 33, NULL, NULL, N'Sys_Message', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (37, NULL, N'意见反馈', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'Feedback', N'VOL.AppManager', NULL, 33, NULL, NULL, N'App_Feedback', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (38, N'省市列表', N'省市列表', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'App', N'VOL.AppManager', NULL, 13, NULL, N'ProvinceId ASC', N'vProvinceCity', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (40, NULL, N'养牛宝分页测试', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'Technical', N'VOL.AppManager', NULL, 25, NULL, NULL, N'vApp_TechnicalClassifyPartBy', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (42, NULL, N'我加入的会议', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'My', N'VOL.AppManager', NULL, 33, NULL, NULL, N'App_MyJoinMeeting', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (43, NULL, N'问答回复明细', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'Question', N'VOL.AppManager', NULL, 46, NULL, NULL, N'App_QuestionReply', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (46, N'问答信息', N'测试', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'App', N'VOL.AppManager', NULL, 25, NULL, NULL, N'Question', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (48, NULL, N'回复我的', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'Question', N'VOL.AppManager', NULL, 46, NULL, NULL, N'vApp_QuestionReplyMe', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (49, NULL, N'提问记录', NULL, NULL, N'回复信息', N'App_QuestionReply', NULL, 1, N'Title', N'Question', N'VOL.AppManager', NULL, 46, NULL, NULL, N'App_Question', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (50, NULL, N'我的回答', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'Question', N'VOL.AppManager', NULL, 46, NULL, NULL, N'vApp_QuestionMyReply', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (51, NULL, N'图片上传记录', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'System', N'VOL.System', NULL, 9, NULL, NULL, N'Sys_ImageLibrary', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (52, NULL, N'静态页面访问记录', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'Record', N'VOL.AppManager', NULL, 9, NULL, NULL, N'App_StaticBrowserLog', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (53, NULL, N'系统消息推送记录', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'Message', N'VOL.AppManager', NULL, 33, NULL, NULL, N'Sys_MessageSendLog', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (54, NULL, N'系统消息推送视图', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'Message', N'VOL.AppManager', NULL, 33, NULL, NULL, N'vSys_MessageSendLog', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (55, NULL, N'静态访问视图', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'Record', N'VOL.AppManager', NULL, 9, NULL, NULL, N'vApp_StaticBrowserLog', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (56, NULL, N'今日推荐', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'App', N'VOL.AppManager', NULL, 13, NULL, NULL, N'vDailyRecommend', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (57, NULL, N'产业联盟', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'News', N'VOL.AppManager', NULL, 25, NULL, NULL, N'App_Alliance', NULL, N'ImageUrl', 1)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (67, N'test2019', N'test2019', NULL, NULL, NULL, NULL, NULL, 1, N'testUtf8', N'App', N'VOL.AppManager', NULL, 13, NULL, NULL, N'test2019', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (76, N'订单管理', N'测试完整示例', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'订单管理', N'VOL.Order', NULL, 0, NULL, NULL, N'订单管理', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (77, N'销售订单', N'销售订单', NULL, NULL, N'订单明细', N'SellOrderList', NULL, 1, N'TranNo', N'Sell', N'VOL.Order', NULL, 76, NULL, N'CreateDate', N'SellOrder', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (78, N'订单明细', N'订单明细', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'Order', N'VOL.Order', NULL, 76, NULL, N'CreateDate', N'SellOrderList', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (79, N'Table 单表数据', N'Table+单表数据', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'Order', N'VOL.Order', NULL, 0, NULL, NULL, N'Table+单表数据', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (80, N'基础表单查询', N'基础表单+编辑只读', NULL, NULL, NULL, NULL, NULL, 1, N'Name', N'Appointment', N'VOL.Order', NULL, 79, NULL, N'CreateDate', N'App_Appointment', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sys_TableInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_User] ON 

GO
INSERT [dbo].[Sys_User] ([User_Id], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [CreateDate], [CreateID], [Creator], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Mobile], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [Token]) VALUES (1, N'北京市西城区', 0, CAST(0x0000AAAD000EDBE8 AS DateTime), 1, N'超级管理员', CAST(0x0000A06C00B808E4 AS DateTime), NULL, NULL, NULL, 0, N'283591387@qq.com', 1, 1, N'https://imgs-1256993465.cos.ap-chengdu.myqcloud.com/h5pic/x1.jpg', 0, CAST(0x0000A7DD00A47F54 AS DateTime), CAST(0x0000AAD301017D7F AS DateTime), NULL, N'超级管理员', CAST(0x0000AA5D00BF9FDC AS DateTime), 1, 0, 1, N'超级管理员', N'13888888888', N'~还没想好...', NULL, N'admin', N'j79rYYvCz4vdhcboB1Ausg==', N'超级管理员', N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIxIiwiaWF0IjoiMTU2OTM5NzA1NiIsIm5iZiI6IjE1NjkzOTcwNTYiLCJleHAiOiIxNTY5NDA0MjU2IiwiaXNzIjoidm9sLmNvcmUub3duZXIiLCJhdWQiOiJ2b2wuY29yZSJ9._3LxaV1nleFyx1xIHL3i_zJ9tXdK9A9CwTi4Zm5OtH0')
GO
INSERT [dbo].[Sys_User] ([User_Id], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [CreateDate], [CreateID], [Creator], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Mobile], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [Token]) VALUES (3362, N'北京市还没注册', NULL, CAST(0x0000AAAD000EDBE8 AS DateTime), 1, N'超级管理员', CAST(0x0000AAA800ED6DA4 AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 1, N'https://imgs-1256993465.cos.ap-chengdu.myqcloud.com/u%3D1407034680%2C1803900872%26fm%3D26%26gp%3D0.jpg', 0, NULL, CAST(0x0000AAD0017C018A AS DateTime), N'01012345678', N'超级管理员', CAST(0x0000AACF012D3FEC AS DateTime), 1, NULL, 2, N'测试管理员', NULL, NULL, NULL, N'admin666', N'j79rYYvCz4vdhcboB1Ausg==', N'zs', N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIzMzYyIiwiaWF0IjoiMTU2OTM5Njk3NSIsIm5iZiI6IjE1NjkzOTY5NzUiLCJleHAiOiIxNTY5NDA0MTc1IiwiaXNzIjoidm9sLmNvcmUub3duZXIiLCJhdWQiOiJ2b2wuY29yZSJ9.LhCvv719X67brbeK9JBAX0LWjREB-zm0yBFxXB-oYr0')
GO
SET IDENTITY_INSERT [dbo].[Sys_User] OFF
GO
INSERT [dbo].[test2019] ([id], [testUtf8], [testmb4], [y], [timepsan], [text], [db], [tt]) VALUES (1, N'1234567', N'1234567890', CAST(2009 AS Numeric(5, 0)), CAST(0x078083C7340F8D3F0B AS DateTime2), NULL, CAST(1.110 AS Numeric(4, 3)), N'恩')
GO
INSERT [dbo].[test2019] ([id], [testUtf8], [testmb4], [y], [timepsan], [text], [db], [tt]) VALUES (2, N'长234567890', N'1234567890', CAST(2011 AS Numeric(5, 0)), NULL, NULL, CAST(9.333 AS Numeric(4, 3)), NULL)
GO
INSERT [dbo].[test2019] ([id], [testUtf8], [testmb4], [y], [timepsan], [text], [db], [tt]) VALUES (3, N'1', N'1', CAST(2001 AS Numeric(5, 0)), CAST(0x0780CB28B585863F0B AS DateTime2), N'1', CAST(1.000 AS Numeric(4, 3)), N'恩')
GO
INSERT [dbo].[test2019] ([id], [testUtf8], [testmb4], [y], [timepsan], [text], [db], [tt]) VALUES (4, N'1111', N'testmb4', NULL, NULL, NULL, CAST(0.000 AS Numeric(4, 3)), NULL)
GO
INSERT [dbo].[test2019] ([id], [testUtf8], [testmb4], [y], [timepsan], [text], [db], [tt]) VALUES (5, N'1111', N'testmb4', NULL, NULL, NULL, CAST(0.000 AS Numeric(4, 3)), NULL)
GO
INSERT [dbo].[test2019] ([id], [testUtf8], [testmb4], [y], [timepsan], [text], [db], [tt]) VALUES (6, N'1111', N'testmb4', NULL, NULL, NULL, CAST(0.000 AS Numeric(4, 3)), NULL)
GO
INSERT [dbo].[test2019] ([id], [testUtf8], [testmb4], [y], [timepsan], [text], [db], [tt]) VALUES (7, N'1111', N'testmb4', NULL, NULL, NULL, CAST(0.000 AS Numeric(4, 3)), NULL)
GO
INSERT [dbo].[test2019] ([id], [testUtf8], [testmb4], [y], [timepsan], [text], [db], [tt]) VALUES (8, N'1111', N'testmb4', NULL, NULL, NULL, CAST(0.000 AS Numeric(4, 3)), N't')
GO
INSERT [dbo].[test2019] ([id], [testUtf8], [testmb4], [y], [timepsan], [text], [db], [tt]) VALUES (9, N'1111', N'testmb4', NULL, NULL, NULL, CAST(0.000 AS Numeric(4, 3)), N't')
GO
INSERT [dbo].[test2019] ([id], [testUtf8], [testmb4], [y], [timepsan], [text], [db], [tt]) VALUES (10, N'1111', N'testmb4', NULL, NULL, NULL, CAST(0.000 AS Numeric(4, 3)), N't')
GO
INSERT [dbo].[test2019] ([id], [testUtf8], [testmb4], [y], [timepsan], [text], [db], [tt]) VALUES (11, N'1111', N'testmb4', NULL, NULL, NULL, CAST(0.000 AS Numeric(4, 3)), N't')
GO
USE [master]
GO
ALTER DATABASE [netcoredev] SET  READ_WRITE 
GO
