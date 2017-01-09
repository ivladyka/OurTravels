CREATE PROCEDURE [dbo].[InsertCitySite]
(
	@CitySiteID int = NULL output,
	@CityID int,
	@SiteID int
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	INSERT
	INTO [CitySite]
	(
		CityID,
		SiteID
	)
	VALUES
	(
		@CityID,
		@SiteID
	)

	SET @Err = @@Error

	SELECT @CitySiteID = SCOPE_IDENTITY()

	UPDATE [City]
	SET
		[DateUpdate] = GETDATE()
	WHERE
		[CityID] = @CityID

	UPDATE
		bp
	SET
		bp.[DateUpdate] = GETDATE()
	FROM            
		BlogPage AS bp 
	INNER JOIN
        BlogPageCity ON bp.BlogPageID = BlogPageCity.BlogPageID
	WHERE
		BlogPageCity.CityID = @CityID

	RETURN @Err
END