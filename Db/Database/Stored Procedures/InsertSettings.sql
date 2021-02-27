
CREATE PROCEDURE [dbo].[InsertSettings]
(
	@SettingID int = NULL output,
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

	INSERT
	INTO [Settings]
	(
		[UserName],
		[Password],
		[Keywords],
		[Title],
		[Description],
		[TitleSuffix],
		[Advert1],
		[Advert2],
		[Advert3]
	)
	VALUES
	(
		@UserName,
		@Password,
		@Keywords,
		@Title,
		@Description,
		@TitleSuffix,
		@Advert1,
		@Advert2,
		@Advert3
	)

	SET @Err = @@Error

	SELECT @SettingID = SCOPE_IDENTITY()

	RETURN @Err
END