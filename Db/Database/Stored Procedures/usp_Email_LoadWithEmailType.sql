CREATE PROCEDURE [dbo].[usp_Email_LoadWithEmailType]
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int
	
    SELECT     
		Email.[EmailID]
      ,Email.[EmailAddress]
      ,Email.[AddedDate]
      ,Email.[EmailTypeID]
      ,Email.[Sent]
	  , EmailType.Name AS EmailTypeName
	FROM         
		Email 
	INNER JOIN
		EmailType ON EmailType.EmailTypeID = Email.EmailTypeID
	
	SET @Err = @@Error

	RETURN @Err
END