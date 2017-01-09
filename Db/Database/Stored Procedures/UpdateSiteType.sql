
CREATE PROCEDURE [dbo].[UpdateSiteType]
(
	@SiteTypeID int,
	@Name varchar(50),
	@OrderIndex int = NULL
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	UPDATE [SiteType]
	SET
		[Name] = @Name,
		[OrderIndex] = @OrderIndex
	WHERE
		[SiteTypeID] = @SiteTypeID


	SET @Err = @@Error


	RETURN @Err
END