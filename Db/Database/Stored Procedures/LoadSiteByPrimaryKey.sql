
CREATE PROCEDURE [dbo].[LoadSiteByPrimaryKey]
(
	@SiteID int
)
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
		[OrderIndex],
		[Notes],
		[Logo],
		[Banner],
		[Main],
		Latitude,
		Longitude
	FROM [Site]
	WHERE
		([SiteID] = @SiteID)

	SET @Err = @@Error

	RETURN @Err
END