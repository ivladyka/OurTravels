
CREATE PROCEDURE [dbo].[DeleteSiteType]
(
	@SiteTypeID int
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	DELETE
	FROM [SiteType]
	WHERE
		[SiteTypeID] = @SiteTypeID
	SET @Err = @@Error

	RETURN @Err
END