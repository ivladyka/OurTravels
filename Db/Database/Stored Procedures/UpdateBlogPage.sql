﻿
CREATE PROCEDURE [dbo].[UpdateBlogPage]
(
	@BlogPageID int,
	@Name varchar(255),
	@Name_en varchar(255),
	@PageContent varchar(MAX) = NULL,
	@Keywords varchar(250) = NULL,
	@Active bit,
	@Description varchar(200) = NULL,
	@DateUpdate smalldatetime = NULL,
	@StartTravelDate smalldatetime = NULL,
	@EndTravelDate smalldatetime = NULL,
	@DatePublish smalldatetime = NULL,
	@IsBlogPage bit
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	UPDATE [BlogPage]
	SET
		[Name] = @Name,
		[Name_en] = @Name_en,
		[PageContent] = @PageContent,
		[Keywords] = @Keywords,
		[Active] = @Active,
		[Description] = @Description,
		[DateUpdate] = @DateUpdate,
		[StartTravelDate] = @StartTravelDate,
		[EndTravelDate] = @EndTravelDate,
		[DatePublish] = @DatePublish,
		[IsBlogPage] = @IsBlogPage
	WHERE
		[BlogPageID] = @BlogPageID


	SET @Err = @@Error


	RETURN @Err
END