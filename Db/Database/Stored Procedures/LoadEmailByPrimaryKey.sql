
CREATE PROCEDURE [dbo].[LoadEmailByPrimaryKey]
(
	@EmailID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[EmailID]
      ,[EmailAddress]
      ,[AddedDate]
      ,[EmailTypeID]
      ,[Sent]
	FROM [Email]
	WHERE
		([EmailID] = @EmailID)

	SET @Err = @@Error

	RETURN @Err
END