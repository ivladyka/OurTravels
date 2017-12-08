CREATE PROCEDURE [dbo].[usp_City_LoadByBlogPageID]
(
	@BlogPageID int,
	@OnlyShowSites bit
)
AS
BEGIN
	
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT 
		[City].[CityID]
      ,[City].[Name]
      ,[City].[Name_en]
      ,Country.Name_en AS CountryName
	  ,[City].TitleImage
	  ,[City].BookingID
	FROM 
		BlogPageCity
	INNER JOIN
		[dbo].[City] ON BlogPageCity.[CityID] = [City].[CityID]
	INNER JOIN
		Country ON City.CountryID = Country.CountryID
	WHERE
		BlogPageCity.BlogPageID = @BlogPageID
		AND
		[City].[Active] = 1
		AND
		(BlogPageCity.ShowSites = @OnlyShowSites or @OnlyShowSites = 0)

	SET @Err = @@Error

	RETURN @Err

END