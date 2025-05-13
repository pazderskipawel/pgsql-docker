
The `dbbackup` directory is designed to manage database backups for the PostgreSQL container. 

It contains the following key components:
- **`backup.sh`**: A bash script that automates the process of creating a backup of the PostgreSQL database. This script is executed within the container to ensure the backup is consistent and reliable.
- **Backup Files**: After running the `backup.sh` script, the generated backup files are stored in `backups` directory. These files can be used to restore the database if needed.
- **`docker-compose.yml`** Starts postrgesql image, execute script and stops container after it finishes

example usage:
`docker-compose -f docker-compose.yaml -f dbbackup/docker-compose.yml up -d` 