SELECT Id
	FROM Repositories
	WHERE [Name] = 'Softuni-Teamwork'

DELETE FROM RepositoriesContributors
WHERE RepositoryId = 3

DELETE FROM Issues
WHERE RepositoryId = 3