CREATE PROCEDURE [dbo].[InsertEmailType]
(
	@EmailTypeID int = NULL output,
	@Name varchar(50)
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	INSERT
	INTO [EmailType]
	(
		[Name]
	)
	VALUES
	(
		@Name
	)

	SET @Err = @@Error

	SELECT @EmailTypeID = SCOPE_IDENTITY()

	RETURN @Err
END