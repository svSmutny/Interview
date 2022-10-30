SELECT name FROM(
	SELECT *
	FROM [dbo].[Projects]
	WHERE Deleted = 0 AND Path LIKE "other\Data%")
	GROUP BY [Name]
	HAVING COUNT(*) > 1;