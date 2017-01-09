CREATE PROCEDURE [dbo].[DeleteCitySite]
(
	@CitySiteID int
)
AS
BEGIN
	
	SET NOCOUNT ON
	DECLARE @Err int

	DELETE
	FROM CitySite
	WHERE
		CitySiteID = @CitySiteID
	SET @Err = @@Error

	RETURN @Err

END