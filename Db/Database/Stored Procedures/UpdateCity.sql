﻿
CREATE PROCEDURE [dbo].[UpdateCity]
(
	@CityID int,
	@Name varchar(50),
	@Name_en varchar(50),
	@CountryID int,
	@Content varchar(MAX) = NULL,
	@Keywords varchar(250) = NULL,
	@Active bit,
	@Description varchar(200) = NULL,
	@DateUpdate smalldatetime = NULL,
	@TitleImage varchar(100) = NULL,
	@MainImage varchar(100) = NULL,
	@BookingID varchar(15) = NULL,
	@Advert1 varchar(1000) = NULL,
	@Advert2 varchar(1000) = NULL
)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	UPDATE [City]
	SET
		[Name] = @Name,
		[Name_en] = @Name_en,
		[CountryID] = @CountryID,
		[Content] = @Content,
		[Keywords] = @Keywords,
		[Active] = @Active,
		[Description] = @Description,
		[DateUpdate] = @DateUpdate,
		[TitleImage] = @TitleImage,
		[MainImage] = @MainImage,
		[BookingID] = @BookingID,
		[Advert1] = @Advert1,
		[Advert2] = @Advert2
	WHERE
		[CityID] = @CityID


	SET @Err = @@Error


	RETURN @Err
END