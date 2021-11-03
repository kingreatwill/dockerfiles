-- https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-migrate-restore-database

RESTORE DATABASE cnblogs_upload
FROM DISK='/var/opt/mssql/backup/cnblogs_upload.bak'
WITH MOVE 'cnblogs_upload' TO '/var/opt/mssql/data/cnblogs_upload.mdf',
MOVE 'cnblogs_upload_Log' TO '/var/opt/mssql/data/cnblogs_upload_Log.ldf'
GO