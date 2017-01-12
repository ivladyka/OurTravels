
CREATE PROCEDURE [dbo].[LoadAllSite]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[SiteID],
		[SiteTypeID],
		[Name],
		[URL],
		[Active],
		[Main],
		[OrderIndex],
		[Notes],
		[Logo],
		[Banner],
		Latitude,
		Longitude
	FROM [Site]

	SET @Err = @@Error

	RETURN @Err
END