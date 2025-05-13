
This repository is an learning sandbox about docker compose which uses postgresql database

It contains the following key components:
- **`docker-compose.yml`** Starts postrgesql image and adminer control panel
- **`dbbackup`** designed to manage database backups for the PostgreSQL container.
- **`grafana` and `prometheus`** contains a dashboards to visualize batabase performance    

example usage:
- `docker-compose -f docker-compose.yml up -d`
- `docker-compose -f docker-compose.yml -f grafana/docker-compose.yml up -d`
- `docker-compose -f docker-compose.yml -f dbbackup/docker-compose.yml up -d` 