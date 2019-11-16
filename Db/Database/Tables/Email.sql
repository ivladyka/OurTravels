CREATE TABLE [dbo].[Email] (
    [EmailID]      INT           IDENTITY (1, 1) NOT NULL,
    [EmailAddress] VARCHAR (255) NOT NULL,
    [AddedDate]    SMALLDATETIME NOT NULL,
    [EmailTypeID]  INT           NOT NULL,
    [Sent]         BIT           CONSTRAINT [DF_Email_Sent] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED ([EmailID] ASC)
);



