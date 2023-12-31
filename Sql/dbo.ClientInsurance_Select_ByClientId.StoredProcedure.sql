USE [YellowBrick]
GO
/****** Object:  StoredProcedure [dbo].[ClientInsurance_Select_ByClientId]    Script Date: 8/13/2023 9:01:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author:			Sean Humphreys
-- Create date:		07/03/2023
-- Description:		Select by ClientId within dbo.ClientInsurance
-- Code Reviewer:	Nicholas Rosario

-- MODIFIED BY: 
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:

CREATE PROC [dbo].[ClientInsurance_Select_ByClientId]
				@Id int

AS
/* -----Test Code-----

	Declare			@Id int = 6

	Execute	dbo.ClientInsurance_Select_ByClientId
					@Id

	Select			*
	From			dbo.ClientInsurance

	SELECT * FROM dbo.Clients

	SELECT * FROM dbo.USers

*/

BEGIN

	SELECT			CI.Id,
					CI.ClientId,
					C.FirstName,
					C.LastName,
					C.Mi,
					CI.Name,
					CI.InsuranceTypeId,
					IT.Name,
					CI.InsurancePolicyTypeId,
					IPT.Name,
					CI.MonthlyPayment,
					CI.Deductible,
					CI.InstitutionName,
					CI.MonthlyBenefit,
					CI.DeathBenefit,
					CI.IsPayWork,
					CI.PurchaseDate,
					CI.LastReviewDate,
					CI.CreatedBy,
					U1.FirstName,
					U1.LastName,
					U1.Mi,
					U1.AvatarUrl,
					CI.ModifiedBy,
					U2.FirstName,
					U2.LastName,
					U2.Mi,
					U2.AvatarUrl,
					CI.DateCreated,
					CI.DateModified

	FROM			dbo.ClientInsurance As CI
					Join dbo.Clients As C On CI.ClientId = C.Id
					Join dbo.InsuranceTypes As IT On CI.InsuranceTypeId = IT.Id
				    Left Join dbo.InsurancePolicyTypes As IPT On CI.InsurancePolicyTypeId = IPT.Id
					Join dbo.Users As U1 On CI.CreatedBy = U1.Id
				    Join dbo.Users As U2 On CI.ModifiedBy = U2.Id

	WHERE			CI.ClientId = @Id

END
GO
