USE [YellowBrick]
GO
/****** Object:  Table [dbo].[ClientInsurance]    Script Date: 7/21/2023 7:22:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientInsurance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
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
	[LastReviewDate] [date] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ClientInsurances] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClientInsurance] ADD  CONSTRAINT [DF_ClientInsurances_IsPayWork]  DEFAULT ((0)) FOR [IsPayWork]
GO
ALTER TABLE [dbo].[ClientInsurance] ADD  CONSTRAINT [DF_ClientInsurances_DateCreated]  DEFAULT (getutcdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[ClientInsurance] ADD  CONSTRAINT [DF_ClientInsurances_DateModified]  DEFAULT (getutcdate()) FOR [DateModified]
GO
ALTER TABLE [dbo].[ClientInsurance]  WITH CHECK ADD  CONSTRAINT [FK_ClientInsurances_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[ClientInsurance] CHECK CONSTRAINT [FK_ClientInsurances_Clients]
GO
ALTER TABLE [dbo].[ClientInsurance]  WITH CHECK ADD  CONSTRAINT [FK_ClientInsurances_InsurancePolicyTypes] FOREIGN KEY([InsurancePolicyTypeId])
REFERENCES [dbo].[InsurancePolicyTypes] ([Id])
GO
ALTER TABLE [dbo].[ClientInsurance] CHECK CONSTRAINT [FK_ClientInsurances_InsurancePolicyTypes]
GO
ALTER TABLE [dbo].[ClientInsurance]  WITH CHECK ADD  CONSTRAINT [FK_ClientInsurances_InsuranceTypes] FOREIGN KEY([InsuranceTypeId])
REFERENCES [dbo].[InsuranceTypes] ([Id])
GO
ALTER TABLE [dbo].[ClientInsurance] CHECK CONSTRAINT [FK_ClientInsurances_InsuranceTypes]
GO
ALTER TABLE [dbo].[ClientInsurance]  WITH CHECK ADD  CONSTRAINT [FK_ClientInsurances_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[ClientInsurance] CHECK CONSTRAINT [FK_ClientInsurances_Users]
GO
ALTER TABLE [dbo].[ClientInsurance]  WITH CHECK ADD  CONSTRAINT [FK_ClientInsurances_Users1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[ClientInsurance] CHECK CONSTRAINT [FK_ClientInsurances_Users1]
GO
