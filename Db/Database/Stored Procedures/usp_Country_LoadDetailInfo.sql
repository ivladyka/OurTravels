
CREATE PROCEDURE [dbo].[usp_Country_LoadDetailInfo]
(
	@CountryID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[Country].[CountryID],
		[Country].[Name],
		[Country].[Name_en],
		[Country].[Content],
		[Country].[Keywords],
		[Country].[Active],
		[Country].[CapitalID],
		[Country].[Description],
		City.Name AS CapitalName, 
		City.Name_en AS CapitalName_en,
		[Country].[MainImage]
	FROM 
		[Country]
	LEFT OUTER JOIN
		City ON Country.CapitalID = City.CityID
	WHERE
		[Country].[CountryID] = @CountryID

	SET @Err = @@Error

	RETURN @Err
	
END