USE [YellowBrick]
GO
/****** Object:  StoredProcedure [dbo].[ClientInsurance_Batch_Insert]    Script Date: 8/13/2023 9:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author:			Sean Humphreys
-- Create date:		07/20/2023
-- Description:		Batch Insert into dbo.ClientInsurance with a UDT
-- Code Reviewer:	Nicolas Rodriguez

-- MODIFIED BY: 
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:

CREATE PROC [dbo].[ClientInsurance_Batch_Insert]
			@BatchClientInsurance dbo.ClientInsurance READONLY,
			@ClientId int,
			@Id int


AS
/*

	Declare			@newClientInsurance As dbo.ClientInsurance,
					@ClientId int = 35,
					@Id int = 1

	Insert Into		@newClientInsurance
					(Name,
					 InsuranceTypeId,
					 InsurancePolicyTypeId,
					 MonthlyPayment,
					 Deductible,
					 InstitutionName,
					 MonthlyBenefit,
					 DeathBenefit,
					 IsPayWork,
					 PurchaseDate,
					 LastReviewDate)

	Values			('Health Insurance',
					  1 ,
					  3 ,
					  125 ,
					  1250 ,
					 'Cigna',
					  1000 ,
					  50000 ,
					  1 ,
					 '05/01/2020',
					 '01/05/2022')
					
	Insert Into		@newClientInsurance
					(Name,
					 InsuranceTypeId,
					 InsurancePolicyTypeId,
					 MonthlyPayment,
					 Deductible,
					 InstitutionName,
					 MonthlyBenefit,
					 DeathBenefit,
					 IsPayWork,
					 PurchaseDate,
					 LastReviewDate)

	Values			('Health Insurance',
					  1 ,
					  3 ,
					  125 ,
					  1250 ,
					 'Cigna',
					  1000 ,
					  50000 ,
					  1 ,
					 '05/01/2020',
					 '01/05/2022')

	Select			*
	From			@newClientInsurance

	Execute		dbo.ClientInsurance_Batch_Insert
					@newClientInsurance,
					@ClientId,
					@Id

*/

BEGIN

	INSERT INTO			dbo.ClientInsurance
						(ClientId,
						 [Name],
						 InsuranceTypeId,
						 InsurancePolicyTypeId,
						 MonthlyPayment,
						 Deductible,
						 InstitutionName,
						 MonthlyBenefit,
						 DeathBenefit,
						 IsPayWork,
						 PurchaseDate,
						 LastReviewDate,
						 CreatedBy,
						 ModifiedBy)

	SELECT				@ClientId,
						BCI.[Name],
						BCI.InsuranceTypeId,
						BCI.InsurancePolicyTypeId,
						BCI.MonthlyPayment,
						BCI.Deductible,
						BCI.InstitutionName,
						BCI.MonthlyBenefit,
						BCI.DeathBenefit,
						BCI.IsPayWork,
						BCI.PurchaseDate,
						BCI.LastReviewDate,
						@Id,
						@Id

	FROM				@BatchClientInsurance AS BCI

END
GO
