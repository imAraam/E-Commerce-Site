CREATE PROC AccountViewById
@Id int
AS
BEGIN
	SELECT *
	FROM AccountDetails
	WHERE Id = @Id
END