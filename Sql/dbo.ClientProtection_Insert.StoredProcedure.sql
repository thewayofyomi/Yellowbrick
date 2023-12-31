USE [YellowBrick]
GO
/****** Object:  StoredProcedure [dbo].[ClientProtection_Insert]    Script Date: 7/08/2023 6:53:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author:			Sean Humphreys
-- Create date:		07/02/2023
-- Description:		Insert into the columns within dbo.ClientProtection
-- Code Reviewer:	Raymond Medina

-- MODIFIED BY: 
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:

CREATE PROC [dbo].[ClientProtection_Insert]
				@ClientId int,
				@HasHealthInsurance bit,
				@HasLifeInsurance bit,
				@HasDisabilityInsurance bit,
				@HasCarInsurance bit,
				@HasTrustOrWill bit,
				@IsRevocable bit = null,
				@IsIrrevocable bit = null,
				@UserId int,
				@Id int Output
			

AS
/* -----Test Code-----

	Declare			@Id int = 0

	Declare			@ClientId int = 9,
					@HasHealthInsurance bit = 1,
					@HasLifeInsurance bit = 0,
					@HasDisabilityInsurance bit = 1,
					@HasCarInsurance bit = 1,
					@HasTrustOrWill bit = 0,
					@IsRevocable bit = 1,
					@IsIrrevocable bit = 0,
					@UserId int = 8

	Execute			dbo.ClientProtection_Insert
					@ClientId,
					@HasHealthInsurance,
					@HasLifeInsurance,
					@HasDisabilityInsurance,
					@HasCarInsurance
					@HasTrustOrWill,
					@IsRevocable,
					@IsIrrevocable,
					@UserId,
					@Id Output

	Select		*
	From		dbo.ClientProtection


*/

BEGIN

	INSERT INTO			dbo.ClientProtection
						(ClientId,
						 HasHealthInsurance,
						 HasLifeInsurance,
						 HasDisabilityInsurance,
						 HasCarInsurance,
						 HasTrustOrWill,
						 IsRevocable,
						 IsIrrevocable,
						 CreatedBy,
						 ModifiedBy)

	VALUES				(@ClientId,
						 @HasHealthInsurance,
						 @HasLifeInsurance,
						 @HasDisabilityInsurance,
						 @HasCarInsurance,
						 @HasTrustOrWill,
						 @IsRevocable,
						 @IsIrrevocable,
						 @UserId,
						 @UserId)

	SET					@Id = SCOPE_IDENTITY()

END
GO
