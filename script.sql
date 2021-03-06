USE [master]
GO
/****** Object:  Database [BDProyecto]    Script Date: 24/02/2018 10:14:57 a.m. ******/
CREATE DATABASE [BDProyecto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDProyecto', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BDProyecto.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BDProyecto_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BDProyecto_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BDProyecto] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDProyecto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDProyecto] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDProyecto] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDProyecto] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDProyecto] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDProyecto] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDProyecto] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDProyecto] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BDProyecto] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDProyecto] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDProyecto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDProyecto] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDProyecto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDProyecto] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDProyecto] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDProyecto] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDProyecto] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BDProyecto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDProyecto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDProyecto] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDProyecto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDProyecto] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDProyecto] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDProyecto] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDProyecto] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BDProyecto] SET  MULTI_USER 
GO
ALTER DATABASE [BDProyecto] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDProyecto] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDProyecto] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDProyecto] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [BDProyecto]
GO
/****** Object:  Table [dbo].[INVENTORIES]    Script Date: 24/02/2018 10:14:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVENTORIES](
	[product_id] [int] NULL,
	[warehouse_id] [bigint] NULL,
	[quantity_on_hand] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ORDER_ITEMS]    Script Date: 24/02/2018 10:14:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_ITEMS](
	[order_id] [int] NULL,
	[line_item_id] [bigint] NULL,
	[product_id] [int] NULL,
	[unit_price] [money] NULL,
	[quantity] [bigint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ORDERS]    Script Date: 24/02/2018 10:14:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORDERS](
	[order_id] [bigint] NULL,
	[order_date] [date] NULL,
	[order_mode] [varchar](50) NULL,
	[customer_id] [varchar](50) NULL,
	[order_status] [varchar](50) NULL,
	[order_total] [varchar](50) NULL,
	[sales_rep_id] [varchar](50) NULL,
	[promotion_id] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRODUCT_DESCRIPTIONS]    Script Date: 24/02/2018 10:14:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCT_DESCRIPTIONS](
	[product_id] [int] NULL,
	[language_id] [varchar](50) NULL,
	[translated_name] [varchar](50) NULL,
	[translated_description] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRODUCT_INFORMATION]    Script Date: 24/02/2018 10:14:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCT_INFORMATION](
	[product_id] [int] NULL,
	[product_name] [int] NULL,
	[product_description] [varchar](50) NULL,
	[category_id] [int] NULL,
	[weight_class] [int] NULL,
	[warranty_class] [varchar](50) NULL,
	[supplier_id] [varchar](50) NULL,
	[product_status] [varchar](max) NULL,
	[list_price] [varchar](max) NULL,
	[min_price] [money] NULL,
	[catalog_url] [money] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [IX_ORDER_ITEMS]    Script Date: 24/02/2018 10:14:57 a.m. ******/
CREATE NONCLUSTERED INDEX [IX_ORDER_ITEMS] ON [dbo].[ORDER_ITEMS]
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PRODUCT_INFORMATION]    Script Date: 24/02/2018 10:14:57 a.m. ******/
CREATE NONCLUSTERED INDEX [IX_PRODUCT_INFORMATION] ON [dbo].[PRODUCT_INFORMATION]
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [BDProyecto] SET  READ_WRITE 
GO
