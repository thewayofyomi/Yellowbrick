USE [YellowBrick]
GO
/****** Object:  UserDefinedTableType [dbo].[ClientProperties]    Script Date: 8/13/2023 9:01:26 PM ******/
CREATE TYPE [dbo].[ClientProperties] AS TABLE(
	[PropertyTypeId] [int] NOT NULL,
	[PurchasePrice] [decimal](16, 2) NOT NULL,
	[YearPurchased] [int] NOT NULL,
	[IsRenovated] [bit] NOT NULL,
	[City] [nvarchar](100) NOT NULL,
	[StateId] [int] NOT NULL
)
GO
