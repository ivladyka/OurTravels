
CREATE PROCEDURE [dbo].[usp_Site_LoadWithSiteTypeName]
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT     
		[Site].SiteID, 
		[Site].Name, 
		SiteType.Name AS SiteTypeName, 
		[Site].URL, 
		[Site].Active, 
		[Site].Notes, 
		[Site].OrderIndex
	FROM         
		[Site] 
	INNER JOIN
		SiteType ON [Site].SiteTypeID = SiteType.SiteTypeID
	ORDER BY
		ISNULL(Site.OrderIndex, 0)
	
	SET @Err = @@Error

	RETURN @Err
END