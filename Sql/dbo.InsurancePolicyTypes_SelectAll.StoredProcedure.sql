USE [YellowBrick]
GO
/****** Object:  StoredProcedure [dbo].[InsurancePolicyTypes_SelectAll]    Script Date: 7/6/2023 2:57:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author:			Sean Humphreys
-- Create date:		07/05/2023
-- Description:		Select all from dbo.InsurancePolicyTypes
-- Code Reviewer:	Raymond Medina

-- MODIFIED BY: 
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:

CREATE PROC [dbo].[InsurancePolicyTypes_SelectAll]

AS
/* -----Test Code-----

	Execute dbo.InsurancePolicyTypes_SelectAll

*/

BEGIN

	SELECT			Id,
					Name

	FROM			dbo.InsurancePolicyTypes

END
GO
