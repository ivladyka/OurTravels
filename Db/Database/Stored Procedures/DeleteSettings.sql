
CREATE PROCEDURE [dbo].[DeleteSettings]
(
	@SettingID int
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	DELETE
	FROM [Settings]
	WHERE
		[SettingID] = @SettingID
	SET @Err = @@Error

	RETURN @Err
END