CREATE USER "postgres_exporter" WITH PASSWORD 'pass';
GRANT ALL PRIVILEGES ON DATABASE "test"  TO "postgres_exporter";