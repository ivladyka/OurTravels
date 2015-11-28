
CREATE PROCEDURE [dbo].[InsertSite]
(
	@SiteID int = NULL output,
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

	INSERT
	INTO [Site]
	(
		[SiteTypeID],
		[Name],
		[URL],
		[Active],
		[OrderIndex],
		[Notes],
		[Logo],
		[Banner]
	)
	VALUES
	(
		@SiteTypeID,
		@Name,
		@URL,
		@Active,
		@OrderIndex,
		@Notes,
		@Logo,
		@Banner
	)

	SET @Err = @@Error

	SELECT @SiteID = SCOPE_IDENTITY()

	RETURN @Err
END