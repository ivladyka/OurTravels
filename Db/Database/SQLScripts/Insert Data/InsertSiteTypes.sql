UPDATE
	[dbo].[SiteType]
SET 
	[Name] = 'Проживання',
	[OrderIndex] = 1
WHERE
	[SiteTypeID] = 1
GO

INSERT INTO [dbo].[SiteType]
           ([Name]
           ,[OrderIndex])
     VALUES
           ('Транспорт'
           ,2)
GO

INSERT INTO [dbo].[SiteType]
           ([Name]
           ,[OrderIndex])
     VALUES
           ('Що цікавого'
           ,3)
GO

INSERT INTO [dbo].[SiteType]
           ([Name]
           ,[OrderIndex])
     VALUES
           ('Де поїсти'
           ,4)
GO

INSERT INTO [dbo].[SiteType]
           ([Name]
           ,[OrderIndex])
     VALUES
           ('Для дітей'
           ,5)
GO

INSERT INTO [dbo].[SiteType]
           ([Name]
           ,[OrderIndex])
     VALUES
           ('Паби і пивоварні'
           ,6)
GO

INSERT INTO [dbo].[SiteType]
           ([Name]
           ,[OrderIndex])
     VALUES
           ('Розваги для дорослих'
           ,7)
GO