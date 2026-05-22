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
