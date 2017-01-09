CREATE PROCEDURE [dbo].[UpdateCitySite]
(
	@CitySiteID int,
	@CityID int,
	@SiteID int
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	UPDATE [CitySite]
	SET
		CityID = @CityID,
		SiteID = @SiteID
	WHERE
		[CitySiteID] = @CitySiteID


	SET @Err = @@Error

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