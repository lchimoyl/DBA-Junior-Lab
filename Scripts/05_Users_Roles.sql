USE DBAJuniorLab;
GO

CREATE LOGIN analyst_user
WITH PASSWORD = 'Analyst2026*';
GO

CREATE USER analyst_user
FOR LOGIN analyst_user;
GO

ALTER ROLE db_datareader
ADD MEMBER analyst_user;
GO
