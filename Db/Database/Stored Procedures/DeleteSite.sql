
CREATE PROCEDURE [dbo].[DeleteSite]
(
	@SiteID int
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	DELETE
	FROM [Site]
	WHERE
		[SiteID] = @SiteID
	SET @Err = @@Error

	RETURN @Err
END