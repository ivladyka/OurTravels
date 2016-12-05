
CREATE PROCEDURE [dbo].[LoadAllBlogPage]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[BlogPageID],
		[Name],
		[Name_en],
		--[PageContent],
		[Keywords],
		[Active],
		[Description],
		[DateUpdate],
		[StartTravelDate],
		[EndTravelDate],
		[DatePublish],
		[IsBlogPage], 
		'' AS URL,
		[TitleImage],
		[BlogDescription]
	FROM [BlogPage]

	SET @Err = @@Error

	RETURN @Err
END