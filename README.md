## Postgres commands
This command drops down our tables listed
```
cat down.sql | psql -U postgres
```
This command opens the postgres repl
```
psql -U postgres
```
This command creates our tables
```
cat schema.sql | psql -U postgres
```
## docker commands
This command starts postgres 
```ps1
 docker run -it -e POSTGRES_PASSWORD=password -v C:\Users\jonth\OneDrive\Documents\Themepark:/app postgres
 ```
This command lists out oour container
```
docker ps
CONTAINER ID   IMAGE      COMMAND                  CREATED          STATUS          PORTS      NAMES
557e5f90fa82   postgres   "docker-entrypoint.s…"   27 minutes ago   Up 27 minutes   5432/tcp   elastic_galileo
```
This command executes a shell inside our container 
```
docker exec -it 557e5f90fa82 bash
```
