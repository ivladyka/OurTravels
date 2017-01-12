
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
		[Site].Main, 
		[Site].Notes, 
		[Site].OrderIndex,
		[Site].Latitude,
		[Site].Longitude
	FROM         
		[Site] 
	INNER JOIN
		SiteType ON [Site].SiteTypeID = SiteType.SiteTypeID
	ORDER BY
		[SiteID] DESC
	
	SET @Err = @@Error

	RETURN @Err
END