
CREATE PROCEDURE [dbo].[LoadAllCountry]
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

	SET @Err = @@Error

	RETURN @Err
END