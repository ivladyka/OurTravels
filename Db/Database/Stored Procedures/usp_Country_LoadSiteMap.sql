CREATE PROCEDURE [dbo].[usp_Country_LoadSiteMap]
AS
BEGIN
	
	DECLARE @SiteMap TABLE(	
		CountryName varchar(50),
		CityName varchar(50),
		DateUpdate smalldatetime)
	
	INSERT INTO @SiteMap
		(CountryName,
		CityName,
		DateUpdate)
	SELECT 
		[Name_en],
		'',
		[DateUpdate]
	FROM 
		[dbo].[Country]
	WHERE
		Active = 1
	
	INSERT INTO @SiteMap
		(CountryName,
		CityName,
		DateUpdate)
	SELECT     
		Country.Name_en, 
		City.Name_en, 
		City.DateUpdate
	FROM         
		City 
	INNER JOIN
        Country ON City.CountryID = Country.CountryID
    WHERE
		City.Active = 1
		AND
		Country.Active = 1
        
    SELECT
		*
	FROM
		@SiteMap
	ORDER BY
		DateUpdate DESC
		
END