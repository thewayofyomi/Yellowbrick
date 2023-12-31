USE [YellowBrick]
GO
/****** Object:  StoredProcedure [dbo].[ClientProtection_Update]    Script Date: 7/10/2023 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author:			Sean Humphreys
-- Create date:		07/02/2023
-- Description:		Update a column by Id within dbo.ClientProtection
-- Code Reviewer:	Raymond Medina

-- MODIFIED BY: 
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:

CREATE PROC [dbo].[ClientProtection_Update]
				@ClientId int,
				@HasHealthInsurance bit,
				@HasLifeInsurance bit,
				@HasDisabilityInsurance bit,
				@HasTrustOrWill bit,
				@IsRevocable bit = null,
				@IsIrrevocable bit = null,
				@UserId int,
				@Id int

AS
/* -----Test Code-----

		Declare			@Id int = 2;

		Declare			@ClientId int = 5,
						@HasHealthInsurance bit = 1,
						@HasLifeInsurance bit = 0,
						@HasDisabilityInsurance bit = 1,
						@HasTrustOrWill bit = 0,
						@IsRevocable bit = 1,
						@IsIrrevocable bit = 0,
						@UserId int = 4

		Execute			dbo.ClientProtection_Update
						@ClientId,
						@HasHealthInsurance,
						@HasLifeInsurance,
						@HasDisabilityInsurance,
						@HasTrustOrWill,
						@IsRevocable,
						@IsIrrevocable,
						@UserId,
						@Id

*/

BEGIN

	UPDATE			dbo.ClientProtection

	SET				ClientId = @ClientId,
					HasHealthInsurance = @HasHealthInsurance,
					HasLifeInsurance = @HasLifeInsurance,
					HasDisabilityInsurance = @HasDisabilityInsurance,
					HasTrustOrWill = @HasTrustOrWill,
					IsRevocable = @IsRevocable,
					IsIrrevocable = @IsIrrevocable,
					ModifiedBy = @UserId

	WHERE			Id = @Id

END
GO
