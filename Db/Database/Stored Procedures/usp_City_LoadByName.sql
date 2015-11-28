CREATE PROCEDURE [dbo].[usp_City_LoadByName]
(
	@CityName varchar(50),
	@CountryName varchar(50)
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT     
		City.CityID
	FROM         
		City 
	INNER JOIN
		Country ON City.CountryID = Country.CountryID
	WHERE     
		City.Name_en = @CityName
		AND
		Country.Name_en = @CountryName

	SET @Err = @@Error

	RETURN @Err
END