USE [YellowBrick]
GO
/****** Object:  StoredProcedure [dbo].[ClientInsurance_Insert]    Script Date: 7/10/2023 7:26:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author:			Sean Humphreys
-- Create date:		07/03/2023
-- Description:		Insert a column within dbo.ClientInsurance
-- Code Reviewer:	Raymond Medina

-- MODIFIED BY: 
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:

CREATE PROC [dbo].[ClientInsurance_Insert]
				@ClientId int,
				@Name nvarchar(200) = null,
				@InsuranceTypeId int,
				@InsurancePolicyTypeId int = null,
				@MonthlyPayment decimal(16, 2) = null,
				@Deductible decimal(16, 2) = null,
				@InstitutionName nvarchar(100),
				@MonthlyBenefit decimal(16, 2) = null,
				@DeathBenefit decimal(16, 2) = null,
				@IsPayWork bit,
				@PurchaseDate date = null,
				@LastReviewDate date = null,
				@UserId int,
				@Id int Output


AS
/*

	Declare		@Id int = 0

	Declare		@ClientId int = 6,
				@Name nvarchar(200) = 'InsuranceOne',
				@InsuranceTypeId int = 2,
				@InsurancePolicyTypeId int = 3,
				@MonthlyPayment decimal(16, 2) = 150,
				@Deductible decimal(16, 2) = 1000,
				@InstitutionName nvarchar(100) = 'InstitutionOne',
				@MonthlyBenefit decimal(16, 2) = 250,
				@DeathBenefit decimal(16, 2) = 100000,
				@IsPayWork bit = 0,
				@PurchaseDate date = '01-03-2020',
				@LastReviewDate date = '01-03-2022',
				@UserId int = 6

	Execute		dbo.ClientInsurance_Insert
				@ClientId,
				@Name,
				@InsuranceTypeId,
				@InsurancePolicyTypeId,
				@MonthlyPayment,
				@Deductible,
				@InstitutionName,
				@MonthlyBenefit,
				@DeathBenefit,
				@IsPayWork,
				@PurchaseDate,
				@LastReviewDate,
				@UserId,
				@Id Output

	Select		*
	From		dbo.ClientInsurance

*/

BEGIN

	INSERT INTO			dbo.ClientInsurance
						(ClientId,
						 Name,
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

	VALUES				(@ClientId,
						 @Name,
						 @InsuranceTypeId,
						 @InsurancePolicyTypeId,
						 @MonthlyPayment,
						 @Deductible,
						 @InstitutionName,
						 @MonthlyBenefit,
						 @DeathBenefit,
						 @IsPayWork,
						 @PurchaseDate,
						 @LastReviewDate,
						 @UserId,
						 @UserId)

	SET					@Id = SCOPE_IDENTITY()

END
GO
