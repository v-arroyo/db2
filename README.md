# DB2 configuration in Docker

## includes import of mysql database into db2



## scripts used

### source db2 profile to alter $PATH

```bash
 . /database/config/db2inst1/sqllib/db2profile
```

### run db2 as db2inst1

```bash
 docker exec -ti db2server bash -c "su - db2inst1"
```

### installation may take a long ass time, wait, patience is key

### copy mysql dump to docker 

```bash
 docker cp ~/Downloads/sites.sql db2server:/tmp
```

### execute sql file

```bash
 db2 -tvmf /tmp/sites.sql |tee /tmp/sites.sql.out
```

### describe columns in a table

```bash
 db2 describe table sites
```

### offline backup (full, non incremental)
```bash
 docker exec -ti -u 0 db2server bash
 mkdir -p /home/db2inst1/backup_nnn
 chown db2inst1:db2iadm1 /home/db2inst1/backup_nnn
 chmod 775 /home/db2inst1/backup_nnn
 su - db2inst1
 db2 backup db phd on all dbpartitionnums to /home/db2inst1/backup_nnn
 exit
 exit
 docker cp db2server:/home/db2inst1/backup_nnn/. /home/victoria/Documents/programming/db2/backup_dir/backup_nnn/
```

### allow online backup 
```bash
 mkdir -p /home/db2inst1/archivelogs
 chown db2inst1:db2iadm1 /home/db2inst1/archivelogs
 chown 775 /home/db2inst1/archivelogs
 db2 update database configuration for phd using LOGARCHMETH1 DISK:/home/db2inst1/archivelogs
```
### then perform offline backup and reactivate db again to online backup
```bash
 db2 backup db phd online to /home/db2inst1/backup_nnn include logs without prompting
```

### incremental backup
### verify archive log method
```bash
 db2 get db cfg for phd | grep LOGARCHMETH1
```
### verify if track records is on
```bash
 db2 get db cfg for phd | grep TRACKMOD
```
### if not, enable
```bash
 db2 update db cfg for phd using TRACKMOD YES
```
### then perform full backup
```bash
 db2 force applications all
 db2 deactivate db phd
 db2 backup db phd on all dbpartitionnums to /home/db2inst1/backup_nnn
 db2 get db cfg for phd | grep -i "backup pending"   
```
### afterwards, incremental backup
```bash
 db2 backup db phd on all dbpartitionnums online incremental to backupdir include logs without prompting
```
