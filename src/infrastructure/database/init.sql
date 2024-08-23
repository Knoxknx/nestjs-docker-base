-- Conéctate a la base de datos postgres
\c postgres

-- Elimina la base de datos nestbase si existe
-- DROP DATABASE IF EXISTS nestbase;
-- DROP DATABASE IF EXISTS pgbasedb;

-- CREATE DB
SELECT 'CREATE DATABASE pgbasedb'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'pgbasedb')\gexec