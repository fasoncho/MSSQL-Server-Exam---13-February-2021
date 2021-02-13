CREATE PROC usp_SearchForFiles(@fileExtension VARCHAR(5))
AS
SELECT Id, [Name], CAST(Size AS VARCHAR(30)) + 'KB' AS Size
	FROM Files
	WHERE [Name] LIKE '%' + @fileExtension
	ORDER BY Id, [Name], Size DESC

EXEC usp_SearchForFiles 'txt'