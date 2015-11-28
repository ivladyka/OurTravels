
CREATE PROCEDURE [dbo].[UpdateSiteType]
(
	@SiteTypeID int,
	@Name varchar(50)
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	UPDATE [SiteType]
	SET
		[Name] = @Name
	WHERE
		[SiteTypeID] = @SiteTypeID


	SET @Err = @@Error


	RETURN @Err
END