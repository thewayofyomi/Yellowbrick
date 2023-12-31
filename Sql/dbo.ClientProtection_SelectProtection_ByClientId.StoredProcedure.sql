USE [YellowBrick]
GO
/****** Object:  StoredProcedure [dbo].[ClientProtection_SelectProtection_ByClientId]    Script Date: 8/13/2023 9:01:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author:			Sean Humphreys
-- Create date:		07/02/2023
-- Description:		Select by ClientId within dbo.ClientProtection
-- Code Reviewer:	Nicholas Rosario

-- MODIFIED BY: 
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:

CREATE PROC [dbo].[ClientProtection_SelectProtection_ByClientId]
				@Id int

AS
/* -----Test Code-----

	Declare			@Id int = 7

	Execute		dbo.ClientProtection_SelectProtection_ByClientId
					@Id

*/
BEGIN

	SELECT				CP.Id,
						CP.ClientId,
						C.FirstName,
						C.LastName,
						C.Mi,
						CP.HasHealthInsurance,
						CP.HasLifeInsurance,
						CP.HasDisabilityInsurance,
						CP.HasTrustOrWill,
						CP.IsRevocable,
						CP.IsIrrevocable,
						CP.CreatedBy,
						U1.FirstName,
						U1.LastName,
						U1.Mi,
						U1.AvatarUrl,
						CP.ModifiedBy,
						CP.DateCreated,
						CP.DateModified

	FROM				dbo.ClientProtection As CP
						Inner Join dbo.Clients As C On CP.ClientId = C.Id
						Inner Join dbo.Users As U1 On CP.CreatedBy = U1.Id
						Inner Join dbo.Users As U2 On CP.ModifiedBy = U2.Id
							
	WHERE				CP.ClientId = @Id

END
GO
