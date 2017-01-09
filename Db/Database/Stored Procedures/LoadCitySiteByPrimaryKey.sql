CREATE PROCEDURE [dbo].[LoadCitySiteByPrimaryKey]
(
	@CitySiteID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CitySiteID]
      ,[CityID]
      ,[SiteID]
	FROM 
		[CitySite]
	WHERE
		([CitySiteID] = @CitySiteID)

	SET @Err = @@Error

	RETURN @Err
END