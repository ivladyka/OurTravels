CREATE TABLE [dbo].[Country] (
    [CountryID]   INT            IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (50)   NOT NULL,
    [Name_en]     VARCHAR (50)   NOT NULL,
    [Content]     VARCHAR (MAX)  NULL,
    [Keywords]    VARCHAR (250)  NULL,
    [Active]      BIT            CONSTRAINT [DF_Country_Active] DEFAULT ((0)) NOT NULL,
    [CapitalID]   INT            NULL,
    [Description] VARCHAR (200)  NULL,
    [DateUpdate]  SMALLDATETIME  NULL,
    [MainImage]   VARCHAR (100)  NULL,
    [Advert1]     VARCHAR (1000) NULL,
    [Advert2]     VARCHAR (1000) NULL,
    CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED ([CountryID] ASC),
    CONSTRAINT [FK_Country_City] FOREIGN KEY ([CapitalID]) REFERENCES [dbo].[City] ([CityID])
);





