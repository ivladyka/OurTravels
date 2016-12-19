CREATE PROCEDURE [dbo].[usp_Country_LoadSiteMap]
AS
BEGIN
	
	DECLARE @SiteMap TABLE(	
		CountryName varchar(50),
		CityName varchar(50),
		DateUpdate smalldatetime,
		BlogPageID int,
		BlogPageName_en varchar(255))
	
	INSERT INTO @SiteMap
		(CountryName,
		CityName,
		DateUpdate,
		BlogPageID,
		BlogPageName_en)
	SELECT 
		[Name_en],
		'',
		[DateUpdate],
		0,
		''
	FROM 
		[dbo].[Country]
	WHERE
		Active = 1
	
	INSERT INTO @SiteMap
		(CountryName,
		CityName,
		DateUpdate,
		BlogPageID,
		BlogPageName_en)
	SELECT     
		Country.Name_en, 
		City.Name_en, 
		City.DateUpdate,
		0,
		''
	FROM         
		City 
	INNER JOIN
        Country ON City.CountryID = Country.CountryID
    WHERE
		City.Active = 1
		AND
		Country.Active = 1

	INSERT INTO @SiteMap
		(CountryName,
		CityName,
		DateUpdate,
		BlogPageID,
		BlogPageName_en)
	SELECT     
		'', 
		'', 
		BlogPage.DateUpdate,
		BlogPage.BlogPageID,
		BlogPage.Name_en
	FROM         
		BlogPage 
    WHERE
		BlogPage.Active = 1
        
    SELECT
		*
	FROM
		@SiteMap
	ORDER BY
		DateUpdate DESC
		
END