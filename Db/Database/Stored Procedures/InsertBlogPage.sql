
CREATE PROCEDURE [dbo].[InsertBlogPage]
(
	@BlogPageID int = NULL output,
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
	@IsBlogPage bit,
	@TitleImage varchar(50) = NULL,
	@BlogDescription varchar(250) = NULL
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	INSERT
	INTO [BlogPage]
	(
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
		[BlogDescription]
	)
	VALUES
	(
		@Name,
		@Name_en,
		@PageContent,
		@Keywords,
		@Active,
		@Description,
		@DateUpdate,
		@StartTravelDate,
		@EndTravelDate,
		@DatePublish,
		@IsBlogPage,
		@TitleImage,
		@BlogDescription
	)

	SET @Err = @@Error

	SELECT @BlogPageID = SCOPE_IDENTITY()

	RETURN @Err
END