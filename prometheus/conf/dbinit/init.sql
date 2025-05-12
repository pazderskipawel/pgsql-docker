CREATE USER postgres_exporter WITH PASSWORD 'pass';
GRANT pg_monitor TO postgres_exporter;