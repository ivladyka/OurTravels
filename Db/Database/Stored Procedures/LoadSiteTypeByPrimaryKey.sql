
CREATE PROCEDURE [dbo].[LoadSiteTypeByPrimaryKey]
(
	@SiteTypeID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[SiteTypeID],
		[Name],
		[OrderIndex]
	FROM [SiteType]
	WHERE
		([SiteTypeID] = @SiteTypeID)

	SET @Err = @@Error

	RETURN @Err
END