
CREATE PROCEDURE [dbo].[DeleteBlogPage]
(
	@BlogPageID int
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	DELETE
	FROM [BlogPage]
	WHERE
		[BlogPageID] = @BlogPageID
	SET @Err = @@Error

	RETURN @Err
END