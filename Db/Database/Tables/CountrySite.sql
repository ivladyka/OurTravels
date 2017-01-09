CREATE TABLE [dbo].[CountrySite] (
    [CountrySiteID] INT IDENTITY (1, 1) NOT NULL,
    [CountryID]     INT NOT NULL,
    [SiteID]        INT NOT NULL,
    CONSTRAINT [PK_CountrySite] PRIMARY KEY CLUSTERED ([CountrySiteID] ASC),
    CONSTRAINT [FK_CountrySite_Country] FOREIGN KEY ([CountryID]) REFERENCES [dbo].[Country] ([CountryID]),
    CONSTRAINT [FK_CountrySite_Site] FOREIGN KEY ([SiteID]) REFERENCES [dbo].[Site] ([SiteID])
);

