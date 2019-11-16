
CREATE PROCEDURE [dbo].[DeleteEmailType]
(
	@EmailTypeID int
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	DELETE
	FROM [EmailType]
	WHERE
		[EmailTypeID] = @EmailTypeID
	SET @Err = @@Error

	RETURN @Err
END