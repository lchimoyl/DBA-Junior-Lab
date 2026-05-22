USE msdb;
GO

EXEC sp_add_job
    @job_name = 'Backup_DBAJuniorLab';
GO

EXEC sp_add_jobstep
    @job_name = 'Backup_DBAJuniorLab',
    @step_name = 'Backup_Full',
    @subsystem = 'TSQL',
    @database_name = 'DBAJuniorLab',
    @command = '
BACKUP DATABASE DBAJuniorLab
TO DISK = ''C:\Backups\DBAJuniorLab_Job.bak''
WITH FORMAT,
NAME = ''Automatic Backup DBAJuniorLab'';
';
GO

EXEC sp_add_schedule
    @schedule_name = 'Backup_Diario',
    @freq_type = 4,
    @freq_interval = 1,
    @active_start_time = 230000;
GO

EXEC sp_attach_schedule
    @job_name = 'Backup_DBAJuniorLab',
    @schedule_name = 'Backup_Diario';
GO

EXEC sp_add_jobserver
    @job_name = 'Backup_DBAJuniorLab';
GO
