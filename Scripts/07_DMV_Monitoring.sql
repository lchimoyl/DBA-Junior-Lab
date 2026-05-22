SELECT
    session_id,
    login_name,
    host_name,
    program_name,
    status,
    cpu_time,
    memory_usage
FROM sys.dm_exec_sessions
WHERE is_user_process = 1;
GO

SELECT TOP 10
    qs.execution_count,
    qs.total_worker_time / 1000 AS CPU_ms,
    qs.total_elapsed_time / 1000 AS TotalElapsed_ms,
    qs.total_logical_reads,
    SUBSTRING(qt.text,
        (qs.statement_start_offset/2) + 1,
        ((CASE qs.statement_end_offset
            WHEN -1 THEN DATALENGTH(qt.text)
            ELSE qs.statement_end_offset
        END - qs.statement_start_offset)/2) + 1
    ) AS QueryText
FROM sys.dm_exec_query_stats qs
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) qt
ORDER BY qs.total_worker_time DESC;
GO
