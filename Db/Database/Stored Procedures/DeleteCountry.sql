
CREATE PROCEDURE [dbo].[DeleteCountry]
(
	@CountryID int
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	DELETE
	FROM [Country]
	WHERE
		[CountryID] = @CountryID
	SET @Err = @@Error

	RETURN @Err
END