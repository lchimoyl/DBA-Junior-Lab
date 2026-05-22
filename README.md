# DBA Junior Lab - SQL Server

Laboratorio práctico de administración y monitoreo de bases de datos en SQL Server, desarrollado en un entorno virtualizado con Windows Server 2022.

Proyecto orientado a demostrar habilidades reales, incluyendo automatización, seguridad, optimización de consultas, monitoreo y recuperación ante desastres.

---

# Objetivo del proyecto

Simular tareas reales realizadas por un Administrador de Bases de Datos (DBA), aplicando buenas prácticas de administración, rendimiento, monitoreo y automatización en SQL Server.

---

# Tecnologías utilizadas

- SQL Server 2025 Developer Edition
- SQL Server Management Studio 22
- Windows Server 2022
- Oracle VirtualBox
- T-SQL
- SQL Server Agent

---

# Funcionalidades implementadas

## Administración de bases de datos
- Creación de base de datos
- Diseño de tablas relacionales
- Inserción masiva de datos de prueba
- Gestión de relaciones y claves foráneas

## Seguridad
- Creación de LOGIN y USER
- Gestión de roles
- Usuario con permisos restringidos
- Pruebas de acceso y seguridad

## Backup & Recovery
- Backup completo automatizado
- Simulación de error humano
- Restore de base de datos
- Validación de recuperación

## Optimización y Performance
- Creación de índices NonClustered
- Índices con INCLUDE
- Query Optimization
- Execution Plans
- STATISTICS IO y STATISTICS TIME

## Monitoreo
- Monitoreo de sesiones activas
- DMV Monitoring
- Monitoreo de consultas
- Detección de blocking
- Análisis de consumo de recursos

## Automatización con SQL Server Agent
- Jobs automáticos de backup
- Jobs de mantenimiento
- Actualización automática de estadísticas
- Reorganización de índices
- Cleanup automático de registros antiguos
- Programación de tareas periódicas
- Monitoreo de ejecución de jobs

---

# Estructura del proyecto

```text
DBA-Junior-Lab/
│
├── Scripts/
│   ├── 01_Create_Database.sql
│   ├── 02_Create_Tables.sql
│   ├── 03_Insert_Data.sql
│   ├── 04_Backup_Restore.sql
│   ├── 05_Users_Roles.sql
│   ├── 06_Index_Optimization.sql
│   ├── 07_DMV_Monitoring.sql
│   ├── 08_Blocking_Test.sql
│   ├── 09_SQLAgent_BackupJob.sql
│   ├── 10_Maintenance_Job.sql
│   └── 11_Cleanup_Job.sql
│
├── Screenshots/
└── README.md
```
## Capturas del proyecto

### SQL Server instalado
![Database](Screenshots/SqlServer.png)

### Base de datos creada
![Database](Screenshots/DataBase.png)

### Tablas creadas
![Database](Screenshots/Tables.png)

### Backup exitoso
![Backup](Screenshots/Backup.png)

### Simulación de desastre
![Backup](Screenshots/ErrorSimulation.png)

### Restore exitoso
![Backup](Screenshots/Restore.png)

### Creación Usuario Analyst
![Security](Screenshots/UserAnalyst.png)

### Usuario Analyst con permisos restringidos
![Security](Screenshots/AccessUser.png)

### Simulación el Usuario Analyst desea Eliminar
![Security](Screenshots/DELETEpermission.png)

### Optimización con índices
![Index](Screenshots/ClusteredIndex.png)
![Index](Screenshots/IndexSeek.png)
![Index](Screenshots/IndexSeek2.png)

### Monitoreo con DMV
![DMV](Screenshots/DMVMonitoring.png)
![DMV](Screenshots/DMVMonitoring2.png)

### Blocking 
![Block](Screenshots/BlockingTest.png)
![Block](Screenshots/BlockingTestLoading.png)
![Block](Screenshots/BlockingTest2.png)

### SQL Server Agent + Jobs automáticos
![Block](Screenshots/BlockingTest.png)
![Block](Screenshots/BlockingTestLoading.png)
![Block](Screenshots/BlockingTest2.png)


