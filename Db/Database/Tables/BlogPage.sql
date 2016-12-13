CREATE TABLE [dbo].[BlogPage] (
    [BlogPageID]      INT           IDENTITY (1, 1) NOT NULL,
    [Name]            VARCHAR (255) NOT NULL,
    [Name_en]         VARCHAR (255) NOT NULL,
    [PageContent]     VARCHAR (MAX) NULL,
    [Keywords]        VARCHAR (250) NULL,
    [Active]          BIT           CONSTRAINT [DF_BlogPage_Active] DEFAULT ((1)) NULL,
    [Description]     VARCHAR (200) NULL,
    [DateUpdate]      SMALLDATETIME NULL,
    [StartTravelDate] SMALLDATETIME NULL,
    [EndTravelDate]   SMALLDATETIME NULL,
    [DatePublish]     SMALLDATETIME NULL,
    [IsBlogPage]      BIT           CONSTRAINT [DF_BlogPage_BlogPage] DEFAULT ((1)) NOT NULL,
    [TitleImage]      VARCHAR (50)  NULL,
    [BlogDescription] VARCHAR (250) NULL,
    [MainImage]       VARCHAR (50)  NULL,
    CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED ([BlogPageID] ASC)
);





