CREATE PROCEDURE [dbo].[usp_CitySite_LoadByCityID]
(
	@CityID int
)
AS
BEGIN
	
	SELECT        
		CitySite.CitySiteID, 
		CitySite.CityID, 
		CitySite.SiteID, 
		Site.Name AS SiteName
	FROM            
		CitySite 
	INNER JOIN
		Site ON CitySite.SiteID = Site.SiteID
	WHERE        
		CitySite.CityID = @CityID

END