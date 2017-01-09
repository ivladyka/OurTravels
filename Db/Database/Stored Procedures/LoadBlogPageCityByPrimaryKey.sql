CREATE PROCEDURE [dbo].[LoadBlogPageCityByPrimaryKey]
(
	@BlogPageCityID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[BlogPageCityID]
      ,[BlogPageID]
      ,[CityID]
	   ,[ShowSites]
	FROM 
		[BlogPageCity]
	WHERE
		([BlogPageCityID] = @BlogPageCityID)

	SET @Err = @@Error

	RETURN @Err
END