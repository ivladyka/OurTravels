CREATE PROCEDURE [dbo].[UpdateEmail]
(
	@EmailID int,
	@EmailAddress varchar(255),
	@AddedDate smalldatetime,
	@EmailTypeID int,
	@Sent bit
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	UPDATE [Email]
	SET
		[EmailAddress] = @EmailAddress,
		[AddedDate] = @AddedDate,
		[EmailTypeID] = @EmailTypeID,
		[Sent] = @Sent
	WHERE
		[EmailID] = @EmailID


	SET @Err = @@Error


	RETURN @Err
END