
CREATE PROCEDURE [dbo].[DeleteCity]
(
	@CityID int
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	DELETE
	FROM [City]
	WHERE
		[CityID] = @CityID
	SET @Err = @@Error

	RETURN @Err
END