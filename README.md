# DBA Junior Lab - SQL Server

Laboratorio práctico de administración de bases de datos en SQL Server, desarrollado en un entorno virtualizado con Windows Server 2022.

## Objetivo

Simular tareas reales de un DBA Junior, incluyendo creación de bases de datos, seguridad, backups, restore, optimización, monitoreo y análisis de bloqueos.

## Tecnologías utilizadas

- SQL Server 2025 Developer Edition
- SQL Server Management Studio 22
- Windows Server 2022
- VirtualBox
- T-SQL

## Funcionalidades implementadas

- Creación de base de datos
- Diseño de tablas relacionales
- Inserción de datos de prueba
- Backup completo
- Restore ante pérdida de datos
- Gestión de usuarios y roles
- Usuario con permisos de solo lectura
- Índices no agrupados
- Execution Plans
- Query Optimization
- Monitoreo con DMV
- Simulación y análisis de bloqueos

## Estructura del proyecto

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
│   └── 08_Blocking_Test.sql
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

### Error Humano simulación
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

