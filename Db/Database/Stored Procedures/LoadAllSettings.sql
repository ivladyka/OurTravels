
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
		[TitleSuffix]
	FROM [Settings]

	SET @Err = @@Error

	RETURN @Err
END