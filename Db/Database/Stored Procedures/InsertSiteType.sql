
CREATE PROCEDURE [dbo].[InsertSiteType]
(
	@SiteTypeID int = NULL output,
	@Name varchar(50),
	@OrderIndex int = NULL
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	INSERT
	INTO [SiteType]
	(
		[Name],
		[OrderIndex]
	)
	VALUES
	(
		@Name,
		@OrderIndex
	)

	SET @Err = @@Error

	SELECT @SiteTypeID = SCOPE_IDENTITY()

	RETURN @Err
END