CREATE PROC ProductDelete
@Id int
AS
BEGIN
	DELETE FROM ProductInfo
	WHERE Id = @Id
END