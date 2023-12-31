USE [YellowBrick]
GO
/****** Object:  StoredProcedure [dbo].[ClientInsurance_Update]    Script Date: 7/10/2023 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author:			Sean Humphreys
-- Create date:		07/02/2023
-- Description:		Update a column by within dbo.ClientInsurance
-- Code Reviewer:	Raymond Medina

-- MODIFIED BY: 
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:

CREATE PROC [dbo].[ClientInsurance_Update]
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
				@Id int

AS
/* -----Test Code-----

	Declare			@Id int = 5

	Declare			@ClientId int = 6,
					@Name nvarchar(200) = 'InsuranceThree',
					@InsuranceTypeId int = 3,
					@InsurancePolicyTypeId int = 3,
					@MonthlyPayment decimal(16, 2) = 180,
					@Deductible decimal(16, 2) = 600,
					@InstitutionName nvarchar(100) = 'InstituionThree',
					@MonthlyBenefit decimal(16, 2) = 350,
					@DeathBenefit decimal(16, 2) = 115000,
					@IsPayWork bit = False,
					@PurchaseDate date = '03/03/2020',
					@LastReviewDate date = '03/03/2022',
					@UserId int = 7

	Execute		dbo.ClientInsurance_Update
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
					@UserId
					
*/

BEGIN

	UPDATE			dbo.ClientInsurance

	SET				ClientId = @ClientId,
					Name = @Name,
					InsuranceTypeId = @InsuranceTypeId,
					InsurancePolicyTypeId = @InsurancePolicyTypeId,
					MonthlyPayment = @MonthlyPayment,
					Deductible = @Deductible,
					InstitutionName = @InstitutionName,
					MonthlyBenefit = @MonthlyBenefit,
					DeathBenefit = @DeathBenefit,
					IsPayWork = @IsPayWork,
					PurchaseDate = @PurchaseDate,
					LastReviewDate = @LastReviewDate,
					ModifiedBy = @UserId

	WHERE			Id = @Id

END
GO
