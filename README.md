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
