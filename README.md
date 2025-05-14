
This repository is an learning sandbox about docker compose which uses postgresql database

It contains the following key components:
- `docker-compose.yml` Starts **postrgesql** image and **adminer** control panel
- `./grafana/docker-compose.yml` launches **grafana** for data visualisation and monitoring, 
    - automatically mounts **prometheus** datasource which is using **postgres-exporter** to gather metrics, 
    - automatically mounts dashbords to visualize data
- `./dbbackup/docker-compose.yml` starts new conainer, executes **bash** script `backup.sh` on database, stops container
    - backups are saved on `./dbbackup/backups`
- database and grafana are in separate networks and are only comminutacing by **postgres-exporter**

evironment variables:
- `POSTGRES_USER` - database credentials
- `POSTGRES_PASSWORD`
- `POSTGRES_DB` - name of database
- `POSTGRES_EXPORTER_USER` - creadentials for postrger expolrer
- `POSTGRES_EXPORTER_PASSWORD`
- `GRAFANA_ADMIN_USER` - creadentials for postrger expolrer
- `GRAFANA_ADMIN_PASSWORD`
- `PHP_TZ=Europe/London` - timezoe for PHP
- `COMPOSE_FILE` - path to all docker compoe files sparated by `;` or `:` 

example usage:
- using `docker-compose` command:
  - `docker-compose -f docker-compose.yml up -d`
  - `docker-compose -f docker-compose.yml -f grafana/docker-compose.yml up -d`
  - `docker-compose -f docker-compose.yml -f dbbackup/docker-compose.yml up -d` 
- when using `COMPOSE_FILE` env variable 
  - `COMPOSE_FILE="docker-compose.yml;grafana/docker-compose.yml;dbbackup/docker-compose.yml"`
  - `docker-compose up -d`
