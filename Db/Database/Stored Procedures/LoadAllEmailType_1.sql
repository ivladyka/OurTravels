
CREATE PROCEDURE [dbo].[LoadAllEmailType]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[EmailTypeID]
      ,[Name]
	FROM [EmailType]

	SET @Err = @@Error

	RETURN @Err
END