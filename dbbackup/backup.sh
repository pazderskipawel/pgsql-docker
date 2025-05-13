#!/bin/bash
set -e

HOST=${HOST}
PORT=${PORT}
DATABASE=${DB}
USERNAME=${USER}
PASSWORD=${PASSWORD}
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="${BACKUP_DIR}/${DATABASE}_${TIMESTAMP}.sql"

echo "Starting PostgreSQL backup sequence..."

# Start PostgreSQL in the background
#docker-entrypoint.sh postgres &
#PGPID=$!  # Get the process ID of the backgrounded PostgreSQL server
#sleep 5
# Wait for PostgreSQL to be ready
#until pg_isready -h "localhost" -p 5432 -U "${USERNAME}"; do
#  echo "Waiting for PostgreSQL to start..."
#  sleep 2
#done
#echo "PostgreSQL is ready. Proceeding with backup."

# Check if backup directory exists, create if not
mkdir -p ${BACKUP_DIR}

# Execute pg_dump
PGPASSWORD="$PASSWORD" pg_dump -h "$HOST" -p "$PORT" -U "$USERNAME" -d "$DATABASE" -f "$BACKUP_FILE"

echo "Backup created successfully: $BACKUP_FILE"

# Keep PostgreSQL running in the foreground (important for Docker)
# wait "$PGPID"

# Exit the script, which will cause the container to stop
exit 0