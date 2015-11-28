
CREATE PROCEDURE [dbo].[InsertSiteType]
(
	@SiteTypeID int,
	@Name varchar(50)
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	INSERT
	INTO [SiteType]
	(
		[SiteTypeID],
		[Name]
	)
	VALUES
	(
		@SiteTypeID,
		@Name
	)

	SET @Err = @@Error


	RETURN @Err
END