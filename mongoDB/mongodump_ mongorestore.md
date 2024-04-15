## Using mongodump and mongorestore for Restoring MongoDB Backups
- https://lizenshakya.medium.com/backup-your-database-using-cron-26e0fe40e41b
- 

### 
Setup and Installing:
1. mongodump --host ${MONGO_HOST} --port ${MONGO_PORT} --db ${DB_NAME} ${AUTH_PARAM} --out ${DB_BACKUP_PATH}
- mongodump --host {database-host} --port {database-port} --db {database-name} --out {directory}
- Example to mongodump: `mongodump --host "127.0.0.1" --port 27017 --db example_db --out dump-folder`
2. mongorestore --host {database-host} --port {database-port} --db {database-name} { foldername}
- Example to mongorestore: `mongorestore --host "127.0.0.1" --port 27017 --db example_db_restore_dump example_db_restore_dump`
