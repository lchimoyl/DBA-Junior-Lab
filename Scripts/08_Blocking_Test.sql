USE DBAJuniorLab;
GO

BEGIN TRAN;

UPDATE Clientes
SET Nombre = 'Luis DBA'
WHERE ClienteID = 1;

-- COMMIT;
-- GO

UPDATE Clientes
SET Nombre = 'Bloqueado'
WHERE ClienteID = 1;
GO

SELECT
    blocking_session_id,
    session_id,
    wait_type,
    wait_time,
    wait_resource,
    status,
    command
FROM sys.dm_exec_requests
WHERE blocking_session_id <> 0;
GO
