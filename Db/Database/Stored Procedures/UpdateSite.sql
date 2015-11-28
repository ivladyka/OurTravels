
CREATE PROCEDURE [dbo].[UpdateSite]
(
	@SiteID int,
	@SiteTypeID int,
	@Name varchar(50),
	@URL varchar(500),
	@Active bit,
	@OrderIndex int = NULL,
	@Notes varchar(2000) = NULL,
	@Logo varchar(50) = NULL,
	@Banner varchar(50) = NULL
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	UPDATE [Site]
	SET
		[SiteTypeID] = @SiteTypeID,
		[Name] = @Name,
		[URL] = @URL,
		[Active] = @Active,
		[OrderIndex] = @OrderIndex,
		[Notes] = @Notes,
		[Logo] = @Logo,
		[Banner] = @Banner
	WHERE
		[SiteID] = @SiteID


	SET @Err = @@Error


	RETURN @Err
END