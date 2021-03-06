﻿CREATE TABLE [dbo].[Settings] (
    [SettingID]   INT            IDENTITY (1, 1) NOT NULL,
    [UserName]    VARCHAR (50)   NOT NULL,
    [Password]    VARCHAR (50)   NOT NULL,
    [Keywords]    VARCHAR (250)  NULL,
    [Title]       VARCHAR (100)  NULL,
    [Description] VARCHAR (200)  NULL,
    [TitleSuffix] VARCHAR (100)  NULL,
    [Advert1]     VARCHAR (1000) NULL,
    [Advert2]     VARCHAR (1000) NULL,
    [Advert3]     VARCHAR (1000) NULL,
    CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED ([SettingID] ASC)
);



