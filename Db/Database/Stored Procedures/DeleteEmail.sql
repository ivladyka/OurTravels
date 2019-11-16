
CREATE PROCEDURE [dbo].[DeleteEmail]
(
	@EmailID int
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	DELETE
	FROM [Email]
	WHERE
		[EmailID] = @EmailID
	SET @Err = @@Error

	RETURN @Err
END