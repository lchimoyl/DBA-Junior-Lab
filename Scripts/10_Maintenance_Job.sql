USE msdb;
GO

EXEC sp_add_job
    @job_name = 'Maintenance_DBAJuniorLab';
GO

-- Paso 1: Actualizar estadísticas
EXEC sp_add_jobstep
    @job_name = 'Maintenance_DBAJuniorLab',
    @step_name = 'Update_Statistics',
    @subsystem = 'TSQL',
    @database_name = 'DBAJuniorLab',
    @command = '
EXEC sp_updatestats;
';
GO

-- Paso 2: Reorganizar índices
EXEC sp_add_jobstep
    @job_name = 'Maintenance_DBAJuniorLab',
    @step_name = 'Reorganize_Indexes',
    @subsystem = 'TSQL',
    @database_name = 'DBAJuniorLab',
    @command = '
ALTER INDEX ALL ON Ventas REORGANIZE;
';
GO

EXEC sp_add_schedule
    @schedule_name = 'Maintenance_Daily',
    @freq_type = 4,
    @freq_interval = 1,
    @active_start_time = 233000;
GO

EXEC sp_attach_schedule
    @job_name = 'Maintenance_DBAJuniorLab',
    @schedule_name = 'Maintenance_Daily';
GO

EXEC sp_add_jobserver
    @job_name = 'Maintenance_DBAJuniorLab';
GO
