CREATE PROCEDURE [dbo].[UpdateCountrySite]
(
	@CountrySiteID int,
	@CountryID int,
	@SiteID int
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	UPDATE [CountrySite]
	SET
		CountryID = @CountryID,
		SiteID = @SiteID
	WHERE
		[CountrySiteID] = @CountrySiteID


	SET @Err = @@Error

	UPDATE 
		Country
	SET
		[DateUpdate] = GETDATE()
	WHERE
		[CountryID] = @CountryID

	UPDATE
		City
	SET
		[DateUpdate] = GETDATE()
	WHERE
		City.CountryID = @CountryID

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
	WHERE
		City.CountryID = @CountryID

	RETURN @Err
END