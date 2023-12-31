USE [YellowBrick]
GO
/****** Object:  UserDefinedTableType [dbo].[ClientInsurance]    Script Date: 8/4/2023 6:59:17 PM ******/
CREATE TYPE [dbo].[ClientInsurance] AS TABLE(
	[Name] [nvarchar](200) NULL,
	[InsuranceTypeId] [int] NOT NULL,
	[InsurancePolicyTypeId] [int] NULL,
	[MonthlyPayment] [decimal](16, 2) NULL,
	[Deductible] [decimal](16, 2) NOT NULL,
	[InstitutionName] [nvarchar](100) NOT NULL,
	[MonthlyBenefit] [decimal](16, 2) NULL,
	[DeathBenefit] [decimal](16, 2) NULL,
	[IsPayWork] [bit] NOT NULL,
	[PurchaseDate] [date] NULL,
	[LastReviewDate] [date] NULL
)
GO
