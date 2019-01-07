-- Demo PostgreSQL Database initialisation


-- Create default user and default database
CREATE USER test WITH PASSWORD 'test';
CREATE DATABASE test;
GRANT ALL PRIVILEGES ON DATABASE test TO test;


-- Create an admin superuser just in case...
CREATE USER testadmin WITH PASSWORD 'testadmin' SUPERUSER;


-- Give jovyan user some privileges...
CREATE ROLE jovyan WITH SUPERUSER LOGIN;
