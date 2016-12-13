
CREATE PROCEDURE [dbo].[LoadBlogPageByPrimaryKey]
(
	@BlogPageID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[BlogPageID],
		[Name],
		[Name_en],
		[PageContent],
		[Keywords],
		[Active],
		[Description],
		[DateUpdate],
		[StartTravelDate],
		[EndTravelDate],
		[DatePublish],
		[IsBlogPage],
		[TitleImage],
		[BlogDescription],
		[MainImage]
	FROM [BlogPage]
	WHERE
		([BlogPageID] = @BlogPageID)

	SET @Err = @@Error

	RETURN @Err
END