CREATE PROCEDURE [dbo].[DeleteCountrySite]
(
	@CountrySiteID int
)
AS
BEGIN
	
	SET NOCOUNT ON
	DECLARE @Err int

	DELETE
	FROM CountrySite
	WHERE
		CountrySiteID = @CountrySiteID
	SET @Err = @@Error

	RETURN @Err

END