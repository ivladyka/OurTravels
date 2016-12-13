CREATE PROCEDURE [dbo].[usp_BlogPage_SearchByCityIDAndCountryID]
(
	@CityID int,
	@CountryID int
)
AS
BEGIN
	
	SELECT DISTINCT
		bp.BlogPageID
		,bp.[Name]
		,bp.[Name_en]
		,CASE WHEN CHARINDEX('&nbsp;end', bp.[PageContent]) > 0 
			THEN SUBSTRING(bp.[PageContent], 0, CHARINDEX('&nbsp;end', bp.[PageContent])) ELSE bp.[PageContent] END AS PageContent
		,bp.[Keywords]
		,bp.[Description]
		,bp.[DateUpdate]
		,bp.[StartTravelDate]
		,bp.[EndTravelDate]
		,bp.[DatePublish], 
		'' AS URL,
		bp.[TitleImage],
		bp.[BlogDescription],
		bp.MainImage
	FROM
		BlogPage bp
	INNER JOIN
        BlogPageCity bpc ON bp.BlogPageID = bpc.BlogPageID
	INNER JOIN
        City c ON bpc.CityID = c.CityID
	WHERE
		(bpc.CityID = @CityID OR @CityID = 0)
		AND
		(c.CountryID = @CountryID OR @CountryID = 0)

END