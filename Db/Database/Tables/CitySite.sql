CREATE TABLE [dbo].[CitySite] (
    [CitySiteID] INT IDENTITY (1, 1) NOT NULL,
    [CityID]     INT NOT NULL,
    [SiteID]     INT NOT NULL,
    CONSTRAINT [PK_CitySite] PRIMARY KEY CLUSTERED ([CitySiteID] ASC),
    CONSTRAINT [FK_CitySite_City] FOREIGN KEY ([CityID]) REFERENCES [dbo].[City] ([CityID]),
    CONSTRAINT [FK_CitySite_Site] FOREIGN KEY ([SiteID]) REFERENCES [dbo].[Site] ([SiteID])
);

