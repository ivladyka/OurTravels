CREATE PROCEDURE [dbo].[LoadEmailTypeByPrimaryKey]
(
	@EmailTypeID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[EmailTypeID]
      ,[Name]
	FROM [EmailType]
	WHERE
		([EmailTypeID] = @EmailTypeID)

	SET @Err = @@Error

	RETURN @Err
END