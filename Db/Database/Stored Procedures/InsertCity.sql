
CREATE PROCEDURE [dbo].[InsertCity]
(
	@CityID int = NULL output,
	@Name varchar(50),
	@Name_en varchar(50),
	@CountryID int,
	@Content varchar(MAX) = NULL,
	@Keywords varchar(250) = NULL,
	@Active bit,
	@Description varchar(200) = NULL,
	@DateUpdate smalldatetime = NULL
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	INSERT
	INTO [City]
	(
		[Name],
		[Name_en],
		[CountryID],
		[Content],
		[Keywords],
		[Active],
		[Description],
		[DateUpdate]
	)
	VALUES
	(
		@Name,
		@Name_en,
		@CountryID,
		@Content,
		@Keywords,
		@Active,
		@Description,
		@DateUpdate
	)

	SET @Err = @@Error

	SELECT @CityID = SCOPE_IDENTITY()

	RETURN @Err
END