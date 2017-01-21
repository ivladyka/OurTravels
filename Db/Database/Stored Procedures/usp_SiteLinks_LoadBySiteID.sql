CREATE PROCEDURE [dbo].[usp_SiteLinks_LoadBySiteID]
(
	@SiteID int
)
AS
BEGIN
	
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT        
		CitySite.CitySiteID, 
		0 AS CountrySiteID,
		CitySite.CityID, 
		CitySite.SiteID, 
		City.Name AS CityName, 
		Country.Name AS CountryName,
		Country.CountryID
	FROM            
		CitySite 
	INNER JOIN
		City ON CitySite.CityID = City.CityID 
	INNER JOIN
		Country ON City.CountryID = Country.CountryID
	WHERE
		CitySite.SiteID = @SiteID
	UNION
	SELECT   
		0 AS CitySiteID,
		CountrySite.CountrySiteID, 
		0 AS CityID, 
		CountrySite.SiteID, 
		'' AS CityName, 
		Country.Name AS CountryName,
		CountrySite.CountryID
	FROM            
		CountrySite 
	INNER JOIN
		Country ON CountrySite.CountryID = Country.CountryID
	WHERE
		CountrySite.SiteID = @SiteID


	SET @Err = @@Error
	RETURN @Err

END