
CREATE PROCEDURE [dbo].[LoadAllSettings]
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

	SET @Err = @@Error

	RETURN @Err
END