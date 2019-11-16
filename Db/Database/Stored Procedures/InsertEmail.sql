
CREATE PROCEDURE [dbo].[InsertEmail]
(
	@EmailID int = NULL output,
	@EmailAddress varchar(255),
	@AddedDate smalldatetime,
	@EmailTypeID int,
	@Sent bit
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	INSERT
	INTO [Email]
	(
		[EmailAddress],
		[AddedDate],
		[EmailTypeID],
		[Sent]
	)
	VALUES
	(
		@EmailAddress,
		@AddedDate,
		@EmailTypeID,
		@Sent
	)

	SET @Err = @@Error

	SELECT @EmailID = SCOPE_IDENTITY()

	RETURN @Err
END