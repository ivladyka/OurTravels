CREATE PROCEDURE [dbo].[LoadAllCitySite]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CitySiteID]
      ,[CityID]
      ,[SiteID]
	FROM [CitySite]

	SET @Err = @@Error

	RETURN @Err
END