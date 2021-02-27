
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
		[MainImage],
		[Advert1],
		[Advert2]
	FROM [Country]

	SET @Err = @@Error

	RETURN @Err
END