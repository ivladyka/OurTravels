CREATE PROCEDURE [dbo].[InsertBlogPageCity]
(
	@BlogPageCityID int = NULL output,
	@BlogPageID int,
	@CityID int
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	INSERT
	INTO [BlogPageCity]
	(
		BlogPageID,
		CityID
	)
	VALUES
	(
		@BlogPageID,
		@CityID
	)

	SET @Err = @@Error

	SELECT @BlogPageCityID = SCOPE_IDENTITY()

	RETURN @Err
END