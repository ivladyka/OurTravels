CREATE PROCEDURE [dbo].[usp_SiteType_LoadWithIcon]
AS
BEGIN
	
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[SiteTypeID],
		[SiteTypeID] AS Icon,
		[Name],
		[OrderIndex]
	FROM [SiteType]

	SET @Err = @@Error

	RETURN @Err

END