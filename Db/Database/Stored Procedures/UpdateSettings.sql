
CREATE PROCEDURE [dbo].[UpdateSettings]
(
	@SettingID int,
	@UserName varchar(50),
	@Password varchar(50),
	@Keywords varchar(250) = NULL,
	@Title varchar(100) = NULL,
	@Description varchar(200) = NULL,
	@TitleSuffix varchar(100) = NULL,
	@Advert1 varchar(1000) = NULL,
	@Advert2 varchar(1000) = NULL,
	@Advert3 varchar(1000) = NULL
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
		[TitleSuffix] = @TitleSuffix,
		[Advert1] = @Advert1,
		[Advert2] = @Advert2,
		[Advert3] = @Advert3
	WHERE
		[SettingID] = @SettingID


	SET @Err = @@Error


	RETURN @Err
END