SELECT Id, [Name], Size
	FROM Files
	WHERE [Name] LIKE '%html%' AND Size > 1000
	ORDER BY Size DESC, Id, [Name]