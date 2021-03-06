CREATE PROCEDURE [dbo].[UpdateBlogPageCity]
(
	@BlogPageCityID int,
	@BlogPageID int,
	@CityID int,
	@ShowSites bit
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	UPDATE [BlogPageCity]
	SET
		BlogPageID = @BlogPageID,
		CityID = @CityID,
		ShowSites = @ShowSites
	WHERE
		[BlogPageCityID] = @BlogPageCityID


	SET @Err = @@Error

	UPDATE [BlogPage]
	SET
		[DateUpdate] = GETDATE()
	WHERE
		[BlogPageID] = @BlogPageID

	UPDATE [City]
	SET
		[DateUpdate] = GETDATE()
	WHERE
		[CityID] = @CityID

	DECLARE @CountryID int

	SELECT 
		@CountryID = CountryID
	FROM
		[City]
	WHERE
		CityID = @CityID

	IF @CountryID IS NOT NULL
	 BEGIN
		UPDATE [Country]
		SET
			[DateUpdate] = GETDATE()
		WHERE
			[CountryID] = @CountryID
	 END

	RETURN @Err
END