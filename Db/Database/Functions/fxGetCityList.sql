CREATE FUNCTION [dbo].[fxGetCityList]
(
	@SiteID int,
	@BlogPageID int
)
RETURNS varchar(max)
AS
BEGIN
	DECLARE @CityList varchar(max),
		@CityName varchar(50)

	SET @CityList = ''

	DECLARE BlogPageCity_crsr CURSOR
   	FOR
   	SELECT     
		City.Name 
	FROM
		BlogPageCity
	  INNER JOIN
		CitySite ON BlogPageCity.CityID = CitySite.CityID
	  INNER JOIN
		[Site] ON CitySite.SiteID = Site.SiteID
	  INNER JOIN
		City ON BlogPageCity.CityID = City.CityID
	  WHERE
		BlogPageCity.BlogPageID = @BlogPageID
		AND
		[Site].SiteID = @SiteID
		AND
		BlogPageCity.ShowSites = 1
		

	OPEN BlogPageCity_crsr

	FETCH NEXT FROM BlogPageCity_crsr INTO @CityName
	   WHILE @@Fetch_Status = 0
	     BEGIN

		SET @CityList = @CityList + @CityName + ';'

		FETCH NEXT FROM BlogPageCity_crsr INTO @CityName
	     END

	CLOSE BlogPageCity_crsr
	DEALLOCATE BlogPageCity_crsr


	RETURN @CityList

END