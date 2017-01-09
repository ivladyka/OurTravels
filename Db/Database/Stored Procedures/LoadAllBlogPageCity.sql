
CREATE PROCEDURE [dbo].[LoadAllBlogPageCity]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[BlogPageCityID]
      ,[BlogPageID]
      ,[CityID]
	  ,[ShowSites]
	FROM [BlogPageCity]

	SET @Err = @@Error

	RETURN @Err
END