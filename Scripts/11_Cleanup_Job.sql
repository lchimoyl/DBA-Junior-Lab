USE msdb;
GO

EXEC sp_add_job
    @job_name = 'Cleanup_Old_Records';
GO

EXEC sp_add_jobstep
    @job_name = 'Cleanup_Old_Records',
    @step_name = 'Delete_Old_Records',
    @subsystem = 'TSQL',
    @database_name = 'DBAJuniorLab',
    @command = '
DELETE FROM Ventas
WHERE FechaVenta < DATEADD(MONTH, -6, GETDATE());
';
GO

EXEC sp_add_schedule
    @schedule_name = 'Cleanup_Daily',
    @freq_type = 4,
    @freq_interval = 1,
    @active_start_time = 233500;
GO

EXEC sp_attach_schedule
    @job_name = 'Cleanup_Old_Records',
    @schedule_name = 'Cleanup_Daily';
GO

EXEC sp_add_jobserver
    @job_name = 'Cleanup_Old_Records';
GO
