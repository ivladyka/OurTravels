
CREATE PROCEDURE [dbo].[InsertSettings]
(
	@SettingID int = NULL output,
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

	INSERT
	INTO [Settings]
	(
		[UserName],
		[Password],
		[Keywords],
		[Title],
		[Description],
		[TitleSuffix]
	)
	VALUES
	(
		@UserName,
		@Password,
		@Keywords,
		@Title,
		@Description,
		@TitleSuffix
	)

	SET @Err = @@Error

	SELECT @SettingID = SCOPE_IDENTITY()

	RETURN @Err
END