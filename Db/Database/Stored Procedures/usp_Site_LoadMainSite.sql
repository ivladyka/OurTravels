CREATE PROCEDURE [dbo].[usp_Site_LoadMainSite]
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT     
		[Site].SiteID, 
		[Site].Name, 
		[Site].URL, 
		[Site].Banner,
		[Site].Logo,
		[Site].Notes,
		[Site].Main,
		[Site].SiteTypeID,
		[Site].Latitude,
		[Site].Longitude
	FROM         
		[Site] 
	WHERE
		[Site].Main = 1
		AND
		[Site].Active = 1
	ORDER BY
		ISNULL(Site.OrderIndex, 0)

	SET @Err = @@Error

	RETURN @Err
END