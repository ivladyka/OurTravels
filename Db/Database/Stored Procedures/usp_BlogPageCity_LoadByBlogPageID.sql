CREATE PROCEDURE [dbo].[usp_BlogPageCity_LoadByBlogPageID]
(
	@BlogPageID int
)
AS
BEGIN
	
	SELECT        
		BlogPageCity.BlogPageCityID, 
		BlogPageCity.BlogPageID, 
		BlogPageCity.CityID, 
		City.Name AS CityName,
		BlogPageCity.ShowSites
	FROM            
		BlogPageCity 
	INNER JOIN
		City ON BlogPageCity.CityID = City.CityID
	WHERE        
		BlogPageCity.BlogPageID = @BlogPageID

END