CREATE PROCEDURE [dbo].[usp_City_LoadWithCountry]
AS
BEGIN
	
	SELECT     
		City.CityID, 
		City.Name, 
		Country.Name AS CountryName, 
		City.Description, 
		City.Active,
		City.Name_en, 
		Country.Name_en AS CountryName_en, 
		'' AS URL
	FROM         
		City 
	LEFT OUTER JOIN
        Country ON City.CountryID = Country.CountryID
	
END