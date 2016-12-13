
CREATE PROCEDURE [dbo].[LoadCountryByPrimaryKey]
(
	@CountryID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CountryID],
		[Name],
		[Name_en],
		[Content],
		[Keywords],
		[Active],
		[CapitalID],
		[Description],
		[DateUpdate],
		[MainImage]
	FROM [Country]
	WHERE
		([CountryID] = @CountryID)

	SET @Err = @@Error

	RETURN @Err
END