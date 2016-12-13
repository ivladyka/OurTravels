
CREATE PROCEDURE [dbo].[LoadCityByPrimaryKey]
(
	@CityID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CityID],
		[Name],
		[Name_en],
		[CountryID],
		[Content],
		[Keywords],
		[Active],
		[Description],
		[DateUpdate],
		[TitleImage],
		[MainImage]
	FROM [City]
	WHERE
		([CityID] = @CityID)

	SET @Err = @@Error

	RETURN @Err
END