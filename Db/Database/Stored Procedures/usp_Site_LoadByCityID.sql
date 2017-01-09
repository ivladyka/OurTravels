CREATE PROCEDURE [dbo].[usp_Site_LoadByCityID]
(
	@CityID int
)
AS
BEGIN
	
	SET NOCOUNT ON
	DECLARE @Err int, @CountryID int

	SELECT
		@CountryID = CountryID
	FROM
		City
	WHERE
		CityID = @CityID

	DECLARE @RelatedSites TABLE
	(
		SiteID int,
		SiteTypeSubOrderIndex tinyint
	)

	INSERT
	  @RelatedSites
	  (
		SiteID,
		SiteTypeSubOrderIndex
	  )
	  SELECT 
		[Site].SiteID, 
		0
	  FROM
		CitySite
	  INNER JOIN
		[Site] ON CitySite.SiteID = Site.SiteID
	  WHERE
		CitySite.CityID = @CityID
		AND
		[Site].Active = 1

	INSERT
	  @RelatedSites
	  (
		SiteID,
		SiteTypeSubOrderIndex
	  )
	  SELECT 
		[Site].SiteID, 
		1
	  FROM
		CountrySite
	  INNER JOIN
		[Site] ON CountrySite.SiteID = Site.SiteID
	  WHERE
		CountrySite.CountryID = @CountryID
		AND
		[Site].Active = 1
		AND
		CountrySite.SiteID NOT IN (SELECT SiteID FROM @RelatedSites)

	INSERT
	  @RelatedSites
	  (
		SiteID,
		SiteTypeSubOrderIndex
	  )
	  SELECT 
		[Site].SiteID, 
		2
	  FROM
		[Site]
	  WHERE
		[Site].Main = 1
		AND
		[Site].Active = 1
		AND
		[Site].SiteID NOT IN (SELECT SiteID FROM @RelatedSites)

	SELECT 
		[Site].SiteID, 
		[Site].Name, 
		[Site].URL, 
		[Site].Banner,
		[Site].Logo,
		[Site].Notes,
		[Site].Main,
		[Site].SiteTypeID,
		SiteType.Name AS SiteTypeName
	FROM
		@RelatedSites rs
	INNER JOIN 
		[Site] ON rs.SiteID = Site.SiteID
	INNER JOIN
		SiteType ON Site.SiteTypeID = SiteType.SiteTypeID
	ORDER BY
		ISNULL(SiteType.OrderIndex, 0), 
		rs.SiteTypeSubOrderIndex,
		ISNULL(Site.OrderIndex, 0)

	SET @Err = @@Error

	RETURN @Err

END