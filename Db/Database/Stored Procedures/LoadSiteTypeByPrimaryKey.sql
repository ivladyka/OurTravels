
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
		[Name]
	FROM [SiteType]
	WHERE
		([SiteTypeID] = @SiteTypeID)

	SET @Err = @@Error

	RETURN @Err
END