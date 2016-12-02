CREATE PROCEDURE [dbo].[UpdateBlogPageCity]
(
	@BlogPageCityID int,
	@BlogPageID int,
	@CityID int
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	UPDATE [BlogPageCity]
	SET
		BlogPageID = @BlogPageID,
		CityID = @CityID
	WHERE
		[BlogPageCityID] = @BlogPageCityID


	SET @Err = @@Error


	RETURN @Err
END