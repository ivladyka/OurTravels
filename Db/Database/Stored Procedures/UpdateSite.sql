
CREATE PROCEDURE [dbo].[UpdateSite]
(
	@SiteID int,
	@SiteTypeID int,
	@Name varchar(50),
	@URL varchar(500),
	@Active bit,
	@OrderIndex int = NULL,
	@Notes varchar(2000) = NULL,
	@Logo varchar(50) = NULL,
	@Banner varchar(50) = NULL,
	@Main bit,
	@Latitude decimal(9, 6) = NULL,
	@Longitude decimal(9, 6) = NULL
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	UPDATE [Site]
	SET
		[SiteTypeID] = @SiteTypeID,
		[Name] = @Name,
		[URL] = @URL,
		[Active] = @Active,
		[OrderIndex] = @OrderIndex,
		[Notes] = @Notes,
		[Logo] = @Logo,
		[Banner] = @Banner,
		[Main] = @Main,
		Latitude = @Latitude,
		Longitude = @Longitude
	WHERE
		[SiteID] = @SiteID

	IF @Main = 1
	 BEGIN
		UPDATE 
			Country
		SET
			[DateUpdate] = GETDATE()

		UPDATE
			City
		SET
			[DateUpdate] = GETDATE()

		UPDATE
			BlogPage
		SET
			[DateUpdate] = GETDATE()
	 END
	ELSE
	 BEGIN
		UPDATE
			bp
		SET
			bp.[DateUpdate] = GETDATE()
		FROM            
			BlogPage AS bp 
		INNER JOIN
			BlogPageCity ON bp.BlogPageID = BlogPageCity.BlogPageID
		INNER JOIN
			City ON BlogPageCity.CityID = City.CityID
		LEFT OUTER JOIN
			CitySite ON BlogPageCity.CityID = CitySite.CityID
		LEFT OUTER JOIN
			CountrySite ON City.CountryID = CountrySite.CountryID
		WHERE
			BlogPageCity.ShowSites = 1
			AND
			(ISNULL(CitySite.SiteID, 0) = @SiteID OR ISNULL(CountrySite.SiteID, 0) = @SiteID)

		UPDATE 
			c
		SET
			c.[DateUpdate] = GETDATE()
		FROM            
			Country AS c
		INNER JOIN
			CountrySite ON c.CountryID = CountrySite.CountryID
		WHERE
			CountrySite.SiteID = @SiteID

		UPDATE 
			c
		SET
			c.[DateUpdate] = GETDATE()
		FROM            
			City AS c
		INNER JOIN
			CitySite ON c.CityID = CitySite.CityID
		WHERE
			CitySite.SiteID = @SiteID

	 END


	SET @Err = @@Error


	RETURN @Err
END