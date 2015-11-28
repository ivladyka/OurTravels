CREATE PROCEDURE [dbo].[usp_Country_LoadWithCapital]
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int
	
    SELECT     
		Country.CountryID, 
		Country.Name, 
		Country.Name_en, 
		Country.Keywords, 
		Country.Active, 
        City.Name AS CapitalName,
        '' AS URL
	FROM         
		Country 
	LEFT OUTER JOIN
		City ON Country.CapitalID = City.CityID
	
	SET @Err = @@Error

	RETURN @Err
	
END