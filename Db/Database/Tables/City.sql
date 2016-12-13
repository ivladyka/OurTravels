CREATE TABLE [dbo].[City] (
    [CityID]      INT           IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (50)  NOT NULL,
    [Name_en]     VARCHAR (50)  NOT NULL,
    [CountryID]   INT           NOT NULL,
    [Content]     VARCHAR (MAX) NULL,
    [Keywords]    VARCHAR (250) NULL,
    [Active]      BIT           CONSTRAINT [DF_City_Active] DEFAULT ((0)) NOT NULL,
    [Description] VARCHAR (200) NULL,
    [DateUpdate]  SMALLDATETIME NULL,
    [TitleImage]  VARCHAR (100) NULL,
    [MainImage]   VARCHAR (100) NULL,
    CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED ([CityID] ASC),
    CONSTRAINT [FK_City_Country] FOREIGN KEY ([CountryID]) REFERENCES [dbo].[Country] ([CountryID])
);





