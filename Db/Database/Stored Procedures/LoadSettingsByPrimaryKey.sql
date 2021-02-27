
CREATE PROCEDURE [dbo].[LoadSettingsByPrimaryKey]
(
	@SettingID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[SettingID],
		[UserName],
		[Password],
		[Keywords],
		[Title],
		[Description],
		[TitleSuffix],
		[Advert1],
		[Advert2],
		[Advert3]
	FROM [Settings]
	WHERE
		([SettingID] = @SettingID)

	SET @Err = @@Error

	RETURN @Err
END