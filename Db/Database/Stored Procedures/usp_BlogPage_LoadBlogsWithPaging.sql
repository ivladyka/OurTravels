CREATE PROCEDURE [dbo].[usp_BlogPage_LoadBlogsWithPaging]
(
	@PageIndex int
    ,@PageSize int
    ,@RecordCount int OUTPUT 
)
AS
BEGIN
	
	DECLARE @BlogPages TABLE (
		BlogPageID int,
		RowIndex int)

	INSERT INTO 
		@BlogPages
	SELECT
		BlogPageID,
		ROW_NUMBER() OVER
		(
            ORDER BY DatePublish DESC
		)
	FROM
		BlogPage
	WHERE
		IsBlogPage = 1
		AND
		Active = 1
	ORDER BY
		DatePublish DESC

	SELECT 
		@RecordCount = COUNT(*)
    FROM 
		@BlogPages

	SELECT 
		bp.BlogPageID
	  ,bp.[Name]
      ,bp.[Name_en]
      ,bp.[PageContent]
      ,bp.[Keywords]
      ,bp.[Description]
      ,bp.[DateUpdate]
      ,bp.[StartTravelDate]
      ,bp.[EndTravelDate]
      ,bp.[DatePublish]
	FROM 
		@BlogPages bps
	INNER JOIN
		BlogPage bp ON bp.BlogPageID = bps.BlogPageID
    WHERE 
		bps.RowIndex BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1

	RETURN @RecordCount
END