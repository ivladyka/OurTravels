CREATE PROCEDURE [dbo].[InsertCountrySite]
(
	@CountrySiteID int = NULL output,
	@CountryID int,
	@SiteID int
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	INSERT
	INTO [CountrySite]
	(
		CountryID,
		SiteID
	)
	VALUES
	(
		@CountryID,
		@SiteID
	)

	SET @Err = @@Error

	SELECT @CountrySiteID = SCOPE_IDENTITY()

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