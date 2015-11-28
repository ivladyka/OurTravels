
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
		[OrderIndex],
		[Notes],
		[Logo],
		[Banner]
	FROM [Site]

	SET @Err = @@Error

	RETURN @Err
END