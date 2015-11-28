
CREATE PROCEDURE [dbo].[usp_City_LoadByCountryID]
(
	@CountryID int
)
AS
BEGIN
	
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT [CityID]
      ,[City].[Name]
      ,[City].[Name_en]
      ,Country.Name_en AS CountryName
	FROM 
		[dbo].[City]
	INNER JOIN
		Country ON City.CountryID = Country.CountryID
	WHERE
		[City].[CountryID] = @CountryID
		AND
		[City].[Active] = 1

	SET @Err = @@Error

	RETURN @Err
	
END