CREATE TABLE [dbo].[Site] (
    [SiteID]     INT            IDENTITY (1, 1) NOT NULL,
    [SiteTypeID] INT            NOT NULL,
    [Name]       VARCHAR (50)   NOT NULL,
    [URL]        VARCHAR (500)  NOT NULL,
    [Active]     BIT            CONSTRAINT [DF_Site_Active] DEFAULT ((1)) NOT NULL,
    [OrderIndex] INT            NULL,
    [Notes]      VARCHAR (2000) NULL,
    [Logo]       VARCHAR (50)   NULL,
    [Banner]     VARCHAR (50)   NULL,
    CONSTRAINT [PK_Site] PRIMARY KEY CLUSTERED ([SiteID] ASC),
    CONSTRAINT [FK_Site_SiteType] FOREIGN KEY ([SiteTypeID]) REFERENCES [dbo].[SiteType] ([SiteTypeID])
);

