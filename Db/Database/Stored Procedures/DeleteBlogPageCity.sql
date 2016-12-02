CREATE PROCEDURE [dbo].[DeleteBlogPageCity]
(
	@BlogPageCityID int
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	DELETE
	FROM BlogPageCity
	WHERE
		BlogPageCityID = @BlogPageCityID
	SET @Err = @@Error

	RETURN @Err
END