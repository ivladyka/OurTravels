CREATE PROCEDURE [dbo].[LoadCountrySiteByPrimaryKey]
(
	@CountrySiteID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CountrySiteID]
      ,[CountryID]
      ,[SiteID]
	FROM 
		[CountrySite]
	WHERE
		([CountrySiteID] = @CountrySiteID)

	SET @Err = @@Error

	RETURN @Err
END