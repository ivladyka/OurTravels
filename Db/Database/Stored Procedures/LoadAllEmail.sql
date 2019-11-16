CREATE PROCEDURE [dbo].[LoadAllEmail]
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

	SET @Err = @@Error

	RETURN @Err
END