CREATE TABLE [dbo].[BlogPageCity] (
    [BlogPageCityID] INT IDENTITY (1, 1) NOT NULL,
    [BlogPageID]     INT NOT NULL,
    [CityID]         INT NOT NULL,
    CONSTRAINT [PK_BlogPageCity] PRIMARY KEY CLUSTERED ([BlogPageCityID] ASC),
    CONSTRAINT [FK_BlogPageCity_BlogPage] FOREIGN KEY ([BlogPageID]) REFERENCES [dbo].[BlogPage] ([BlogPageID]),
    CONSTRAINT [FK_BlogPageCity_City] FOREIGN KEY ([CityID]) REFERENCES [dbo].[City] ([CityID])
);

