CREATE PROCEDURE [dbo].[usp_City_LoadDetailInfo]
(
	@CityID int
)
AS
BEGIN
	SELECT     
		City.CityID, 
		City.Name, 
		City.Name_en, 
		Country.Name AS CountryName, 
		Country.Name_en AS CountryName_en, 
		City.Content,
		City.[TitleImage],
		City.[MainImage]
	FROM         
		City 
	INNER JOIN
        Country ON City.CountryID = Country.CountryID
    WHERE
		City.CityID = @CityID
END