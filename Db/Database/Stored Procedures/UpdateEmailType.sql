CREATE PROCEDURE [dbo].[UpdateEmailType]
(
	@EmailTypeID int,
	@Name varchar(50)
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	UPDATE [EmailType]
	SET
		[Name] = @Name
	WHERE
		[EmailTypeID] = @EmailTypeID


	SET @Err = @@Error


	RETURN @Err
END