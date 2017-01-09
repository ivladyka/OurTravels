CREATE PROCEDURE [dbo].[InsertBlogPageCity]
(
	@BlogPageCityID int = NULL output,
	@BlogPageID int,
	@CityID int,
	@ShowSites bit
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	INSERT
	INTO [BlogPageCity]
	(
		BlogPageID,
		CityID,
		ShowSites
	)
	VALUES
	(
		@BlogPageID,
		@CityID,
		@ShowSites
	)

	SET @Err = @@Error

	SELECT @BlogPageCityID = SCOPE_IDENTITY()

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

	RETURN @Err
END