USE [PrdDb]
GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 03/16/2016 10:32:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vendors](
	[VendorCode] [varchar](10) NOT NULL,
	[VendorName] [varchar](100) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Vendors] PRIMARY KEY CLUSTERED 
(
	[VendorCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VendorProduct_Audit]    Script Date: 03/16/2016 10:32:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VendorProduct_Audit](
	[sno] [int] IDENTITY(1,1) NOT NULL,
	[ProductVendorUpdatedInfo] [varchar](max) NULL,
	[modifieddate] [datetime] NULL,
	[VendorName] [varchar](100) NULL,
	[ProductID] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VendorProduct]    Script Date: 03/16/2016 10:32:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VendorProduct](
	[ProductId] [varchar](100) NOT NULL,
	[ProductName] [varchar](100) NULL,
	[Description] [varchar](max) NULL,
	[Price] [numeric](10, 2) NULL,
	[VendorCode] [varchar](10) NULL,
 CONSTRAINT [PK_VendorProduct] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
