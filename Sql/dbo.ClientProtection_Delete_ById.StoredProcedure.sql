USE [YellowBrick]
GO
/****** Object:  StoredProcedure [dbo].[ClientProtection_Delete_ById]    Script Date: 7/6/2023 2:57:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author:			Sean Humphreys
-- Create date:		07/02/2023
-- Description:		Delete a column by Id within dbo.ClientProtection
-- Code Reviewer:	Raymond Medina

-- MODIFIED BY: 
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:

CREATE PROC [dbo].[ClientProtection_Delete_ById]
				@Id int

AS
/* -----Test Code-----

	Declare			@Id int = 2

	Execute			dbo.ClientProtection_Delete_ById
						@Id

*/

BEGIN

	DELETE FROM			dbo.ClientProtection

	WHERE				Id = @Id

END
GO
