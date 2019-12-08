CREATE PROC UserAccountUpdate
@Username NCHAR(15),
@Email NCHAR(25),
@Password NCHAR(15)
AS
BEGIN
	UPDATE AccountDetails
	SET
		Email = @Email,
		Password = @Password
	WHERE Username = @Username
END