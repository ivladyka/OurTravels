
CREATE PROCEDURE [dbo].[UpdateSettings]
(
	@SettingID int,
	@UserName varchar(50),
	@Password varchar(50),
	@Keywords varchar(250) = NULL,
	@Title varchar(100) = NULL,
	@Description varchar(200) = NULL,
	@TitleSuffix varchar(100) = NULL
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	UPDATE [Settings]
	SET
		[UserName] = @UserName,
		[Password] = @Password,
		[Keywords] = @Keywords,
		[Title] = @Title,
		[Description] = @Description,
		[TitleSuffix] = @TitleSuffix
	WHERE
		[SettingID] = @SettingID


	SET @Err = @@Error


	RETURN @Err
END