CREATE TABLE [dbo].[SiteType] (
    [SiteTypeID] INT          IDENTITY (1, 1) NOT NULL,
    [Name]       VARCHAR (50) NOT NULL,
    [OrderIndex] INT          NULL,
    CONSTRAINT [PK_SiteType] PRIMARY KEY CLUSTERED ([SiteTypeID] ASC)
);



