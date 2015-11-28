
CREATE PROCEDURE [dbo].[LoadAllSiteType]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[SiteTypeID],
		[Name]
	FROM [SiteType]

	SET @Err = @@Error

	RETURN @Err
END