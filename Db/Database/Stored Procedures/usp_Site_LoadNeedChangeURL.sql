CREATE PROCEDURE [dbo].[usp_Site_LoadNeedChangeURL]
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
		[Site].SiteID IN (2, 3, 4, 9533)

	SET @Err = @@Error

	RETURN @Err

END