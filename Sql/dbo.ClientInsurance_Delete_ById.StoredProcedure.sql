USE [YellowBrick]
GO
/****** Object:  StoredProcedure [dbo].[ClientInsurance_Delete_ById]    Script Date: 7/7/2023 6:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author:			Sean Humphreys
-- Create date:		07/03/2023
-- Description:		Delete a column by Id with dbo.ClientInsurance
-- Code Reviewer:	Raymond Medina

-- MODIFIED BY: 
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:

CREATE PROC [dbo].[ClientInsurance_Delete_ById]
				@Id int

AS
/* -----Test Code-----

	Delcare			@Id int = 4

	Execute			dbo.ClientInsurance_Delete_ById
						@Id int

*/

BEGIN

	DELETE FROM			dbo.ClientInsurance

	WHERE				Id = @Id

END
GO
