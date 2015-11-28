
CREATE PROCEDURE [dbo].[UpdateCountry]
(
	@CountryID int,
	@Name varchar(50),
	@Name_en varchar(50),
	@Content varchar(MAX) = NULL,
	@Keywords varchar(250) = NULL,
	@Active bit,
	@CapitalID int = NULL,
	@Description varchar(200) = NULL,
	@DateUpdate smalldatetime = NULL
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	UPDATE [Country]
	SET
		[Name] = @Name,
		[Name_en] = @Name_en,
		[Content] = @Content,
		[Keywords] = @Keywords,
		[Active] = @Active,
		[CapitalID] = @CapitalID,
		[Description] = @Description,
		[DateUpdate] = @DateUpdate
	WHERE
		[CountryID] = @CountryID


	SET @Err = @@Error


	RETURN @Err
END