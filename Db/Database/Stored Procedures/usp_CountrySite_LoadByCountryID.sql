CREATE PROCEDURE [dbo].[usp_CountrySite_LoadByCountryID]
(
	@CountryID int
)
AS
BEGIN
	
	SELECT        
		CountrySite.CountrySiteID, 
		CountrySite.CountryID, 
		CountrySite.SiteID, 
		Site.Name AS SiteName
	FROM            
		CountrySite 
	INNER JOIN
		Site ON CountrySite.SiteID = Site.SiteID
	WHERE        
		CountrySite.CountryID = @CountryID

END