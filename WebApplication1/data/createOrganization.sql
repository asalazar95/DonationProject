CREATE TABLE [dbo].[Organization]
(
	[Organization] NVARCHAR(50) NOT NULL,
    CONSTRAINT [PK_ORGANIZATION] PRIMARY KEY ([Organization])
)
	SELECT DISTINCT Organization
	FROM dbo.UserProfiles2
	GROUP BY Organization;