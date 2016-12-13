
CREATE PROCEDURE [dbo].[InsertCountry]
(
	@CountryID int = NULL output,
	@Name varchar(50),
	@Name_en varchar(50),
	@Content varchar(MAX) = NULL,
	@Keywords varchar(250) = NULL,
	@Active bit,
	@CapitalID int = NULL,
	@Description varchar(200) = NULL,
	@DateUpdate smalldatetime = NULL,
	@MainImage varchar(100) = NULL
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	INSERT
	INTO [Country]
	(
		[Name],
		[Name_en],
		[Content],
		[Keywords],
		[Active],
		[CapitalID],
		[Description],
		[DateUpdate],
		[MainImage]
	)
	VALUES
	(
		@Name,
		@Name_en,
		@Content,
		@Keywords,
		@Active,
		@CapitalID,
		@Description,
		@DateUpdate,
		@MainImage
	)

	SET @Err = @@Error

	SELECT @CountryID = SCOPE_IDENTITY()

	RETURN @Err
END