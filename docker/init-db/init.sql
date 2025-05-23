CREATE DATABASE user_db;
CREATE DATABASE event_db;
CREATE DATABASE ticket_db;

-- Crear extensiones necesarias
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";     -- Para generación de UUIDs
CREATE EXTENSION IF NOT EXISTS "pg_trgm";       -- Para búsquedas de texto eficientes
CREATE EXTENSION IF NOT EXISTS "pgcrypto";      -- Para generación de UUIDs

-- Configuración opcional para optimizar el rendimiento de PostgreSQL
ALTER SYSTEM SET max_connections = '100';
ALTER SYSTEM SET shared_buffers = '256MB';
ALTER SYSTEM SET work_mem = '16MB';
ALTER SYSTEM SET maintenance_work_mem = '128MB';
ALTER SYSTEM SET random_page_cost = '1.1';
ALTER SYSTEM SET effective_cache_size = '1GB';
ALTER SYSTEM SET autovacuum = 'on';

-- Nota: El esquema (tablas, índices, etc.) será gestionado por Flyway
-- a través de los scripts de migración en src/main/resources/db/migration/