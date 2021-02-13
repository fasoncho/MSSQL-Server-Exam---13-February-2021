CREATE FUNCTION udf_AllUserCommits(@username VARCHAR(30))
RETURNS INT
BEGIN
DECLARE @CommitsCount INT = (SELECT COUNT(c.Id)
	FROM Commits AS c
	JOIN Users AS u ON u.Id = c.ContributorId
	WHERE u.Username = @username)
RETURN @CommitsCount
END

SELECT dbo.udf_AllUserCommits('UnderSinduxrein')