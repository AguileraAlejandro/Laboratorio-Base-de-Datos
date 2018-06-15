CREATE TABLE [dbo].[CUSTOMERS](
	[customer_id] [uniqueidentifier] NOT NULL,
	[cust_first_name] [varchar](50) NOT NULL,
	[cust_last_name] [varchar](50) NOT NULL,
	[cust_address] [varchar](50) NOT NULL,
	[phone_numbers] [int] NOT NULL,
	[nls_language] [varchar](max) NOT NULL,
	[nls_territory] [varchar](max) NOT NULL,
	[credit_limit] [int] NOT NULL,
	[cust_email] [varchar](max) NOT NULL,
	[account_mgr_id] [varchar](max) NOT NULL,
	[cust_geo_location] [varchar](50) NOT NULL,
	[date_of_birth] [int] NOT NULL,
	[marital_status] [varchar](max) NOT NULL,
	[gender] [varchar](max) NOT NULL,
	[income_level] [varchar](max) NOT NULL,
 CONSTRAINT [PK_CUSTOMERS] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INVENTORIES]    Script Date: 10/03/2018 09:49:24 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INVENTORIES](
	[product_id] [uniqueidentifier] NOT NULL,
	[warehouse_id] [uniqueidentifier] NOT NULL,
	[quantity_on_hand] [varchar](max) NOT NULL,
 CONSTRAINT [PK_INVENTORIES] PRIMARY KEY CLUSTERED 
(
	[warehouse_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ORDER_ITEMS]    Script Date: 10/03/2018 09:49:24 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORDER_ITEMS](
	[order_id] [uniqueidentifier] NOT NULL,
	[line_item_id] [varchar](max) NOT NULL,
	[product_id] [uniqueidentifier] NOT NULL,
	[unit_price] [varchar](max) NOT NULL,
	[quantity] [varchar](max) NOT NULL,
 CONSTRAINT [PK_ORDER_ITEMS] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ORDERS]    Script Date: 10/03/2018 09:49:24 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORDERS](
	[order_id] [uniqueidentifier] NOT NULL,
	[order_date] [varchar](max) NOT NULL,
	[order_mode] [varchar](max) NOT NULL,
	[customer_id] [uniqueidentifier] NOT NULL,
	[order_status] [varchar](max) NOT NULL,
	[order_total] [int] NOT NULL,
	[sales_rep_id] [varchar](max) NOT NULL,
	[promotion_id] [varchar](max) NOT NULL,
 CONSTRAINT [PK_ORDERS] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRODUCT_DESCRIPTIONS]    Script Date: 10/03/2018 09:49:24 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCT_DESCRIPTIONS](
	[product_id] [uniqueidentifier] NOT NULL,
	[language_id] [varchar](max) NOT NULL,
	[translated_name] [varchar](50) NOT NULL,
	[translated_description] [varchar](max) NOT NULL,
 CONSTRAINT [PK_PRODUCT_DESCRIPTIONS] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRODUCT_INFORMATION]    Script Date: 10/03/2018 09:49:24 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCT_INFORMATION](
	[product_id] [uniqueidentifier] NOT NULL,
	[product_name] [varchar](max) NOT NULL,
	[product_description] [varchar](max) NOT NULL,
	[category_id] [varchar](50) NOT NULL,
	[weight_class] [varchar](50) NOT NULL,
	[warranty_period] [varchar](50) NOT NULL,
	[supplier_id] [varchar](max) NOT NULL,
	[product_status] [varchar](max) NOT NULL,
	[list_price] [varchar](50) NOT NULL,
	[min_price] [int] NOT NULL,
	[catalog_url] [varchar](max) NOT NULL,
 CONSTRAINT [PK_PRODUCT_INFORMATION] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WAREHOUSES]    Script Date: 10/03/2018 09:49:24 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WAREHOUSES](
	[warehouse_id] [uniqueidentifier] NOT NULL,
	[warehouse_spec] [varchar](max) NOT NULL,
	[warehouse_name] [varchar](50) NOT NULL,
	[location_id] [varchar](max) NOT NULL,
	[wh_geo_location] [varchar](max) NOT NULL,
 CONSTRAINT [PK_WAREHOUSES] PRIMARY KEY CLUSTERED 
(
	[warehouse_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
