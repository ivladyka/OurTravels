
CREATE PROCEDURE [dbo].[usp_BlogPage_SearchByBlogPageID]
(
	@BlogPageID int
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
	WHERE
		bp.BlogPageID <> @BlogPageID
		AND
		bpc.CityID IN (SELECT CityID FROM BlogPageCity WHERE BlogPageID = @BlogPageID)

END