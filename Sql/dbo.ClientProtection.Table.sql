USE [YellowBrick]
GO
/****** Object:  Table [dbo].[ClientProtection]    Script Date: 7/08/2023 6:53:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientProtection](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[HasHealthInsurance] [bit] NOT NULL,
	[HasLifeInsurance] [bit] NOT NULL,
	[HasDisabilityInsurance] [bit] NOT NULL,
	[HasCarInsurance] [bit] NOT NULL,
	[HasTrustOrWill] [bit] NOT NULL,
	[IsRevocable] [bit] NULL,
	[IsIrrevocable] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ClientProtection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClientProtection] ADD  CONSTRAINT [DF_ClientProtection_HasHealthInsurance]  DEFAULT ((0)) FOR [HasHealthInsurance]
GO
ALTER TABLE [dbo].[ClientProtection] ADD  CONSTRAINT [DF_ClientProtection_HasLifeInsurance]  DEFAULT ((0)) FOR [HasLifeInsurance]
GO
ALTER TABLE [dbo].[ClientProtection] ADD  CONSTRAINT [DF_ClientProtection_HasDisabilityInsurance]  DEFAULT ((0)) FOR [HasDisabilityInsurance]
GO
ALTER TABLE [dbo].[ClientProtection] ADD  CONSTRAINT [DF_ClientProtection_HasCarInsurance]  DEFAULT ((0)) FOR [HasCarInsurance]
GO
ALTER TABLE [dbo].[ClientProtection] ADD  CONSTRAINT [DF_ClientProtection_HasTrustOrWill]  DEFAULT ((0)) FOR [HasTrustOrWill]
GO
ALTER TABLE [dbo].[ClientProtection] ADD  CONSTRAINT [DF_ClientProtection_IsRevocable]  DEFAULT ((0)) FOR [IsRevocable]
GO
ALTER TABLE [dbo].[ClientProtection] ADD  CONSTRAINT [DF_ClientProtection_IsIrrevocable]  DEFAULT ((0)) FOR [IsIrrevocable]
GO
ALTER TABLE [dbo].[ClientProtection] ADD  CONSTRAINT [DF_ClientProtection_DateCreated]  DEFAULT (getutcdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[ClientProtection] ADD  CONSTRAINT [DF_ClientProtection_DateModified]  DEFAULT (getutcdate()) FOR [DateModified]
GO
ALTER TABLE [dbo].[ClientProtection]  WITH CHECK ADD  CONSTRAINT [FK_ClientProtection_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[ClientProtection] CHECK CONSTRAINT [FK_ClientProtection_Clients]
GO
ALTER TABLE [dbo].[ClientProtection]  WITH CHECK ADD  CONSTRAINT [FK_ClientProtection_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[ClientProtection] CHECK CONSTRAINT [FK_ClientProtection_Users]
GO
ALTER TABLE [dbo].[ClientProtection]  WITH CHECK ADD  CONSTRAINT [FK_ClientProtection_Users1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[ClientProtection] CHECK CONSTRAINT [FK_ClientProtection_Users1]
GO
