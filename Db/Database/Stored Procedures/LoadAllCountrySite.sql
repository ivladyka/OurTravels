CREATE PROCEDURE [dbo].[LoadAllCountrySite]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CountrySiteID]
      ,[CountryID]
      ,[SiteID]
	FROM [CountrySite]

	SET @Err = @@Error

	RETURN @Err
END